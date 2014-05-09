
pid = require '../index.coffee'
pid.create
  path : (process.env.TMPDIR || process.env.TEMP) + '/pidfile.pid'


process.stdin.resume();