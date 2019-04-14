module Types
  class CourseType < BaseObject
    field :id, ID, null: false
    field :title, String,  null: false
    field :author, String, null: false
    field :description, String, null: false
    field :topic, String, null: false
    field :url, String, null: false
  end
end