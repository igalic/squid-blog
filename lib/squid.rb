class SquidBlogParser
  class BlogRecord < Struct.new  :datetime
  end
  def parse chunk
    records = []
    unless chunk.empty?
      records << BlogRecord.new
    end
    records
  end
end
