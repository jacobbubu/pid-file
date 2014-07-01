
fs = require 'fs'
os = require 'os'
path = require 'path'

ctx = {}

PIDFILE = 
  create : (options = {})->
    ctx = options 
    ctx.path = path.join os.tmpDir(), ctx.filename
    
    pid = process.pid

    if ctx.errorOnExist is true
      if fs.existsSync ctx.path
        throw new Error "Error : pif file (#{ctx.path}) already exists."
    fs.writeFileSync ctx.path, pid

    if ctx.deleteOnExit is true 
      process.on 'exit', ()-> PIDFILE.delete()



  delete : ()=> 
    fs.unlinkSync ctx.path

module.exports = PIDFILE
