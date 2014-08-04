class AboutController < ApplicationController
  skip_before_action :ensure_current_user

  def index
    # @about = "<h2>ABOUT</h2>"
  end
end