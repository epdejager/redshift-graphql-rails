module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_courses, [CourseType], null: false

    # this method is invoked, when `all_link` fields is beeing resolved
    def all_courses
      [
          {
              id: 1,
              title: 'The Complete Node.js Developer Course',
              author: 'Andrew Mead, Rob Percival',
              description: 'Learn Node.js by building real-world applications with Node, Express, MongoDB, Mocha, and more!',
              topic: 'Node.js',
              url: 'https://codingthesmartway.com/courses/nodejs/'
          },
          {
              id: 2,
              title: 'Node.js, Express & MongoDB Dev to Deployment',
              author: 'Brad Traversy',
              description: 'Learn by example building & deploying real-world Node.js applications from absolute scratch',
              topic: 'Node.js',
              url: 'https://codingthesmartway.com/courses/nodejs-express-mongodb/'
          },
          {
              id: 3,
              title: 'JavaScript: Understanding The Weird Parts',
              author: 'Anthony Alicea',
              description: 'An advanced JavaScript course for everyone! Scope, closures, prototypes, this, build your own framework, and more.',
              topic: 'JavaScript',
              url: 'https://codingthesmartway.com/courses/understand-javascript/'
          }
      ]
    end
  end
end
