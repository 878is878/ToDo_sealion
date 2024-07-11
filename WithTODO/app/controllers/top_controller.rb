class TopController < ApplicationController
  skip_before_action :require_login, only: %i[top]

  def top
    @skip_header_footer = true
  end
  
  def setting; end

  def tutorial; end


end