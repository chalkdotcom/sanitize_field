require "sanitize_field/version"
require 'active_record/base'
require 'active_record/relation'
require 'active_record/callbacks'
require 'sanitize'

module SanitizeField
  def sanitize_field(field, properties = Sanitize::Config::RELAXED)
    before_save do
      if self.send "#{field}_changed?"
        sanitized_content = Sanitize.clean(self.send("#{field}"), properties)
        self.send "#{field}=", sanitized_content
      end
    end
  end
end

ActiveRecord::Base.send :extend, SanitizeField