Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'

Router.route 'home',
  path: '/'

Router.route 'page', 
  path: '/:page_slug'

Router.route 'idea',
  path: '/idea/:_id'
  data: ->
    Ideas.findOne _id: @params._id

Router.route 'user',
  path: '/user/:_id'