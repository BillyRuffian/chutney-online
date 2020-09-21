class ReportDecorator < SimpleDelegator
  
  def with_problems
    select { |report| report[:issues].count.positive? }
  end
  
  def issues
    with_problems.map do |linter| 
      linter[:issues].map { |i| { linter: linter[:linter], message: i[:message], location: i[:location] } }
    end.flatten.sort { |i| i[:location][:line] }
  end
  
end