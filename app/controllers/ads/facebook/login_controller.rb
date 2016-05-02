require 'zuck'
require 'koala'

class Ads::Facebook::LoginController < Ads::Facebook::MasterController

  skip_before_filter :authenticate

  def index
    session[:access_token] = Koala::Facebook::OAuth.new(ads_facebook_login_index_url).get_access_token(params[:code]) if params[:code]
  end 

end