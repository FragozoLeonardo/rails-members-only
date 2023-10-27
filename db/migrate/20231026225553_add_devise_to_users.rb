# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def up
    if column_exists?(:users, :name)
      # The name column already exists, so do nothing.
    else
      # Add the name column to the users table.
      add_column :users, :name, :string
    end

    if column_exists?(:users, :email)
      # The email column already exists, so do nothing.
    else
      # Add the email column to the users table.
      add_column :users, :email, :string
    end

    if column_exists?(:users, :password_digest)
      # The password_digest column already exists, so do nothing.
    else
      # Add the password_digest column to the users table.
      add_column :users, :password_digest, :string
    end
  end

  def down
    remove_column :users, :name, if_exists: true
    remove_column :users, :email, if_exists: true
    remove_column :users, :password_digest, if_exists: true
  end
end
