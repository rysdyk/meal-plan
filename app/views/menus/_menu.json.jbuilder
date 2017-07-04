json.extract! menu, :id, :total_meals, :total_servings, :cost, :notes, :user_id, :created_at, :updated_at
json.url menu_url(menu, format: :json)
