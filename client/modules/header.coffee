Template.header.helpers
  profileImage: ->
    "http://placehold.it/32x32"

Template.signup.events
  'click #login': (evt, tmpl) ->
    AntiModals.overlay 'loginModal',
      modal: true

  'click #signup': (evt, tmpl) ->
    AntiModals.overlay 'signupModal',
      modal: true