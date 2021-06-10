module Types
  class QueryType < Types::BaseObject
    field :all_entities, [EntityType], null: false,
      description: "Get all entities"

    field :entity, EntityType, null: true do
      argument :id, ID, required: true,
      description: "Get the details of one entity"
    end
  
    def all_entities
      Entity.all
    end
  
    def entity(arg)
      Entity.find(arg[:id])
    end
  end
end
