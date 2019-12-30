# frozen_string_literal: true

require_relative '../../../app/api'

# Continuing work on this module
module ExpenseTracker
  RSpec.describe API do
    describe 'POST /exenses' do
      context 'when the expense is successfully recorded' do
        it 'returns the expense id'
        it 'responds with a 200 (OK)'
      end

      context 'when the expense fails validation' do
        it 'returns an error message'
        it 'responds with a 422 (Unprocessable entity)'
      end
    end
  end
end
