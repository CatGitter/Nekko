require 'rails_helper'

describe Cat do
  before do
    @cat = FactoryBot.build(:cat)
    sleep (0.5)
  end

  describe '新猫投稿機能' do
    context '新しい猫の紹介がうまくいくとき' do
      it 'image、name、age、breed、prefecture、sex、vaccine、castration、personality、health、adopt_method、remarksが存在すれば紹介できる' do
        expect(@cat).to be_valid
      end

      it 'remarksが空でも紹介できる' do
        @cat.remarks = ''
        expect(@cat).to be_valid
      end
    end

    context '新しい猫の紹介がうまくいかないとき' do
      it 'imageが空では紹介できない' do
        @cat.image = nil
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameが空では紹介できない' do
        @cat.name = ''
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Name can't be blank")
      end

      it 'ageが空では紹介できない' do
        @cat.age = ''
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Age can't be blank")
      end

      it 'breedが空では紹介できない' do
        @cat.breed = ''
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Breed can't be blank")
      end

      it 'prefectureが空では紹介できない' do
        @cat.prefecture_id = 1
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'sexが空では紹介できない' do
        @cat.sex_id = 1
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Sex can't be blank")
      end

      it 'vaccineが空では紹介できない' do
        @cat.vaccine_id = 1
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Vaccine can't be blank")
      end

      it 'castrationが空では紹介できない' do
        @cat.castration_id = 1
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Castration can't be blank")
      end

      it 'personalityが空では紹介できない' do
        @cat.personality = ''
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Personality can't be blank")
      end

      it 'healthが空では紹介できない' do
        @cat.health = ''
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Health can't be blank")
      end

      it 'adopt_methodが空では紹介できない' do
        @cat.adopt_method = ''
        @cat.valid?
        expect(@cat.errors.full_messages).to include("Adopt method can't be blank")
      end

      it 'userが紐づいていなければ紹介できない' do
        @cat.user = nil
        @cat.valid?
        expect(@cat.errors.full_messages).to include('User must exist')
      end
    end
  end
end
