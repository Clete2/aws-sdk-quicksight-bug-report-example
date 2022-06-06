# Example
Made to illustrate [this issue](https://github.com/aws/aws-sdk-js-v3/issues/3640#issuecomment-1146467369).

# Building
1. `yarn`
1. `yarn build`

# Building with Docker
1. `docker build .`

# Expected error:

```log
yarn run v1.22.19
$ webpack
asset example.js 1.01 MiB [emitted] [minimized] (name: example)
orphan modules 1.91 MiB [orphan] 404 modules
runtime modules 1.25 KiB 5 modules
built modules 469 KiB [built]
  javascript modules 439 KiB
    modules by path ./node_modules/fast-xml-parser/src/*.js 43.2 KiB 9 modules
    modules by path ./node_modules/entities/lib/*.js 11.8 KiB
      ./node_modules/entities/lib/index.js 3.6 KiB [built] [code generated]
      + 3 modules
    ./src/example.ts + 216 modules 384 KiB [not cacheable] [built] [code generated]
    ./node_modules/@aws-sdk/util-user-agent-node/dist-es/is-crt-available.js 290 bytes [built] [code generated]
  json modules 30 KiB
    ./node_modules/entities/lib/maps/entities.json 28.4 KiB [built] [code generated]
    ./node_modules/entities/lib/maps/legacy.json 1.24 KiB [built] [code generated]
    ./node_modules/entities/lib/maps/xml.json 62 bytes [built] [code generated]
    ./node_modules/entities/lib/maps/decode.json 308 bytes [built] [code generated]

WARNING in ./node_modules/@aws-sdk/util-user-agent-node/dist-es/is-crt-available.js 3:96-114
Module not found: Error: Can't resolve 'aws-crt' in '/example/node_modules/@aws-sdk/util-user-agent-node/dist-es'
 @ ./node_modules/@aws-sdk/util-user-agent-node/dist-es/index.js 5:0-52 16:23-37
 @ ./node_modules/@aws-sdk/client-quicksight/dist-es/runtimeConfig.js 12:0-65 24:898-914
 @ ./node_modules/@aws-sdk/client-quicksight/dist-es/QuickSightClient.js 10:0-73 15:24-42
 @ ./node_modules/@aws-sdk/client-quicksight/dist-es/index.js 2:0-35 2:0-35
 @ ./src/example.ts 37:0-62 40:34-50

1 warning has detailed information that is not shown.
Use 'stats.errorDetails: true' resp. '--stats-error-details' to show it.

webpack 5.73.0 compiled with 1 warning in 6656 ms
Done in 7.40s.
```