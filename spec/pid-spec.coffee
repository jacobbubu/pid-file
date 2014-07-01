
pid = require '../src'

fs = require 'fs'
os = require 'os'
path = require 'path'


describe 'pid-file', ()->    
  it 'create ', (done)-> 

    pid.create
      filename : 'pidfile.pid'


    pathname = path.join os.tmpDir(), 'pidfile.pid'

    expect( fs.existsSync pathname  ).toEqual true
    done()


# process.stdin.resume();