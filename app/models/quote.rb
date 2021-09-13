# frozen_string_literal: true

class Quote < ApplicationRecord
end

# == Schema Information
#
# Table name: quotes
#
#  id          :bigint           not null, primary key
#  author      :string
#  quote       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  provider_id :integer          indexed
#
