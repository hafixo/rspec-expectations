module RSpec
  module Matchers
    class Eql < BaseMatcher
      attr_reader :actual
      def matches?(actual)
        @actual = actual
        @actual.eql?(@expected)
      end

      def failure_message_for_should
        "\nexpected: #{@expected.inspect}\n     got: #{@actual.inspect}\n\n(compared using eql?)\n"
      end

      def failure_message_for_should_not
        "\nexpected: value != #{@expected.inspect}\n     got: #{@actual.inspect}\n\n(compared using eql?)\n"
      end

      def diffable?
        true
      end

      def description
        "eql #{@expected.inspect}"
      end
    end
  end
end