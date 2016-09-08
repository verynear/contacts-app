class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
	end

	def new

	end

	def create
		@contact = Contact.create(first_name: params[:first_name], 
								last_name: params[:last_name],
								email: params[:email],
								phone_number: params[:phone_number])
		# @contact.name = params[:name]
		# @contact.price = params[:price]

		# @contact.save
		flash[:success] = "New Contact Listing Created"
		redirect_to "/contacts/#{@contact.id}"
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		@contact.update(first_name: params[:first_name], 
						last_name: params[:last_name],
						email: params[:email],
						phone_number: params[:phone_number])
		# @contact.name = params[:name]
		# @contact.price = params[:price]
		# @contact.image = params[:image]
		# render 'show.html.erb'
		flash[:success] = "contact Listing Updated"
		redirect_to "/contacts/#{@contact.id}"
	end

	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy

		flash[:warning] = "Contact Listing Removed"
		redirect_to '/contacts'
	end
end
