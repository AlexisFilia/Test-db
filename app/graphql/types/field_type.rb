module Types
  class FieldType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :value, String, null: true
    field :type_vale, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
