// Runtime: 108 ms, faster than 18.10% of JavaScript online submissions for Subdomain Visit Count.
// Memory Usage: 38.8 MB, less than 40.00% of JavaScript online submissions for Subdomain Visit Count.

/**
 * @param {string[]} cpdomains
 * @return {string[]}
 */
var subdomainVisits = function(cpdomains) {
  const counts = {};

  cpdomains.forEach(cpdomain => {
    const [nStr, domain] = cpdomain.split(' ');
    const n = Number(nStr);
    const subStrs = domain.split('.');
    for (let i = 0; i < subStrs.length; i += 1) {
      const d = subStrs.slice(i).join('.');
      counts[d] = (counts[d] || 0) + n;
    }
  });


  return Object.entries(counts).map(([domain, count]) =>
    `${count} ${domain}`);
};
