class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :edit]}, site_admin: :all

  def index
    @topics = Topic.page(params[:page]).per(5)
  end

  def show
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent_blogs.page(params[:page])
    else
      @blogs = @topic.blogs.published.recent_blogs.page(params[:page])
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
