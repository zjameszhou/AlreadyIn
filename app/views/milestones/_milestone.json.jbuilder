json.extract! milestone, :id, :name, :description, :deadline, :status, :project_id, :created_at, :updated_at
json.url milestone_url(milestone, format: :json)
