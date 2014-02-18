=begin
Currently the way address cards have been setup is that every user will
have at least one contact list when their account is created within Backstage.
All Address Cards will be created / edited through this contact list.
=end
class AddressCardsController < ApplicationController
  before_action :require_user
  respond_to :html, :json
  expose(:user)
  expose(:address_card, attributes: :address_card_params) #{ user.address_card }
  expose(:contact_list) { user.contact_lists.first }

  def new
  end

  def show
    check_user
  end

  def edit
    check_user
  end

  def update
    if address_card.update(address_card_params)
      redirect_to user_address_card_path(user, address_card),
        notice: 'Address Card was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def create
    present_contact_list = user.contact_lists.find(
      address_card_params[:contact_list_id])
    if contact_list && contact_list.address_cards << address_card
      if present_contact_list.id != contact_list.id
        present_contact_list.address_cards << address_card
      end
      redirect_to user_contact_list_path(user, present_contact_list),
        notice: 'Address Card was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    address_card.destroy
    redirect_to address_cards_url,
      notice: 'Address Card was successfully destroyed.'
  end

  private

  def check_user
    if address_card.contact_lists.any? {|cl| cl.users.include?(current_user)}
      respond_with(address_card)
    else
      flash[:notice] = 'You need to login to view this Address Card'
      redirect_to login_path
    end
  end

  def address_card_params
    params.require(:address_card).permit(
      :address_card, :first_name, :last_name, :contact_list_id,
      emails_attributes: [:kind, :value, :_destroy, :id],
      addresses_attributes: [:line_1, :line_2, :line_3, :city, :province,
        :country, :postal_code, :_destroy, :id],
      phones_attributes: [:kind, :value, :_destroy, :id]
    )
  end
end
