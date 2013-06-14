class PageController < ApplicationController
  def console
    unless is_admin_user?
      respond_to do |format|
        format.html { redirect_to "/" }
      end
    else
      respond_to do |format|
        format.html #{render :layout=>"homeLayout"}# console.html.erb
      end
    end
  end
end
