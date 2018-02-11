# Homework #4

5 points.  Due before the next class.

This assignment will help reinforce the "Golden 7" routes
and RESTful principles of HTTP design.

### Setup & Turn-in

1. Get the code for this assignment by downloading a ZIP file of this repository.
2. Unzip into a folder on your computer.
3. (Optional) Rename the folder to `hw4`.
4. Turn that folder into a local git repository.
5. From your command prompt: `bundle install`
5. From your command prompt: `rails db:migrate`
5. From your command prompt: `rails db:seed`
5. Fulfill the requirements below.  Commit your changes often to save your work.
6. Create a new, remote *private* repository named `mpcs52553-hw4` inside of your GitHub or BitBucket account.
7. Push your local repository to the remote repository.
8. Add me as a collaborator (read+write): `jeffcohen` (GitHub and BitBucket)
9. Push commits as often as you want.  I will only clone your repository when the assignment is due.



### Requirements

This web app is a continuation of the work we did in class.
In addition to movies, this version also has directors.
Directors are associated to movies.  You can "CRUD" the directors
resource.

However, the developer I hired to add the directors resource
didn't do a great job, and some of the code is broken.

Your job is to fix the code so that we can view, add, edit, and
delete directors without running into any bugs or errors; and
without breaking any of the existing movie functionality.

* (1 pt) View a list of directors
* (1 pt) View the details of a specific director
* (1 pt) Create a new director
* (1 pt) Update the details of a specific director
* (1 pt) Delete a director

HINT: You shouldn't need to touch `config/routes.rb`.
