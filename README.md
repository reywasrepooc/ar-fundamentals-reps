# Phase 3 Code Challenge: Nonprofits

For this assignment, we'll be working with a Nonprofits domain.

We have three models: `Nonprofit`, `Donation`, and `User`.

For our purposes, a `Nonprofit` has many `Donations`, a `User` has many `Donations`, and a
`Donation` belongs to a `Nonprofit` and to an `User`.

`Nonprofit` - `User` is a many to many relationship.

## What You Already Have

The starter code has migrations, empty model files for the initial `User`, `Nonprofit`, and `Donation`
models, and seed data for some `Users` and `Nonprofit`. The schema looks like this:

### Users Table

| Column              | Type    |
| ------------------- | ------- |
| first_name          | String  |
| last_name           | String  |
| territory           | String  |

### Nonprofits Table

| Column              | Type    |
| ------------------- | ------- |
| name                | String  |
| description         | String  |

### Donations Table

| Column              | Type    |
| ------------------- | ------- |
| amount              | Integer |
| nonprofit_id        | Integer |
| user_id             | Integer |

## Instructions

To get started, run `bundle install` while inside of this directory.

Then, migrate and seed the database by running the following commands:
```
  $ bundle exec rake db:migrate
  $ bundle exec rake db:seed
```

The seed data provided will create the same dataset that will be used for the
tests. **This is not typical!** The reason for this is so that you will be able
to test your code in the console as you go by running `bundle exec rake console`
as well as running `rspec`.

Build out all of the methods listed in the deliverables.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

### Object Relationship Methods

Use Active Record association macros and Active Record query methods where
appropriate (i.e. `has_many`, `has_many through`, and `belongs_to`).

#### Donation

- `Donation#user`
  - should return the `User` instance for this donation
- `Donation#nonprofit`
  - should return the `Nonprofit` instance for this donation

#### Nonprofit

- `Nonprofit#donations`
  - returns a collection of all the donations for the nonprofit
- `Nonprofit#users`
  - returns a collection of all the users who donated to the nonprofit

#### User

- `User#donations`
  - should return a collection of all the donations that the user has made
- `User#nonprofits`
  - should return a collection of all the nonprofits that the user has donated to

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `User.first.nonprofits` and see a list of the
nonprofits for the first user in the database based on your seed data; and
`Donation.first.user` should return the user for the first donation in the database.

### Querying Fundamentals

This set of methods is to practice with fundamental ActiveRecord querying methods.
If this feels comfortable to you already, feel free to move on to the next section.

#### Nonprofit

- `Nonprofit.get_first`
  - returns the first nonprofit in the database
- `Nonprofit.get_id_of_4`
  - returns the nonprofit with an `id` of 4
- `Nonprofit.get_blm`
  - returns the nonprofit with the `name` of "Black Lives Matter"
- `Nonprofit.get_last_3`
  - returns a collection of the last 3 nonprofits in the database
- `Nonprofit.get_alexs`
  - returns the nonprofit with the `name` of "Alex's Lemonade Stand"
- `Nonprofit.get_id_of_10`
  - returns the nonprofit with an `id` of 10. If none are found, it should return `nil`.
- `Nonprofit.get_first_2`
  - returns the first 2 nonprofits in the database

- `Nonprofit.in_alphabetical_order`
  - returns a collection of all nonprofits in alphabetical order by `name`
- `Nonprofit.get_amount_of_nonprofits`
  - returns the count of nonprofits in the database
- `Nonprofit.only_names`
  - returns an array of all the names of the nonprofits
- `Nonprofit.reverse_alphabetical_order`
  - returns a collection of all nonprofits in reverse alphabetical order by `name`
- `Nonprofit.only_descriptions`
  - returns an array of all the descriptions of the nonprofits

#### User

- `User.get_cooper`
  - returns the user whose `first_name` is "Cooper"
- `User.get_first_5`
  - returns the first 5 users in the database
- `User.get_nj_user`
  - returns the user with the `territory` of "NJ"
- `User.get_id_of_9`
  - returns the user with an `id` of 9
- `User.get_wenhold`
  - returns the user with the `last_name` of "Wenhold"
- `User.get_last`
  - returns the last user in the database
  - `User.get_sebastian_kopp`
  - returns the user with the `first_name` of "Sebastian" and the `last_name` of "Kopp"

- `User.phl_users`
  - returns a collection of all users with the `territory` of "PHL"
- `User.reverse_alphabetical_by_first_name`
  - returns a collection of all users in reverse alphabetical order by `first_name`
- `User.first_5_alphabetical_by_last_name`
  - returns a collection of the first 5 users sorted alphabetically by `last_name`
- `User.amount_of_phl_users`
  - returns the amount of users with a `territory` of "PHL"
- `User.unique_territories`
  - returns an array of all the territories of the users (without duplicates)
- `User.non_phl_users`
  - returns an array of all users who do not have a `territory` of "PHL"

  #### Donation

- `Donation.get_last_3`
  - returns the last 3 donations in the database
- `Donation.get_id_of_2`
  - returns the donation with the `id` of 2
- `Donation.get_from_first_user`
  - returns the donations with a `user_id` of 1
- `Donation.get_id_of_18`
  - returns the donation with an `id` of 18
- `Donation.get_from_last_nonprofit`
  - returns all donations made to the last `Nonprofit` in the database

- `Donation.order_by_donation_amount`
  - returns an array of all donations order by `amount` ascending
- `Donation.amount_over_350`
  - returns a collection of all donations whose `amount` is greater than 350
- `Donation.count_of_donations`
  - returns a count of all donations
- `Donation.donations_to_nonprofit_with_id_of_4`
  - returns an array of all donations with a `nonprofit_id` of 4
- `Donation.total_dollars_donated`
  - returns the sum of all `amount`s of donations
- `Donation.donations_by_user_with_id_of_13`
  - returns all donations with a `user_id` of 13