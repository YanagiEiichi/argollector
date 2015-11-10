## Argollector

Arguments Collector in CLI

#### Usage

```js
// example.js
console.log(JSON.stringify(require('argollector')));
```

```bash
node example.js 1 2 3 --list 4 5 6 --name hehe -d hello
```

```json
{
  "0": "1",
  "1": "2",
  "2": "3",
  "--list": [
    "4",
    "5",
    "6"
  ],
  "--name": [
    "hehe"
  ],
  "-d": [
    "hello"
  ]
}
```
