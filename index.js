process.argv.slice(2).forEach(function(arg) {
  if (arg.startsWith('-')) {
    this.current = module.exports[arg] = [];
  } else {
    this.current.push(arg);
  }
}, { current: module.exports = [] });
