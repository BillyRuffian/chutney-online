class ReportDecorator < SimpleDelegator
  
  def with_problems
    select { |report| report[:issues].count.positive? }
  end
  
  def issues
    collect { |linter| linter[:issues] }.flatten.sort { |issue| issue.dig(:location, :line) }
  end
end