class DiscussionsController < AuthenticatedController
  def index
    redirect_to '/'
  end

  def new
    @discussion = Discussion.new
    @discussion.comments.build
  end

  def create
    @discussion = Discussion.new(discussion_params)
    @discussion.author = current_member
    @discussion.comments.first.author = current_member

    if @discussion.save
      redirect_to discussion_path(@discussion)
    else
      render 'new'
    end
  end

  def show
    @discussion = Discussion.find(params[:id])
  end

  private

  def discussion_params
    params.require(:discussion).permit(:category_id, :title, comments_attributes: [:body])
  end
end
