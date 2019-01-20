class TopicsController < ApplicationController
  PER = 3

  def new
    @topic = Topic.new
    @image = Image.new
  end

  def create
    @topic = current_user.topics.new(params_topic)
    if @topic.save && !image_params[:image_cash].blank?
      @topic.images.create(image: image_params[:image_cash])
      redirect_to topics_path, success: '投稿しました'
    else
      flash[:danger] = '投稿に失敗しました'
      redirect_to new_topic_path
    end
  end

  def index
    @topics = Topic.order(created_at: :desc).page(params[:page]).per(PER)
  end

  private
  def params_topic
    params.require(:topic).permit( :description, :action, :area, :price)
  end
  def image_params
    params.require(:topic).permit(:image_cash)
  end
end
