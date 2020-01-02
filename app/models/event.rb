class Event < ApplicationRecord
    validates :artist, :price_low, :price_high, :event_date, presence: true
    validates :price_low, :price_high, numericality: { greater_than: 0 }
    
    has_many :tickets
end
