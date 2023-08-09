lambda = lambda {}
lambda = ->() {}
some_lambda_function = lambda { puts "Welcome to TutorialsPoint!"}

puts some_lambda_function.class

some_lambda_function = lambda { puts "Welcome to TutorialsPoint!"}

some_lambda_function.[]
some_lambda_function.call
some_lambda_function.()
some_lambda_function.===

some_lambda_function = lambda { | name | puts "Welcome to TutorialsPoint " + name}

some_lambda_function.call("Mukul")