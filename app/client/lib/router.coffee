Router.plugin 'loading', loadingTemplate: 'loading'

Router.configure
  layoutTemplate: 'layout'
  yieldTemplates:
    header:
      to: 'header'
    footer:
      to: 'footer'

  onBeforeAction: ->
    # Hide the maincontent container for future animations
    $('#mainContent').css 'display', 'none'
    @next()
    return

  onAfterAction: ->
    # Apply a default animation
    # TODO: animation should be configurable
    $('#mainContent').velocity "transition.slideLeftBigIn", 1000
    return

  unload: ->
    # when unloading a route, store its path
    Session.set 'previousRoute', @path
    return

Router.onBeforeAction AccountsTemplates.ensureSignedIn, except: [
  'atSignIn'
  'atSignUp'
  'atForgotPwd'
  'atResetPwd'
  'home'
]
