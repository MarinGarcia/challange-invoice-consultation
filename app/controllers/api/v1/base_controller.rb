# frozen_string_literal: true

# Global Methods to api
class Api::V1::BaseController < ApplicationController
  before_action :authorized

  private

  def authorized
    render json: { message: 'Invalid Token' }, status: :unauthorized unless current_user
  end

  def current_user
    token = decoded_token
    return true if token[0]&.dig('name') == 'ContaLink'

    false
  end

  def decoded_token
    header = request.headers['Authorization']
    return [] unless header

    token = header.split(' ')[1]

    JWT.decode(token, 'contalink1234', true, algorithm: 'HS256')
  rescue JWT::DecodeError
    []
  end
end
