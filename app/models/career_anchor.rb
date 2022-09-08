class CareerAnchor < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :one_to_fours

  validates :question_1, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_2, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_3, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_4, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_5, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_6, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_7, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_8, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_9, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_10, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_11, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_12, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_13, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_14, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_15, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_16, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_17, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_18, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_19, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_20, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_21, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_22, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_23, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_24, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_25, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_26, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_27, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_28, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_29, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_30, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_31, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_32, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_33, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_34, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_35, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_36, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_37, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_38, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_39, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
  validates :question_40, presence: true,numericality: { other_than: 0, message: "can't be blank" } 
end
