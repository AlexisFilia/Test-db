module Types
  class MutationType < Types::BaseObject
    field :update_link, mutation: Mutations::UpdateLink
    field :update_entity, mutation: Mutations::UpdateEntity
    field :delete_entity, mutation: Mutations::DeleteEntity
    field :delete_link, mutation: Mutations::DeleteLink
    field :create_link, mutation: Mutations::CreateLink
    field :create_entity, mutation: Mutations::CreateEntity
  end
end
