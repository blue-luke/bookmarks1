# frozen_string_literal: true

class Bookmark
  @@bookmarks = []

  def self.all
    @@bookmarks.map(&:url)
  end

  attr_reader :url

  def initialize(url)
    @url = url
    @@bookmarks.append(self)
  end
end
