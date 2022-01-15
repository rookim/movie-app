require "http"

response = HTTP.get("http://localhost:3000/movies")
movies = response.parse(:json)

pp movies