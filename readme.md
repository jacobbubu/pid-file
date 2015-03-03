# pid-file

> create pif file and has some options


## Example

```coffee

pid = require 'pid-file'
pid.create
  filename : 'pidfile.pid'
```

Create pid file on `os.tmpDir()`. If exists, rewrite.

```coffee

pid = require 'pid-file'
pid.create
  filename : 'pidfile.pid'
  errorOnExist : true
```

Create pid file on `os.tmpDir()` . If exists, throw Error.


```coffee

pid = require 'pid-file'
pid.create
  filename : 'pidfile.pid'
  deleteOnExit : true
```

When program exit normally, delete pid file.

But, in windows `ctrl + C` didn't make `exit` event


```coffee

pid = require 'pid-file'
pid.create
  path : 'pid/app_name.pid'
  local : true
```

Create pid file locally to your current working directory.


## Why Create Another PID module?

Other PID module I tried throw `Error` when exist PID File.

But, in my development progress kill process is usaul action.

So, I make another one.



## License

MIT


[sh]: https://github.com/sindresorhus/grunt-shell
[sp]: https://github.com/cri5ti/grunt-shell-spawn
