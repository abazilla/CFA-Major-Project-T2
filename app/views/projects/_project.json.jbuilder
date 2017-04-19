json.extract! project, :id, :title, :pitch, :request_amount, :funded_amount, :funded, :user_id, :next_project_funded, :created_at, :updated_at
json.url project_url(project, format: :json)
