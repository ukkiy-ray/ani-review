class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tag_relations, dependent: :destroy
  has_many :tags, through: :post_tag_relations, dependent: :destroy
  has_many :likes, dependent: :destroy, foreign_key: "post_id"

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  def self.search(search)
    if search != ""
      Post.joins(:tags).where(['title LIKE(?) or content LIKE(?) or name LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all.order(created_at: :desc)
    end
  end
end
