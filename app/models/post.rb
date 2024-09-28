class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_rich_text :body
  #has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy

  has_many :noticed_events, as: :record, dependent: :destroy, class_name: "Noticed::Event"
  has_many :notifications, through: :noticed_events, class_name: "Noticed::Notification"

  def self.ransackable_attributes(auth_object = nil)
    ["title"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user", "rich_text_body"]
  end

end
