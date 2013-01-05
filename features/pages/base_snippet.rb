module BaseSnippet
  include BaseFunctions
  include RSpec::Matchers

  def initialize snippet
    @snippet = snippet
  end

  def snippet
    raise "@snippet must be defined by a snippet to scope the selectors" if @snippet.nil?
    @snippet
  end

  def find(*args)
    @snippet.find(*args)
  end

  def has_selector?(sel)
    @snippet.has_selector? selectors[sel], :wait => false
  end
end