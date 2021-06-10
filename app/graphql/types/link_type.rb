module Types
  class LinkType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :from, Types::EntityType, null: true
    field :to, Types::EntityType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
