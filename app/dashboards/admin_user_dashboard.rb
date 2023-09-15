require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    phone: Field::String,
    email: Field::String,
    password: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
    :created_at,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :phone,
    :email,
    :password,
    
  ].freeze

  def display_resource(admin_user)
    admin_user.email
  end
end