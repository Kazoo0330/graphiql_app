module Types
  class QueryType < Types::BaseObject

    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :blog, Types::BlogType, null: false,
     resolve: ->(obj, args, ctx) {
       Blog.first
     }
  end
end
