ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :forename, :surname, :date_of_birth, :phone_number, :github, :linkedin, :description, :driving_license
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :forename, :surname, :date_of_birth, :phone_number, :github, :linkedin, :description, :driving_license]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :email, :forename, :surname, :date_of_birth, :phone_number, :github, :linkedin, :description, :driving_license,
                :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :forename
    column :surname
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :forename
      f.input :surname
      f.input :date_of_birth, as: :datepicker
      f.input :phone_number
      f.input :github
      f.input :linkedin
      f.input :content
      f.input :driving_license # , as: :select, collection: [ :No, :Yes ]
    end
    f.actions
  end

  before_action :remove_password_params_if_blank, only: [ :update ]
  controller do
    def remove_password_params_if_blank
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end
    end
  end
end
