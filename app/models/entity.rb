class Entity < ApplicationRecord
    has_many :fields
    has_many :links

    has_many :to_links, class_name: 'Link', foreign_key: 'to_id', dependent: :destroy
    has_many :from_links, class_name: 'Link', foreign_key: 'from_id', dependent: :destroy
end
