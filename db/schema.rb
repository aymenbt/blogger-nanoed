# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20191109052736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "author"
    t.integer "page_count"
    t.date "published_at"
    t.bigint "nante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["nante_id"], name: "index_articles_on_nante_id"
  end

  create_table "comment_articles", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comment_articles_on_article_id"
  end

  create_table "commentaires", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.bigint "nante_id"
    t.bigint "article_id"
    t.bigint "restau_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_commentaires_on_article_id"
    t.index ["nante_id"], name: "index_commentaires_on_nante_id"
    t.index ["restau_id"], name: "index_commentaires_on_restau_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.bigint "nante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nante_id"], name: "index_comments_on_nante_id"
  end

  create_table "evenements", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "nantes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "author"
    t.integer "page_count"
    t.date "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "recomments", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.bigint "restau_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restau_id"], name: "index_recomments_on_restau_id"
  end

  create_table "restaus", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "author"
    t.integer "page_count"
    t.date "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  add_foreign_key "articles", "nantes"
  add_foreign_key "comment_articles", "articles"
  add_foreign_key "commentaires", "articles"
  add_foreign_key "commentaires", "nantes"
  add_foreign_key "commentaires", "restaus"
  add_foreign_key "comments", "nantes"
  add_foreign_key "recomments", "restaus"
end
