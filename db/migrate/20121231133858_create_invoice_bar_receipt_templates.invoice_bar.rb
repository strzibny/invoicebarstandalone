# This migration comes from invoice_bar (originally 20121205185353)
class CreateInvoiceBarReceiptTemplates < ActiveRecord::Migration
  def change
    create_table :invoice_bar_receipt_templates do |t|
      t.string :name, :null => false, :unique => true
      t.date :issue_date, :default => nil
      t.string :contact_name, :default => nil
      t.integer :contact_ic, :default => nil
      t.string :contact_dic, :default => nil
      t.integer :user_id, :default => nil
      t.integer :account_id, :default => nil
      t.integer :amount, :default => nil

      t.timestamps
    end
    
    add_index :invoice_bar_receipt_templates, :name
  end
end
