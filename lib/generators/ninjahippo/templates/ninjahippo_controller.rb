require 'net/http'
require 'json'

class NinjahippoController < ApplicationController
  def show
    @slug = params[:slug] || 'index'
    @nh = Net::HTTP.get_response(URI.parse(NH_BASE + 'sites/' + APP_NAME + '/pages/' + @slug + '?application_token=' + APP_TOKEN))
    if @nh.code != '401' and params[:slug] != 'index'
      @html = JSON.parse(@nh.body)['html']
    else
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end
end
