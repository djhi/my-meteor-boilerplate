Template.header.events
  'click .btn-sign-out': (event, template) ->
    event.preventDefault()
    Meteor.logout (error) ->
      if error
        console.log error
        Notifications.error()
      else
        Router.go 'home'

    return false
