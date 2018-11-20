# namespace syntax, Ruby shorthand to define a class within a namespace
class V2::TodosController < ApplicationController
  def index
    json_response({ message: 'Hello there' })
  end
end
