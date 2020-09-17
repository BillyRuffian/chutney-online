class ReportDecorator < SimpleDelegator
  
  def with_problems
    select { |report| report[:issues].count.positive? }
  end
  
end