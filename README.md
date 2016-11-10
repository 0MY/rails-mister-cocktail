# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Attributes

    A cocktail has a name (e.g. "Mint Julep", "Whiskey Sour", "Mojito")
    An ingredient has a name (e.g. "lemon", "ice", "mint leaves")
    A dose references a cocktail, an ingredient and has a description. (e.g. the Mojito cocktail needs 6cl of lemon)

Validation

    A cocktail must have a name, and names should be unique
    An ingredient must have a name, and names should be unique
    A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] couples should be unique.

Associations

    A cocktail has many doses
    A cocktail has many ingredients through doses
    An ingredient has many doses
    A dose belongs to an ingredient
    A dose belongs to a cocktail
    You can't delete an ingredient if it used by at least one cocktail.
    When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).

Routing

Once again, you must have a precise idea of the features of your app in order to build your routes. Here is the list of features:

    A user can see the list of all cocktails

GET "cocktails"

    A user can see the details of a given cocktail, with the ingredient list

GET "cocktails/42"

    A user can create a new cocktail.

GET "cocktails/new"
POST "cocktails"

    A user can add a new dose (ingredient/description pair) on an existing cocktail.

GET "cocktails/42/doses/new"
POST "cocktails/42/doses"

    A user can delete a dose on an existing cocktail

DELETE "doses/25"

And now think. Do we need an IngredientsController?
