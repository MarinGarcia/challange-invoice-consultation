# frozen_string_literal: true

# Module for use methods for request test
module ApiUtils
  def json
    JSON.parse(response.body)
  end

  def token
    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiQ29udGFMaW5rIn0.52aon-6GGXFyjc_cOG6fOZhY_YMCwiGwvqQZBQ0RJQw'
  end
end
