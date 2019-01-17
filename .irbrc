alias x exit
require 'pp'
require 'irb/completion'
unless defined?(reload!)
  $files = []
  def load!(file)
    $files << file
    load file
  end
  def reload!
    $files.each { |f| load f }
  end
end
