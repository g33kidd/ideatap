Template.signupModal.events
  'click #twitterLogin': (evt, tmpl) ->

  'submit #signupForm': (evt, tmpl) ->
    evt.preventDefault()
    name = tmpl.find('[name="name"]').value
    email = tmpl.find('[name="email"]').value
    password = tmpl.find('[name="password"]').value

    if name and email and password
      Accounts.createUser {
        email: email
        password: password
        profile: {
          name: name
        }
        }, (error) ->
          if error then console.log error.reason
          Router.go '/'
          AntiModals.dismissAll()
    else
      console.log "NO!"