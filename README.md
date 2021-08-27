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