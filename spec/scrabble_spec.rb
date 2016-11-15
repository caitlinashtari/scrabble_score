require('rspec')
require('pry')
require('scrabble')

describe('String#scrabble') do
  it("returns a scrabble score of 1") do
    expect(("A").scrabble()).to(eq(1))
  end

  it("returns a scrabble score of 1 for any of these letters, A, E, I, O, U, L, N, R, S, T") do
    expect("AEIOULNRST".scrabble()).to(eq(10))
  end

  it("returns a scrabble score of 2 for each of the letters D, G") do
    expect("DG".scrabble()).to(eq(4))
  end

  it("returns a scrabble score of 3 for each of the letters B,C,M,P") do
    expect("BCMP".scrabble()).to(eq(12))
  end

  it("returns a scrabble score of 4 for each of the letters F, H, V, W, Y") do
    expect("FHVWY".scrabble()).to(eq(20))
  end

  it ("returns a scrabble score for a whole world") do
    expect("zebraqueen".scrabble()).to(eq(30))
  end
end
