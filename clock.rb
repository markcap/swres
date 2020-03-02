require 'clockwork'
include Clockwork

every(5.minutes, 'Send Messages', , :at => ['**:00', '**:05', '**:10', '**:15', '**:20', '**:25', '**:30', '**:35', '**:40', '**:45', '**:50', '**:55']) {
  `rake reservations:process`
}