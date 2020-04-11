require_relative '../models/table'

class TableController < ApplicationController
  def statuses
    tables = Table.all
    result = { :success => true, :tables => tables }
    render json: result
  end

  def detail
    table = Table.find(params[:id])
    result = { :success => true, :table => table }
    render json: result
  end
end
