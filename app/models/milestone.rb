class Milestone < ApplicationRecord
  belongs_to :project
  acts_as_commontable
  has_one_attached :attachment
end
