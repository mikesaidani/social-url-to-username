chai = require 'chai'
should = chai.should()

get_username = require '../build/social-url-to-username'

describe 'Facebook', ->

  it 'should fail if the username is less than 5 characters in length', ->
    username = get_username.facebook('https://www.facebook.com/fail')
    should.not.exist(username)

  it 'should fail if the username is more than 50 characters in length', ->
    username = get_username.facebook('https://www.facebook.com/Loremipsumdolfdorsitametconsecteturcrasametdalornil')
    should.not.exist(username)

  it 'should fail if the username is composed of numbers only', ->
    username = get_username.facebook('https://www.facebook.com/123456')
    should.not.exist(username)

  it 'should return a username if everything is ok', ->
    username = get_username.facebook('https://www.facebook.com/foobar')
    username.should.equal 'foobar'

