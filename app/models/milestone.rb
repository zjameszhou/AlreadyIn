class Milestone < ApplicationRecord
  enum status: { Pending: 0, Completed: 1 }
  belongs_to :project
  acts_as_commontable
  has_one_attached :attachment
end
