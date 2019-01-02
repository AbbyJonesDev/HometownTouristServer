# defines a new GraphQL type
Types::CityType = GraphQL::ObjectType.define do
  # this type is named `City`
  name 'City'

  # it has the following fields
  field :id, !types.ID
  field :name, !types.String

  field :state, Types::StateType do
    resolve -> (obj, argx, ctx) { obj.state }
  end

end