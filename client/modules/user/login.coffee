Template.loginModal.events
  'click #twitterLogin': (evt, tmpl) ->
    Meteor.loginWithTwitter({}, (error) ->
      if error then console.log error.reason
      AntiModals.dismissAll()
    )

  'submit #loginForm': (evt, tmpl) ->
    evt.preventDefault()
    email = tmpl.find('[name="email"]').value
    password = tmpl.find('[name="password"]').value

    if email and password
      Meteor.loginWithPassword {email: email}, password, (error) ->
        if error then console.log error.reason
        Router.go '/'
    else
      console.log "NO!"