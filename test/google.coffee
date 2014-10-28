chai = require 'chai'
should = chai.should()

get_username = require '../build/social-url-to-username'

describe 'Google plus', ->

  it 'should return a username if everything is ok', ->
    username = get_username.google('https://plus.google.com/+foobar')
    username.should.equal 'foobar'

