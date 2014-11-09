Template.header.events
  # Hide the navbar when links and buttons are clicked if the navbar is
  # displayed as a dropdown menu (on mobile)
  'click.nav .navbar-collapse.in': (event, template) ->
    navbar = template.$ event.currentTarget
    target = template.$ event.target
    isLinkOrButton = target.is 'a' || target.is 'button'
    isDropdown = target.is '.dropdown-toggle'

    if isLinkOrButton and not isDropdown then navbar.collapse 'hide'
