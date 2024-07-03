class ApplicationController < ActionController::Base
  before_action :require_login

  def skip_header_footer
    @skip_header_footer = false
  end
end
