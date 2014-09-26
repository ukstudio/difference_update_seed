require "difference_update_seed/version"
require "active_record"

module DifferenceUpdateSeed
  refine ActiveRecord::Base.singleton_class do
    def seed(*keys, &block)
      unknown_columns = keys.to_a.map(&:to_s) - column_names
      unless unknown_columns.empty?
        fail ArgumentError, "Unknown columns: #{unknown_columns.join(',')}. Valid columns: #{column_names.join(',')}"
      end

      new_record = new(&block)
      record = find_or_initialize_by(new_record.attributes.slice(*keys.map(&:to_s)))
      record.tap(&block)

      if record.new_record?
        record.save!
        puts "Insert new record #{record.attributes.to_s}"
      else
        if record.changed?
          puts "Update record. ID: #{record.id},  #{record.changes}"
          record.save!
        else
          puts "Do nothing. ID #{record.id}"
        end
      end

      record
    end
  end
end
