class CareerAnchorsController < ApplicationController

  def new
    @career_anchor = CareerAnchor.new
  end
end
