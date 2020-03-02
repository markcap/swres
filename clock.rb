require 'clockwork'
include Clockwork

every(1.day, 'Send Messages') {
  `rake reservations:process`
}