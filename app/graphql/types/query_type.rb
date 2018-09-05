# # app/graphql/types/query_type.rb
Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :authors, !types[Types::AuthorType] do
    resolve -> (obj, args, ctx) {
      Author.all
    }
  end
end