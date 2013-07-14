class InMemoryCounter # < Counter
  def self.tick
    @count ||= 0
    @count += 1
    @count
  end
end