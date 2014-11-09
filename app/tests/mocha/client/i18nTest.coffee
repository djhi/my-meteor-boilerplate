unless typeof MochaWeb is "undefined"
  MochaWeb.testOnly ->
    describe "i18n", ->
      it "should be initialized at startup", ->
        chai.assert.isDefined i18n
        chai.assert.isNotNull i18n
        return

      it "should change language when requested", ->
        i18n.setLanguage 'en'
        chai.assert.equal i18n.getLanguageCode(), 'en'
        i18n.setLanguage 'fr'
        chai.assert.equal i18n.getLanguageCode(), 'fr'
        return

      it "should return a language definition when requested", ->
        i18n.setLanguage 'en'
        language = i18n.getLanguage()
        chai.assert.isNotNull language
        chai.assert.isObject language

        chai.assert.property language, 'en'
        chai.assert.property language, 'name'

        return

      return

    return
