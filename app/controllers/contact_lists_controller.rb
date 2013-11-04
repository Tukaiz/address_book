class ContactListsController < ApplicationController
  before_action :require_user
  expose(:contact_lists, attributes: :contact_list_params, ancestor: :user)
  expose(:contact_list, attributes: :contact_list_params)
  expose(:user)
  expose(:user_contact_list) { user.contact_lists.build(contact_list_params) }
  def new
  end

  def edit
  end

  def show
  end

  def index
  end

  def update
    if contact_list.update(contact_list_params)
      redirect_to user_contact_list_path(user, contact_list), notice: 'Contact List was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def create
    if user.contact_lists << user_contact_list
      redirect_to user_contact_list_path(user, user_contact_list), notice: 'Contact List was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    contact_list.destroy
    redirect_to user_contact_lists_url(user), notice: 'Contact List was successfully destroyed.'
  end

  private
  def contact_list_params
    params.require(:contact_list).permit(:name, :address_card_ids => [])
  end
end
