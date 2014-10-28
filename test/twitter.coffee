chai = require 'chai'
should = chai.should()

get_username = require '../build/social-url-to-username'

describe 'Twitter', ->

  it 'should fail if the username is less than 1 character in length', ->
    username = get_username.twitter('https://www.twitter.com/')
    should.not.exist(username)

  it 'should fail if the username is more than 15 characters in length', ->
    username = get_username.twitter('https://www.twitter.com/Loremipsumdolfdo')
    should.not.exist(username)

  it 'should fail if the username is composed of something other than letters, numbers or _', ->
    username = get_username.twitter('https://www.twitter.com/in.valid')
    should.not.exist(username)

  it 'should return a username if everything is ok', ->
    username = get_username.twitter('https://www.twitter.com/@foo_bar')
    username.should.equal 'foo_bar'

