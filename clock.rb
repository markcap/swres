require 'clockwork'
include Clockwork

every(5.seconds, 'Send Messages') {
  `rake reservations:process`
}