class Account < ApplicationRecord
  belongs_to :user

  def info
    balance = self.balance ? "%.2f" % self.balance : "no balance"
    "#{self.name} - $#{balance}"
  end
end
