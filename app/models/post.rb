class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tag_relations
  has_many :tags, through: :post_tag_relations

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
end
