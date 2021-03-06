class Project < ApplicationRecord
  has_many :project_users, :dependent => :delete_all
  has_many :users, through: :project_users
  has_many :milestones, :dependent => :delete_all
end
