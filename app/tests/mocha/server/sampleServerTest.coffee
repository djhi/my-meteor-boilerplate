unless typeof MochaWeb is "undefined"
  MochaWeb.testOnly ->
    describe "Server initialization", ->
      it "should have a Meteor version defined", ->
        chai.assert Meteor.release
        return

      it "should have settings with default properties", ->
        chai.assert.isDefined Meteor.settings, "Settings are not defined"
        console.log Meteor.settings

        # NOTE: we currently have no way to specify a settings file for tests
        ###
        chai.assert.isDefined Meteor.settings.applicationName, "Settings don't have an applicationName property"
        chai.assert.isDefined Meteor.settings.defaultEmailAddress, "Settings don't have an defaultEmailAddress property"
        ###
        return

      return

    return
