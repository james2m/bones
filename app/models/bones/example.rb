module Bones
  class Example

    include ActiveModel::Conversion
    include ActiveModel::Validations

    attr_accessor :id

    attr_accessor :required
    attr_accessor :error
    attr_accessor :hint
    attr_accessor :disabled
    attr_accessor :no_label

    attr_accessor :check_box
    attr_accessor :string
    attr_accessor :email
    attr_accessor :url
    attr_accessor :tel
    attr_accessor :password
    attr_accessor :search
    attr_accessor :text_area
    attr_accessor :file
    attr_accessor :integer
    attr_accessor :range
    attr_accessor :datetime
    attr_accessor :date
    attr_accessor :time
    attr_accessor :radio
    attr_accessor :radio_collection
    attr_accessor :check_box_collection
    attr_accessor :select_collection

    validates :required, :presence => true

    def initialize(*args)
      super
      add_error_message_to_field
    end

    def add_error_message_to_field
      self.errors.add :error, 'Has a validation error message'
    end

    def persisted?; true; end

  end

end unless Rails.env.production?

# == Schema Information
#
# Table name: examples
#
#  id                   :integer         not null, primary key
#  created_at           :datetime
#  updated_at           :datetime
#  email                :string(255)
#  password             :string(255)
#  required             :string(255)
#  optional             :string(255)
#  disabled             :string(255)
#  error                :string(255)
#  no_label             :string(255)
#  text_area            :text
#  check_box            :boolean         default(TRUE)
#  radio                :boolean         default(TRUE)
#  radio_collection     :string(255)
#  check_box_collection :string(255)
#  select_collection    :string(255)
#

