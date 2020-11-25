class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tag_relations, dependent: :destroy
  has_many :tags, through: :post_tag_relations, dependent: :destroy
  has_many :likes, dependent: :destroy, foreign_key: "post_id"

  has_many :notifications, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  def self.search(search)
    if search != ""
      Post.joins(:tags).where(['title LIKE(?) or content LIKE(?) or name LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all.order(created_at: :desc)
    end
  end

  def create_notification_like!(current_user)
    # すでに「いいね」されているか検索
    temp = Notification.where(["visitor_id = ? and visited_id = ? and post_id = ? and action = ? ", current_user.id, user_id, id, 'like'])
    # いいねされていない場合のみ、通知レコードを作成
    if temp.blank?
      notification = current_user.active_notifications.new(
        post_id: id,
        visited_id: user_id,
        action: 'like'
      )
      # 自分の投稿に対するいいねの場合は、通知済みとする
      if notification.visitor_id == notification.visited_id
        notification.checked = true
      end
      notification.save if notification.valid?
    end
  end
end
