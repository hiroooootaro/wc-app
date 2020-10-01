class TemplatesController < ApplicationController

  def index
  end

  def new
  end

  def create
    @template = Template.new(template_params)
  end

  private

  def template_params
    params.require(:template).permit(:template_explain, :category, :template_image ).merge(user_id: current_user.id)
  end

end
