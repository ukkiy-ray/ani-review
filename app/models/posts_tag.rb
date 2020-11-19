class PostsTag
  include ActiveModel::Model
  attr_accessor :user_id, :title, :content, :category_id, :name

  with_options presence: true do
    validates :title
    validates :content
    validates :category_id
    validates :name
  end

  validates :category_id, numericality: { other_than: 1, message: "を選択してください" }

  def save
    post = Post.create(title: title, content: content, category_id: category_id, user_id: user_id)
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    PostTagRelation.create(post_id: post.id, tag_id: tag.id)
  end

end