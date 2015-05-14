Template.welcomeHero.events
  'click #getStarted': (evt, tmpl) ->
    AntiModals.overlay 'signupModal',
      modal: true