# defines a new GraphQL type
Types::PostType = GraphQL::ObjectType.define do
  # this type is named `Post`
  name 'Post'

  # it has the following fields
  field :id, !types.ID
  field :title, !types.String
  field :featured_image, types.String
  field :place, !types.String
  field :body, types.String

  field :author, Types::AuthorType do
    resolve -> (obj, argx, ctx) { obj.author }
  end

  field :author_name, types.String do
    resolve -> (obj, argx, ctx) { obj.author.firstName + ' ' + obj.author.lastName }
  end

  field :city, Types::CityType do
    resolve -> (obj, argx, ctx) { obj.city }
  end

  field :state, Types::StateType do
    resolve -> (obj, argx, ctx) { obj.state }
  end

  field :publish_date, types.String
  field :created_at, types.String
  field :updated_at, types.String
end