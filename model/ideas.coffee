@Ideas = new Mongo.Collection 'ideas'

Meteor.methods
  postIdea: (name, description, image) ->
  updateIdea: (name, description) ->
  removeIdea: (id) ->