- Create new rails project:
rails new <project-name>

- Create new controller and its index action: (create controller and view)
rails generate controller <name> index

- Check routes path:
rails routes

- Generates a full scaffold for a model (create model, controller, views, routes, and the migration file):
rails g scaffold <name-model> field:type

- Push migration to DB:
rails db:migrate

- Interactive with DB:
rails console

- Use rails seed:
rails db:seed

- Generating a Model:
rails generate model <model-name> <name-field>:<type> <name-field>:<type>

- Adding new colum to Model:
rails g migrattion add_<name_column>_to_<name_model> <name_column>:<type_field>

- Delete exit colum from Model:
rails g migrattion remove_<name_column>_from_<name_model> <name_column>:<type_field>

- Do Associations (add foregin key):
rails g migration add_user_to_posts user:belongs_to
(Means that the posts table will have a user_id column that establishes the association.)

- Creates an empty migration file without specifying any changes to the database schema:
rails g migration change_views_for_users

- Add dependency Devise:
Change in Gemfile add `gem 'devise'`
run `bundle install`
rails g devise:install

- Create authen/author for Rails app:
rails g devise User

- Create User controller by devise:
Generates custom Devise controllers for user authentication-related
rails g devise:controllers users

- Generates a custom controller named UsersController with a profile action:
rails g controller users profile

- Allows rich text content:
rails action_text:install

- Add notice to GemFile
bundle add "noticed"

- Generate a Notification model, to save notification to DB:
rails generate noticed:model

- Adding search bar:
bundle add ransack
In controller use @query = Record.ransack(param[:q])





