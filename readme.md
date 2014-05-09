# pid-file

> create pif file and has some options


## Example 

```coffee

pid = require 'pid-file'
pid.create
  path : (process.env.TMPDIR || process.env.TEMP) + '/app_name.pid'
```

Create pid file. If exists, rewrite.

```coffee

pid = require 'pid-file'
pid.create
  path : (process.env.TMPDIR || process.env.TEMP) + '/app_name.pid'
  errorOnExist : true
```

Create pid file. If exists, throw Error.


```coffee

pid = require 'pid-file'
pid.create
  path : (process.env.TMPDIR || process.env.TEMP) + '/app_name.pid'
  deleteOnExit : true
```

When program exit normally, delete pid file.

But, in windows `ctrl + C` didn't make `exit` event
 
 
## Why Create Another PID module?

Other PID module I tried throw `Error` when exist PID File.

But, in my development progress kill process is usaul action. 

So, I make another one. 

 

## License

MIT


[sh]: https://github.com/sindresorhus/grunt-shell 
[sp]: https://github.com/cri5ti/grunt-shell-spawn