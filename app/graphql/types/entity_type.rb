module Types
  class EntityType < Types::BaseObject
    field :id, ID, null: false
    field :type_of, String, null: true
    field :fields, [Types::FieldType], null: true
    field :to_links, [Types::LinkType], null: true
    field :from_links, [Types::LinkType], null: true
    field :relation_type, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
