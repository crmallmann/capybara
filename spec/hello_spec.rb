
describe 'Meu primeiro script' do
    
    it 'visitar a página' do
        visit "https://www.google.com"
        expect(page.title).to eql "Google"
    end
end