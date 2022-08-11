class CreateCareerAnchors < ActiveRecord::Migration[6.0]
  def change
    create_table :career_anchors do |t|
      t.integer :question_1,       null: false
      t.integer :question_2,       null: false
      t.integer :question_3,       null: false
      t.integer :question_4,       null: false
      t.integer :question_5,       null: false
      t.integer :question_6,       null: false
      t.integer :question_7,       null: false
      t.integer :question_8,       null: false
      t.integer :question_9,       null: false
      t.integer :question_10,      null: false
      t.integer :question_11,      null: false
      t.integer :question_12,      null: false
      t.integer :question_13,      null: false
      t.integer :question_14,      null: false
      t.integer :question_15,      null: false
      t.integer :question_16,      null: false
      t.integer :question_17,      null: false
      t.integer :question_18,      null: false
      t.integer :question_19,      null: false
      t.integer :question_20,      null: false
      t.integer :question_21,      null: false
      t.integer :question_22,      null: false
      t.integer :question_23,      null: false
      t.integer :question_24,      null: false
      t.integer :question_25,      null: false
      t.integer :question_26,      null: false
      t.integer :question_27,      null: false
      t.integer :question_28,      null: false
      t.integer :question_29,      null: false
      t.integer :question_30,      null: false
      t.integer :question_31,      null: false
      t.integer :question_32,      null: false
      t.integer :question_33,      null: false
      t.integer :question_34,      null: false
      t.integer :question_35,      null: false
      t.integer :question_36,      null: false
      t.integer :question_37,      null: false
      t.integer :question_38,      null: false
      t.integer :question_39,      null: false
      t.integer :question_40,      null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
