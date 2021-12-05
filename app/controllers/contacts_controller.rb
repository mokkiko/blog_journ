class ContactsController < ApplicationController

  def new
  end
  
  def show
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end

  end

  private

  def contact_params
    params.require(:contacts).permit(:email, :message)

  end



end
