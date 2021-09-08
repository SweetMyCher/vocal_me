class ApplicationController < ActionController::Base
  attr_accessor :exam
  before_action :authenticate_user!, only: %i[ new edit destroy ]

  def check_permission
    unless current_user.is_admin? || current_user.id == exam.user_id
      redirect_to root_path, alert: "Permissiom denied."
    end
  end
end
