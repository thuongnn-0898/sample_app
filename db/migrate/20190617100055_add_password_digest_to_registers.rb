class AddPasswordDigestToRegisters < ActiveRecord::Migration[5.2]
  def change
    add_column :registers, :password_digest, :string
  end
end
