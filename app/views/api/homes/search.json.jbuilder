json.array!(@homes) do |home|
  json.partial! 'api/homes/home', home: home
end