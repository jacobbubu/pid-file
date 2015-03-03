
pid = require '../src'

fs = require 'fs'
os = require 'os'
path = require 'path'


describe 'pid-file', ()->
  it 'create', (done)->

    pid.create
      filename : 'pidfile.pid'

    pathname = pid.path  'pidfile.pid'
    expect( fs.existsSync pathname  ).toEqual true

    fs.unlinkSync pathname # cleanup
    done()

  it 'path', (done)->

    expect( pid.path  'pidfile.pid', true ).toEqual 'pidfile.pid'
    done()

  it 'create local', (done)->

    pid.create
      filename : 'pidfile.pid'
      local: true

    pathname = './pidfile.pid'
    expect( fs.existsSync pathname  ).toEqual true

    fs.unlinkSync pathname # cleanup
    done()


# process.stdin.resume();
