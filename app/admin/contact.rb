ActiveAdmin.register_page "Contact" do
  menu priority: 1, label: "Contact US"  # Change this text to your desired name

  content title: proc { I18n.t("booking") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

    columns do
      column do
        panel "Recent Contacts" do
          # Paginate the contacts using will_paginate
          table_for Contact.order(created_at: :desc).paginate(page: params[:page], per_page: 10) do
            column("Contact ID") { |contact| contact.id }
            column("Name") { |contact| contact.name }
            column("Email") { |contact| contact.email }
            column("Phone No.") { |contact| contact.phone }
            column("Message") { |contact| contact.message }
          end

          # Pagination controls
          div class: 'pagination' do
            will_paginate Contact.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
          end
        end
      end
    end
  end
end
