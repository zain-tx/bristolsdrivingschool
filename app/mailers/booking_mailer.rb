class BookingMailer < ApplicationMailer
    def confirmation_email(booking)
        @booking = booking
        mail(to: @booking.email, subject: "Your Driving Lesson Booking Confirmation")
      end
end
