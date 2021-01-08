# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database - ActiveRecord is used to to store data upon user entry, see db file which includes migrations, schema, etc.
- [x] Include more than one model class (e.g. User, Post, Category) - Scripts and Users
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) Users have many scripts
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Scripts belong to users
- [x] Include user accounts with unique login attribute (username or email) - See Sessions folder which includes a login file with relevant code
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - A script can be created, it can be read and displayed in the index listing as well as throughout the site where relevant, it can be updated via a button on the edit page that routes it using CRUD, and destroyed via a button on the edit page that routes it using CUD.
- [x] Ensure that users can't modify content created by other users a curent_user helper was created to ensure users only have access to their own entries.
- [x] Include user input validations - in the script.rb and user.rb files under models, I used validates_presence_of to ensure all fields are filled out and if they are not, the user cannot proceed with the action.
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
