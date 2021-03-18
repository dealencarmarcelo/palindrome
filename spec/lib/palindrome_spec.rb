require 'spec_helper'

describe 'palindrome' do
    context 'with valid parameters' do
        it 'when given a simple string palindrome, return true' do
            expect(palindrome?('ana')).to be_truthy
        end

        it 'when given a phrase palindrome, return true' do
            expect(palindrome?('A mala nada na lama')).to be_truthy
        end

        it 'when given omissíssimo, return true' do
            expect(palindrome?('omissíssimo')).to be_truthy
        end

        it 'when given rodador, return true' do
            expect(palindrome?('rodador')).to be_truthy
        end

        it 'when given a phrase palindrome with pontuation and accents, return true' do
            expect(palindrome?('Olé! Maracujá, caju, caramelo!')).to be_truthy
        end

        it "when given 'A grama é amarga.', return true" do
            expect(palindrome?('A grama é amarga.')).to be_truthy
        end

        it 'when given a string of numbers, return true' do
            expect(palindrome?('12344321')).to be_truthy
        end
    end

    context 'with invalid parameters' do
        it 'when given a simple string that is not a palindrome, return false' do
            expect(palindrome?('teste técnico')).to be_falsey
        end

        it "when given 'Hello Word', return false" do
            expect(palindrome?('Hello Word')).to be_falsey
        end

        it "when given 'Ponto Mais', return false" do
            expect(palindrome?('Ponto Mais')).to be_falsey
        end

        it 'when given integer values, return false' do
            expect(palindrome?(123456)).to be_falsey
        end
    end
end