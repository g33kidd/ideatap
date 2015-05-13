Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'

Router.route 'home',
  path: '/'

Router.route 'page', 
  path: '/:page_slug'

Router.route 'idea',
  path: '/:_id'
  data: ->
    Ideas.findOne _id: @params._id