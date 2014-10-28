Social url to username
=========

A utility library to extract a username from a user's socialmedia profile link.

Installation
----

`npm install social-url-to-username`

Usage
----

```javascript
get_username = require('social-url-to-username');

facebook = get_username.facebook('https://www.facebook.com/foobar'); // returns foobar
twitter = get_username.twitter('https://www.twitter.com/foobar'); // returns foobar
google = get_username.google('https://plus.google.com/+foobar'); // returns foobar

facebook = get_username.facebook('https://www.facebook.com/nvld'); // returns null (invalid)
twitter = get_username.twitter('https://www.twitter.com/inva.lid'); // returns null (invalid)
```

Tests
----

`npm run test`

License
----

The MIT License (MIT)

Copyright (c) 2014 Frostwind <hi@frostwind.me>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
