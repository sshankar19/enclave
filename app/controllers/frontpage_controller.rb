class FrontpageController < AuthenticatedController
  def index
    @discussions = Discussion.all
  end
end
