class TweetsController < ApplicationController
  before_action :get_tweet, only: [:show, :edit, :update, :destroy]
  before_action :check_auth, only:  [:edit, :update, :destroy]

  def index

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

  end

  def edit

    # need auth

  end

  def create

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
end