class Ticket < ApplicationRecord
    validates :name, :email_address, :price, presence: true
    validates :name, length: { minimum: 4 }
    validates :price, numericality: { greater_than: 0 }
    # validates :email_address, presence: true
    # validates :price, presence: true
    # length => { :minimum => 1 }
end
