class PizzasController < ApplicationController
    def index
        pizzas = Pizza.all
        render json: pizzas, only: [:id, :name, :ingredients]
    end
end
