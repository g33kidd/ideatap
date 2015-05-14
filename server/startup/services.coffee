ServiceConfiguration.configurations.upsert {service: 'twitter'},
  {$set: {
    consumerKey: Meteor.settings.twitter.key
    secret: Meteor.settings.twitter.secret
  }}