require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe "ユーザー新規登録" do
    context '新規登録できる場合' do
      it 'name,email,password,password_confirmation,company_name,position,occupation が存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できない場合' do  
      it "nameが空だと登録できない" do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")  
      end
      it "emailが空では登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "重複したemailが存在する場合は登録できない" do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it "emailは「@」を含まないと登録ができない" do
        @user.email = 'kkkk'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが6文字以下では登録できない' do
        @user.password = '12a'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordは数字のみだと登録できない' do
        @user.password = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password は6文字以上かつ英数字をそれぞれ含めてください')
      end
      it 'passwordは英字のみだと登録できない' do
        @user.password = 'abcdefg'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password は6文字以上かつ英数字をそれぞれ含めてください')
      end
      it 'passwordは全角文字を含むと登録できない' do
        @user.password = '12ab英語'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password は6文字以上かつ英数字をそれぞれ含めてください')
      end
      it 'passwordは「確認用」が空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordは「確認用」と一致しないと登録できない' do
        @user.password_confirmation = '123'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '会社名が空では登録できない' do
        @user.company_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Company name can't be blank")
      end
      it '役職が空では登録できない' do
        @user.position = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Position can't be blank")
      end
      it '職種が空では登録できない' do
        @user.occupation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Occupation can't be blank")
      end
    end
  end
end
