class ChangeInstitutionIdIdColumnToInstitutionIdInVenues < ActiveRecord::Migration
  def change
    rename_column :venues, :institution_id_id, :institution_id
  end
end
