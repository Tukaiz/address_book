class PhonesController < ApplicationController
  before_action :require_user
  respond_to :json, :html
  expose(:phone)

  def show
  end
  def edit
  end
  def update
    if phone.update_attributes(address_card_params)
      redirect_to user_address_card_path(current_user, current_user.address_card)
    else
      flash[:error] = "something went wrong"
      render :edit
    end
  end

  private

  def address_card_params
    params.require(:phone).permit!
  end
end
