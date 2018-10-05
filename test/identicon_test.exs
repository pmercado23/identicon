defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "logic test" do
    assert 2 + 1 == 3
  end

  test "mirror test" do
    list = [1,2,3]
    assert Identicon.mirror_row(list) == [1,2,3,2,1]
  end

  test "hash test" do
    string = "test"
    assert Identicon.hash_input(string) == %Identicon.Image{
             color: nil, grid: nil,
             hex: [9, 143, 107, 205, 70, 33, 211, 115, 202, 222, 78, 131, 38, 39, 180, 246],
             pixel_map: nil
           }
  end

end
