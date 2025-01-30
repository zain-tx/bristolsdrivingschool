class BookingsController < ApplicationController
    def new
        @booking = Booking.new
      end
    
      def create
        @booking = Booking.new(booking_params)
        if @booking.save
          redirect_to new_booking_path(@booking), notice: "Booking successful!"
        else
          render :new
        end
      end
    
      private
    
      def booking_params
        params.permit(:lesson, :instructor, :start_date, :time, :name, :email, :phone, :special_request)
    end
end
