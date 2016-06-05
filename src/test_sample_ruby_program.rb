require "minitest/autorun"
require "./sample_ruby_program"

class TestSampleRubyProgram < Minitest::Test
	def setup
		@sampleRuby = SampleRubyProgram.new
	end

	def test_puts_prints_five_times
		out = capture_io do
			@sampleRuby.say_annoying_greeting
		end

		assert_equal [
			"Hello World\nHello World\nHello World\nHello World\nHello World\n",
			""
		], out
	end
	
end