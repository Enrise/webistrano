class ExtendConfigValueLength < ActiveRecord::Migration
  def self.up
    change_column :configuration_parameters, :value, :text, :limit => 65535
  end

  def self.down
    change_column :configuration_parameters, :value, :string, :limit => 255
  end
end

