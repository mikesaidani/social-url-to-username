exports.facebook = function(profile_url) {
  var matches;
  matches = profile_url.match(/^(?:https?:\/\/)?(?:(?:www\.)|(?:[a-z]{2}-[a-z]{2}\.))?facebook\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*?(?:\/)?(\d*[^0-9/?]+\d*)\/?$/i);
  if ((matches != null) && matches.length === 2 && (matches[1] != null) && matches[1].length >= 5 && matches[1].length <= 50) {
    return matches[1];
  } else {
    return null;
  }
};

exports.twitter = function(profile_url) {
  var matches;
  matches = profile_url.match(/^(?:https?:\/\/)?(?:www\.)?twitter\.com\/(?:#!\/)?@?([a-z0-9_]+)(?:\/\w+)*$/i);
  if ((matches != null) && matches.length === 2 && (matches[1] != null) && matches[1].length >= 1 && matches[1].length <= 15) {
    return matches[1];
  } else {
    return null;
  }
};

exports.google = function(profile_url) {
  var matches;
  matches = profile_url.match(/^(?:https?:\/\/)?plus\.google\.com\/(?:.?\/)?(?:.?\/)?(\+[^/]+)(?:\/\w+)*$/i);
  if ((matches != null) && matches.length === 2 && (matches[1] != null) && matches[1].length >= 1 && matches[1].length <= 15) {
    return matches[1];
  } else {
    return null;
  }
  if (value) {
    return /^(?:https?:\/\/)?plus\.google\.com\/(?:.?\/)?(?:.?\/)?(\+[^/]+)(?:\/\w+)*$/i.test('plus.gogle.com/' + value);
  }
  return true;
};
