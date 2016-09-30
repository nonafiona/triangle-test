# a test does two things:
# do something
# check the results
require "minitest/autorun"
require "minitest/reporters"
require "./lib/nice"
class TestTriangle <Minitest::Test
    def test_constructor
        assert Triangle.new([])

    end

    def test_valid
        #orig
        valid_triangle = Triangle.new([1,2,2])
        assert valid_triangle.valid?, "valid square detected as invalid"

        #inverse possibility
        invalid_triangle = Triangle.new([2,1,100])
        assert !invalid_triangle.valid?, "invalid square detected as valid"
    end

    def test_is_right
        right_triangle = Triangle.new([3,4,5])
        assert rightTriangle.right?

        random_triangle = Triangle.new([1,1,1])
        assert !random_triangle.right?
    end


    def test_is_equilateral

        random_triangle = Triangle.new([1,1,4])
        assert !random_triangle.equilateral?
    end
end
