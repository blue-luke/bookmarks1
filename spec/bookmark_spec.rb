# frozen_string_literal: true

require './lib/bookmark'

describe Bookmark do
  let(:bookmark1) { Bookmark.new('www.theguardian.com') }

  it 'returns the url of the bookmark' do
    expect(bookmark1.url).to eq 'www.theguardian.com'
  end

  it 'returns a list of all bookmarks' do
    bookmark2 = Bookmark.new('www.thetimes.co.uk')
    expect(Bookmark.all).to eq ['www.theguardian.com', 'www.thetimes.co.uk']
  end
end
