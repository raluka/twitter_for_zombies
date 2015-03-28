class ZombiesController < ApplicationController

  before_action :find_zombie
  before_action :has_tweets, only: :show

  def index

  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zombie }
      format.xml { render xml: @zombie }
    end
  end

  def new
    @zombie = Zombie.new
  end

  def create
    @zombie = Zombie.new(zombie_params)
    if @zombie.save
      redirect_to @zombie
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def zombie_params
    params.required(:zombies).permit([:name, :graveyard])
  end

  def find_zombie
    @zombie = Zombie.find(params[:id])
  end
  def has_tweets
    unless @zombie.tweets.size > 0
      redirect_to zombies_path
    end
  end

end
