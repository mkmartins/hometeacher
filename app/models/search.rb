class Search
  def self.for(keyword)
    keyword_search = "%#{keyword.downcase}%"

    Member.where('lower(name) LIKE ?', keyword_search) 
  end
end