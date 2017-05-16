class HomeController < ApplicationController
    layout 'application'
    before_action :authenticate_account!, only: :login_check
  
  def top
  end
  
  def login_check
      @account = current_account
      @msg = 'you logined at : ' + @account.current_sign_in_at.to_s
  end
  
  def creation
      @account = current_account
      @msg = 'you logined at : ' + @account.current_sign_in_at.to_s
  end
  
  def talk
      @account = current_account
      @msg = 'you logined at : ' + @account.current_sign_in_at.to_s
  end
  
  def add_friend
      @account = current_account
      @msg = 'you logined at : ' + @account.current_sign_in_at.to_s
  end
  
  def find
      @accounts = Array.new
      if request.post? then
          @accounts = account.where email: params[:find]
      end
  end
  
end
