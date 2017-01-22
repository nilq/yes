class Lexer
  KEY_WORDS = [ "func", "if", "something", "while", "yes", "no", "nothing"]
  def tokenize (code)
    code.chomp!
    tokens = []

    current_indent = 0
    indent_stack   = []

    i = 0
    while i < code.size
      chunk = code[i .. -1]

      if identifier = chunk[/\A([a-z]\w*)/, 1]
        if KEY_WORDS.include?(identifier)
          tokens << [identifier.upcase.to_sym, identifier]
        else
          tokens << [:IDENTIFIER, identifier]
        end
        i += identifier.size
      elsif constant = chunk[/\A([A-Z]\w*)/, 1]
        tokens << [:CONSTANT, constant]
        i += constant.size
      elsif number = cunk[/\A([0-9]+)/, 1]
        tokens << [:NUMBER, number.to_i]
        i += number.size
      elsif string = chunk[/\A"([^"]*)"/, 1]
        tokens << [:STRING, string]
        i += string.size + 2 # exclude '"'
      elsif indent = chunk[/\A\:\n( +)/m, 1]
        if indent.size <= current_indent
          raise "Fucked up indentation, #{indent.size} indents, " +
                "expected > #{current_indent}"
        end

        current_indent = indent.size

        indent_stack.push(current_indent)

        tokens << [:INDENT, indent.size]
        i += indent.size + 2
      elsif indent = chunk[/\A\n( *)/m, 1]
        if indent.size == current_indent
          tokens << [:NEWLINE, "\n"]
        elsif indent.size < current_indent
          while indent.size < current_indent
            indent_stack.pop
            current_indent = indent_stack.last || 0
            tokens << [:DEDENT, indent.size]
          end
          tokens << [:NEWLINE, "\n"]
        else
          raise "Missing ':'"
        end
        i += indent.size + 1
      elsif operator = chunk[/\A(\|\||&&|==|!=|<=|>=)/, 1]
        tokens << [operator, operator]
        i += operator.size
      elsif chunk.match(/\A /)
        i += 1 # spaces are worth nothing
      else
        value = chunk[0, 1]
        tokens << [value, value]
        i += 1
      end
    end

    while indent = indent_stack.pop
      tokens << [:DEDENT, indent_stack.first || 0]
    end

    tokens
  end
end
