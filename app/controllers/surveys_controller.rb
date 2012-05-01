class SurveysController < ApplicationController
  
  def new
    
  end
  
  def create
    if params[:support] == 'true'
      Survey.create(:support => true)
      redirect_to new_user_registration_url, :notice => 'Thanks for your interest! Please create an account, below, to stay up-to-date on DataDonor news and events.'
    else
      Survey.create(:support => false)
      redirect_to root_url, :notice => "Sorry to hear, but thanks for the feedback."
    end
  end
end
