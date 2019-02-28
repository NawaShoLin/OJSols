// Runtime: 92 ms, faster than 35.46% of JavaScript online submissions for Encode and Decode TinyURL.
// Memory Usage: 34.8 MB, less than 100.00% of JavaScript online submissions for Encode and Decode TinyURL.

const urls = [];

/**
 * Encodes a URL to a shortened URL.
 *
 * @param {string} longUrl
 * @return {string}
 */
var encode = function(longUrl) {
  urls.push(longUrl);
  return (urls.length - 1).toString(36);
};

/**
 * Decodes a shortened URL to its original URL.
 *
 * @param {string} shortUrl
 * @return {string}
 */
var decode = function(shortUrl) {
  return urls[parseInt(shortUrl, 36)];
};

/**
 * Your functions will be called as such:
 * decode(encode(url));
 */
