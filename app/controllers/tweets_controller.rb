class TweetsController < ApplicationController
  before_action :get_tweet, only: [:show, :edit, :update, :destroy]
  before_action :check_auth, only:  [:edit, :update, :destroy]

  def index
    if params[:zipcode]
      @tweets = Tweet.where(zipcode: params[:zipcode])
    else
      @tweets = Tweet.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets}
      format.xml { render xml: @tweets}
    end
    if params[:name]
      @zombie = Zombie.where(name: params[:name]).first
      @tweets = @zombie.tweets
    else
      @tweets = Tweet.all
    end
  end

  def show
   # @tweet = Tweet.find(params[:id]) # done in before_action
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweet }
      format.xml { render xml: @tweet }
    end
  end

  def new
    @tweet = Tweet.new
  end

  def edit

    # need auth

  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to @tweet
    else
      render 'new'
    end
  end

  def update
  # need auth
  end

  def destroy
  # need auth
  end

  def get_tweet
    @tweet = Tweet.find(params[:id])
  end
  def check_auth
    if session[:zombie_id] != @tweet.zombie_id
      flash[:notice] ="Sorry. you can't edit this tweet"
      redirect_to(tweets_path)
    end
  end

  private
  def tweet_params
    params.required(:tweet).permit([:status, :location])
  end
end