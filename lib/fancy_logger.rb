class FancyLogger < Logger
  module Colors
    RED     = '0;31'
    GREEN   = '0;32'
    BLUE    = '0;34'
    PURPLE  = '0;35'
  end
  include Colors

  COLOR_CONFIG = {
    :debug => GREEN,
    :info => BLUE,
    :warn => PURPLE,
    :error => RED
  }

  STACK_LEVEL = 1
  STACK_EXP   = /(?<file>.+):(?<line>\d+):.*`(?<func>.+)'/
  DATE_FORMAT = '%m/%d/%Y %H:%M:%S'

  def format_message severity, datetime, progname, msg
    m = STACK_EXP.match caller[STACK_LEVEL+1].split('/').last
    time = datetime.strftime DATE_FORMAT
    "#{print_severity(severity)} \t#{time} #{m[:file]}:#{m[:line]} (#{m[:func]}):
    \t#{msg}\n\n"
  end

  private

  def print_severity severity
    string_with_color severity, COLOR_CONFIG[severity.downcase.to_sym]
  end

  def string_with_color str, color
    "\e[#{color}m#{str}\e[0;0m"
  end
end
