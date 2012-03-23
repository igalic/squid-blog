require "rubygems"
$:.unshift File.dirname(__FILE__) + "/../lib"
require 'squid/blog_parser'
require "test/unit"

class SquidBlogParserTest < Test::Unit::TestCase

  TEST_DATA_PATH = File.dirname(__FILE__)

  def setup
    @parser = Squid::BlogParser.new
  end

  def test_empty_input
    result = @parser.parse('')
    assert_equal([], result)
  end

  # http://wiki.squid-cache.org/Features/LogFormat
  #
  # The native format for Squid. The format is
  # time elapsed remotehost code/status bytes method URL rfc931 peerstatus/peerhost type
  #
  # The print format line for native access.log entries looks like this: "%9d.%03d %6d %s %s/%03d %d %s %s %s %s%s/%s %s"
  #
  # example:
  # 1332362171.521 114 127.0.0.1 ERR_CONNECT_FAIL/502 890 GET http://blag.estotericsystems.at/ - NONE/- text/html -
  def test_one_log_record
    result = @parser.parse(File.read(File.join(TEST_DATA_PATH, 'one-line.blog')))
    assert_equal(1, result.size)

    record = result[0]
  end

end
