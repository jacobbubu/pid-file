
fs = require 'fs'
os = require 'os'
path = require 'path'

ctx = {}

PIDFILE = 
  create : (options)->
    ctx = options 
    ctx.path = PIDFILE.path options
    
    pid = process.pid

    if ctx.errorOnExist is true
      if fs.existsSync ctx.path
        throw new Error "Error : pif file (#{ctx.path}) already exists."
    fs.writeFileSync ctx.path, pid

    if ctx.deleteOnExit is true 
      process.on 'exit', ()-> PIDFILE.delete()

  path : (options)->
    return path.join os.tmpDir(), options.filename
    


  delete : ()=> 
    fs.unlinkSync ctx.path

module.exports = PIDFILE
