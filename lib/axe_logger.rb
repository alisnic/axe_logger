class AxeLogger < Logger
  module Colors
    RED     = '0;31'
    GREEN   = '0;32'
    BLUE    = '0;34'
    PURPLE  = '0;35'
  end
  include Colors

  COLOR_CONFIG = {
    :debug => GREEN,
    :info =>  BLUE,
    :warn =>  PURPLE,
    :error => RED
  }

  STACK_LEVEL = 1
  STACK_EXP   = /(?<file>.+):(?<line>\d+):.*`(?<func>.+)'/

  attr_accessor :date_format
  def initialize (*opts)
    @date_format = '%m/%d/%Y %H:%M:%S'
    super
  end

  def format_message severity, datetime, progname, msg
    m = STACK_EXP.match caller[STACK_LEVEL+1].split('/').last
    time = datetime.strftime date_format
    color = COLOR_CONFIG[severity.downcase.to_sym]

    string_with_color("#{time} #{m[:file]}:#{m[:line]} (#{m[:func]}): ", color) +
    "#{msg}\n"
  end

  private

  def string_with_color str, color
    "\e[#{color}m#{str}\e[0;0m"
  end
end
