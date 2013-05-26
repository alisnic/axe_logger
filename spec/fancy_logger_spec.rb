require 'logger'
require_relative '../lib/fancy_logger.rb'

l = FancyLogger.new(STDOUT)
l.level = 0
l.debug 'debugging is easy'
l.info 'informing as well'
l.warn 'OH WAIT! Something suspicious'
l.error 'ACHTUNG! ZIE BIG ERROR'
