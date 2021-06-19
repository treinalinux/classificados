# frozen_string_literal: true

# class HomeController
class HomeController < ApplicationController
  def show
    @ads = Ad.all
  end
end
