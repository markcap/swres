require 'clockwork'
include Clockwork

every(5.minutes, 'Send Messages') {
  `rake reservations:process`
}