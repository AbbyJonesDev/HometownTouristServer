# defines a new GraphQL type
Types::AuthorType = GraphQL::ObjectType.define do
  # this type is named `Author`
  name 'Author'

  # it has the following fields
  field :id, !types.ID
  field :firstName, !types.String
  field :lastName, !types.String
  field :bio, !types.String
  field :photoUrl, !types.String
end