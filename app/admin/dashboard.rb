# app/admin/dashboard.rb
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: "Bookings"  # Change this text to your desired name


  content title: proc { I18n.t("booking") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

    columns do
      column do
        panel "Recent Bookings" do
          table_for Booking.order(created_at: :desc).paginate(page: params[:page], per_page: 10) do
            column("Booking ID") { |booking| booking.id }
            column("Name") { |booking| booking.name }
            column("Lesson") { |booking| booking.lesson }
            column("Instructor") { |booking| booking.instructor }
            column("Booking Date") { |booking| booking.start_date.strftime('%B %d, %Y') }
            column("Booking Time") { |booking| booking.time }
            column("Email") { |booking| booking.email }
            column("Phone No.") { |booking| booking.phone }
            column("Special Request") { |booking| booking.special_request }
          end

          div class: 'pagination' do
            will_paginate Booking.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
          end
        end
      end
    end
  end
end
