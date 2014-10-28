# allow all chars, not all numbers, length >= 5, length <= 50
exports.facebook = (profile_url) ->
  matches = profile_url.match /^(?:https?:\/\/)?(?:(?:www\.)|(?:[a-z]{2}-[a-z]{2}\.))?facebook\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*?(?:\/)?(\d*[^0-9/?]+\d*)\/?$/i

  if matches? and matches.length is 2 and matches[1]? and matches[1].length >= 5 and matches[1].length <= 50
    return matches[1]
  else
    return null

# letters, numbers, _, length >= 1 and <= 15
exports.twitter = (profile_url) ->
  matches = profile_url.match /^(?:https?:\/\/)?(?:www\.)?twitter\.com\/(?:#!\/)?@?([a-z0-9_]+)(?:\/\w+)*$/i

  if matches? and matches.length is 2 and matches[1]? and matches[1].length >= 1 and matches[1].length <= 15
    return matches[1]
  else
    return null

# IDK
exports.google = (profile_url) ->
  matches = profile_url.match /^(?:https?:\/\/)?plus\.google\.com\/(?:.?\/)?(?:.?\/)?\+([^/]+)(?:\/\w+)*$/i

  if matches? and matches.length is 2 and matches[1]? and matches[1].length >= 1 and matches[1].length <= 15
    return matches[1]
  else
    return null

# Username may only contain alphanumeric characters or dashes and cannot begin with a dash, <= 39, >=1
exports.github = (profile_url) ->
  matches = profile_url.match /^(?:https?:\/\/)?(?:www\.)?github\.com\/([^\-][a-z0-9\-]*)(?:\/\w*)?$/i
  blacklist = [
    'c'
    'blog'
    'explore'
    'features'
    'notifications'
    'settings'
    'terms'
    'site'
    'security'
    'contact'
    'about'
    'login'
    'join'
  ]

  if matches? and matches.length is 2 and matches[1]? and matches[1].length >= 1 and matches[1].length <= 39 and matches[1] not in blacklist
    return matches[1]
  else
    return null
