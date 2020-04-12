require_relative '../models/table'

class TableController < ApplicationController
  def statuses
    tables = Table.all.order(tablenum: :asc)
    result = { :success => true, :tables => tables }
    render json: result
  end

  def detail
    table = Table.find(params[:id])
    result = { :success => true, :table => table }
    render json: result
  end

  def checkin
    id = params[:id]
    customername = params[:customername]

    data = { customername: customername, status: 'O' }

    table = Table.find(id)
    if table
      table.update(data)
      result = { :success => true, table: table }
    else
      result = { :success => false }
    end

    render json: result
  end

  def checkout
    id = params[:id]

    data = { customername: '', status: 'F' }

    table = Table.find(id)
    if table
      table.update(data)
      result = { :success => true, table: table }
    else
      result = { :success => false }
    end

    render json: result
  end
end
