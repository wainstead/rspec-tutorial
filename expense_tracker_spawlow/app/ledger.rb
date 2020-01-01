# File defining the Ledger class

# module ExpenseTracker is defined across several files
module ExpenseTracker
  RecordResult = Struct.new(:success?, :expense_id, :error_message)

  class Ledger
    def record(expense)
    end
  end
end
