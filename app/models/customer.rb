class Customer < ApplicationRecord
    has_many :orders, class_name: 'Order'
end
