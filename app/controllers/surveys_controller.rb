class SurveysController < ApplicationController
  
  def new
    
  end
  
  def create
    if params[:support] == 'true'
      Survey.create(:support => true, :ip => request.remote_ip)
      redirect_to new_user_registration_url, :notice => 'Thanks for your interest! &nbsp;Please create an account so we can keep you up-to-date on DataDonor news and events.'
    else
      Survey.create(:support => false, :ip => request.remote_ip)
      redirect_to root_url, :notice => "OK. &nbsp;Thanks for the feedback."
    end
  end
end
