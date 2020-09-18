class ChutneyController < ApplicationController
  def index
    if request.post?
      begin
        @feature = lint_params[:feature]
        @report = ReportDecorator.new(lint(@feature).first.last)
      rescue StandardError => e
        @parse_error = e
      end
    end
  end
  
  private
  
  def lint_params
    params.permit(:feature, :authenticity_token, :commit)
  end
  
  def lint(feature_string)
    Tempfile.create do |f|
      f.write(feature_string)
      f.close
      Chutney::ChutneyLint.new(*f.path).analyse
    end
  end
end
