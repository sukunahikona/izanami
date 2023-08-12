# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_12_045702) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", id: { comment: "ID" }, force: :cascade do |t|
    t.string "name", limit: 100, null: false, comment: "ユーザ名称"
    t.string "password", limit: 250, null: false, comment: "パスワード"
    t.string "profile", limit: 2000, comment: "プロファイル"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false, comment: "作成日時"
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false, comment: "更新日時"
    t.datetime "deleted_at", comment: "削除日時"
  end

end
