class V1::ContactsController < ApplicationController
 
 
 def index
  @contacts = Contact.all
  
  render json: @contacts, status: :ok
 end
 
 def create
  @contact = Contact.new(contact_params)
  @contact.save
  render json: @contact, status: :created
 end
 
 def destroy
  @contact = Contact.where(id: params[:id]).first
  if @contact.destroy
   #Header content
   head(:ok)
  else
   head(:unprocessable_entity)
  end
  
 end
 
 def 
 
  
  private
  
  def contact_params
   params.require(:contact).permit(:first_name, :last_name, :email) 
  end
  
end
