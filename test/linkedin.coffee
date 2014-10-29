chai = require 'chai'
should = chai.should()

get_username = require '../build/social-url-to-username'

describe 'Linkedin', ->

  it 'should fail if the username is less than 5 character in length', ->
    username = get_username.linkedin('http://www.linkedin.com/in/azer')
    should.not.exist(username)

  it 'should fail if the username is more than 30 characters in length', ->
    username = get_username.linkedin('http://www.linkedin.com/in/LoremipsumdolfdoLoremipsumdolfdoa')
    should.not.exist(username)

  it 'should fail if the username is composed of something other than letters, numbers or _', ->
    username = get_username.linkedin('http://www.linkedin.com/in/in.valid')
    should.not.exist(username)

  it 'should return a username if everything is ok (variant 1)', ->
    username = get_username.linkedin('http://www.linkedin.com/in/foobar')
    username.should.equal 'foobar'

  it 'should return a username if everything is ok (variant 2)', ->
    username = get_username.linkedin('http://www.linkedin.com/pub/foobar/1/1b3/b45')
    username.should.equal 'foobar'
