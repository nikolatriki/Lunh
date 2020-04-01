RSpec.describe Tools::Allergies do
  describe 'determine whether or not they are allergic to given item' do
    it 'matches the allergen with the score' do
      allergies = Tools::Allergies.new(1)
      expect(allergies.allergic_to?('eggs')).to be true
    end

    it 'does not match the allergen with the score' do
      allergies = Tools::Allergies.new(1)
      expect(allergies.allergic_to?('peanuts')).to be false
    end

    it 'matches multiple allergens with one score' do
      allergies = Tools::Allergies.new(3)
      expect(allergies.allergic_to?('eggs')).to be true
      expect(allergies.allergic_to?('peanuts')).to be true
    end
  end

  describe 'list all the allergens' do
    it 'lists the allergens' do
      allergies = Tools::Allergies.new(3)
      expected = ['eggs', 'peanuts']
      expect(allergies.score_allergens).to match_array expected
    end

    it 'has no allergies' do
      allergies = Tools::Allergies.new(0)
      expect(allergies.score_allergens).to be_empty
    end

    it 'ignores scores not listed in ALLERGENS table' do
      allergies = Tools::Allergies.new(1025)
      expected = ['eggs']
      expect(allergies.score_allergens).to match_array expected
    end

    it 'ignores scores not listed in ALLERGENS table' do
      allergies = Tools::Allergies.new(1024)
      expected = []
      expect(allergies.score_allergens).to match_array expected
    end
  end
end
