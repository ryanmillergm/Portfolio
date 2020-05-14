class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :edit]}, site_admin: :all

  def index
    @topics = Topic.page(params[:page]).per(5)
  end

  def show
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
