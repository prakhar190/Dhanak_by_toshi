class LeadsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    puts ">>>>>>>>>>>>>>>>>>>>>>>"
    Lead.find_or_create_by(email: params[:email])
    sweetalert_success('Your resource is created and available.', 'Successfully created', persistent: 'Awesome!')
    redirect_to root_path
  end
end
