class BookingsController < ApplicationController
    def new
        @booking = Booking.new
      end
    
      def create
        @booking = Booking.new
         @booking.lesson = params[:lesson]
         @booking.instructor = params[:instructor]
         @booking.start_date = params[:start_date]
         @booking.time = params[:time]
         @booking.name = params[:name]
         @booking.email = params[:email]
         @booking.phone = params[:phone]
         @booking.special_request = params[:special_request]

        if @booking.save
        else
          render :new
        end
      end

end
