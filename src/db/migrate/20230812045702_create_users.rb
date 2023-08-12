class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false, force: true do |t|
      t.primary_key :id, :bigserial, comment: 'ID'
      t.string :name, null: false, limit: 100, comment: 'ユーザ名称'
      t.string :password, null: false, limit: 250, comment: 'パスワード'
      t.string :profile, limit: 2000, comment: 'プロファイル'
      t.datetime :created_at, null: false, default: ->{ "CURRENT_TIMESTAMP" }, comment: '作成日時'
      t.datetime :updated_at, null: false, default: ->{ "CURRENT_TIMESTAMP" }, comment: '更新日時'
      t.datetime :deleted_at, comment: '削除日時'
    end
  end
end
