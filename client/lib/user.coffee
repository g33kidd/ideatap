@getProfileImage = (id) ->
  user = Meteor.users.findOne id
  if user?
    if user.services.twitter
      return user.services.twitter.profile_image_url
      