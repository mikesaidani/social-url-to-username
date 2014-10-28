chai = require 'chai'
should = chai.should()

get_username = require '../build/social-url-to-username'

describe 'Github', ->

  it 'should fail if the username is less than 1 character in length', ->
    username = get_username.github('https://github.com/')
    should.not.exist(username)

  it 'should fail if the username is more than 39 characters in length', ->
    username = get_username.github('https://github.com/LoremipsumdolfdoLoremipsumdolfdo1234567891')
    should.not.exist(username)

  it 'should fail if the username starts with a dash', ->
    username = get_username.github('https://github.com/-')
    should.not.exist(username)

  it 'should fail if the username is blacklisted', ->
    username = get_username.github('https://github.com/site')
    should.not.exist(username)

  it 'should fail if the username is composed of something other than letters, numbers or -', ->
    username = get_username.github('https://github.com/in_valid')
    should.not.exist(username)

  it 'should return a username if everything is ok', ->
    username = get_username.github('https://github.com/foo-bar-')
    username.should.equal 'foo-bar-'

  it 'should return a username even with a repo in the url', ->
    username = get_username.github('https://github.com/foo-bar-/my_repo')
    username.should.equal 'foo-bar-'
