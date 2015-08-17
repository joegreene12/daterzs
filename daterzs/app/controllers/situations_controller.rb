class SituationsController < ApplicationController

  before_filter :authorize

  def index
    @situations = Situation.all
    render :index
  end

  def new
    @situation = Situation.new
  end

  def create
    @situation = Situation.create(situation_params)
  end

  #No idea on how to handle this
  def update
    @situation = Situation.update(situation_params)
  end

  def delete
    @situation = Situation.find(params[:situation][:id].to_i)
    @situation.destroy
  end

  #No idea on how to handle this
  def confirmation
  end
end
