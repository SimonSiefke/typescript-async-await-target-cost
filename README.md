# async-await-target-cost

This project aims to benchmark the cost of an await

## The file

```javascript
async function empty() {
  return true;
}

async function loop() {
  console.time("loop");
  for (let i = 0; i < 1000000; i++) {
    await empty;
  }
  console.timeEnd("loop");
}

loop();
```

## The Results

```
benchmarking sync loop
loop: 2.469ms
------------------------------------------------------
benchmarking async/await loop
loop: 111.755ms
------------------------------------------------------
```

## Why

If a function doesn't need to be asynchronous, it probably shouldn't be. The synchronous code is much faster.
