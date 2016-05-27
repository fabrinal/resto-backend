json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :price, :category_id, :status
  json.url menu_url(menu, format: :json)
end
