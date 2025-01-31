class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        flash[:notice] = "Thank you for contacting us. We will get back to you shortly."  # Success message
        redirect_to root_path

      else
        redirect_to root_path
      end
    end
  
    private
  
    def contact_params
      params.permit(:name, :email, :phone, :message)
    end
  end
  