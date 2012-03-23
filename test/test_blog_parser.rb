require "rubygems"
$:.unshift File.dirname(__FILE__) + "/../lib"
require 'squid/blog_parser'

require "test/unit"

class SquidBlogParserTest < Test::Unit::TestCase

  def test_empty
    p = Squid::BlogParser.new
    result = p.parse('')
    assert_equal([], result)
  end

  def test_one
    p = Squid::BlogParser.new
    # 1332362171.521 114 127.0.0.1 ERR_CONNECT_FAIL/502 890 GET http://blag.estotericsystems.at/ - NONE/- text/html -
    result = p.parse(File.read(File.dirname(__FILE__) +'/one-line.blog'))
    assert_equal(1, result.size)
    record = result[0]
  end

end 
