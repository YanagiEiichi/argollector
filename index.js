process.argv.slice(2).reduce(function(base, arg) {
  if(arg[0] === '-') {
    base = module.exports[arg] || (module.exports[arg] = []);
  } else {
    [].push.call(base, arg);
  }
  return base;
}, module.exports = Object.create([], {
  length: {
    value: 0,
    writable: true,
    configurable: true
  }
}));
