
PickwickApp.rootElement = "#ember-testing"
PickwickApp.setupForTesting()
PickwickApp.injectTestHelpers()
module "Integration tests",
  setup: ->
    Ember.run PickwickApp, PickwickApp.advanceReadiness

  teardown: ->
    PickwickApp.reset()

test "/", ->
  visit("/").then ->
    equal find("h2").text(), "Welcome to Ember.js", "Application header is rendered"
    equal find("li").length, 3, "There are three items in the list"

