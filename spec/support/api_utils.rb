# frozen_string_literal: true

# Module for use methods for request test
module ApiUtils
  def json
    JSON.parse(response.body)
  end
end
