class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_rich_text :body

  has_many :noticed_events, as: :record, dependent: :destroy, class_name: "Noticed::Event"

  # after_create_commit :notify_recipient
  # before_destroy :cleanup_notifications

  private

  # Notify the post owner about the comment
  # def notify_recipient
  #   CommentNotification.with(comment: self, post: post).deliver_later(post.user)
  # end

  # Cleanup notifications related to this comment when destroyed
  # def cleanup_notifications
  #   noticed_events.destroy_all
  # end
end
