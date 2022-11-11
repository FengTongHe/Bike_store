json.extract! customer, :id, :full_name, :phone_number, :email, :notes, :created_at, :updated_at
json.url customer_url(customer, format: :json)
