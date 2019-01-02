# defines a new GraphQL type
Types::StateType = GraphQL::ObjectType.define do
  # this type is named `State`
  name 'State'

  # it has the following fields
  field :id, !types.ID
  field :name, !types.String
end