require 'net/http'
require 'json'

class NinjahippoController < ApplicationController
  def index
    @html = JSON.parse(Net::HTTP.get_response(URI.parse(NH_BASE + 'sites/' + APP_NAME + '/pages/' + 'index' + '?application_token=' + APP_TOKEN)).body)['html']
    render 'show'
  end

  def show
    nh = Net::HTTP.get_response(URI.parse(NH_BASE + 'sites/' + APP_NAME + '/pages/' + params[:slug] + '?application_token=' + APP_TOKEN))
    if nh.code != '401'
      @html = JSON.parse(nh.body)['html']
    else
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end
end
