Template.header.events
  'click #logout': (evt, tmpl) ->
    Meteor.logout()
    Router.go '/'

Template.header.helpers
  profileImage: ->
    getProfileImage(Meteor.userId())

Template.signup.events
  'click #login': (evt, tmpl) ->
    AntiModals.overlay 'loginModal',
      modal: true

  'click #signup': (evt, tmpl) ->
    AntiModals.overlay 'signupModal',
      modal: true