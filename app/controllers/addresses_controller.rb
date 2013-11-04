=begin
Currently the way address cards have been setup is that every user will
have at least one contact list when their account is created within Backstage.
All Address Cards will be created / edited through this contact list.
=end
class AddressesController < ApplicationController
  before_action :require_user
  respond_to :json, :html
  expose(:address)

  def show
  end
  def edit
  end
  def update
    if address.update_attributes(address_card_params)
      redirect_to user_address_card_path(current_user, current_user.address_card)
    else
      flash[:error] = "something went wrong"
      render :edit
    end
  end

  private

  def address_card_params
    params.require(:address).permit!
  end
end
