class Milestone < ApplicationRecord
  belongs_to :project
  acts_as_commontable
end
