 
   create function plruby_call_handler() returns language_handler
   as '/home/ts/ruby/devel/plruby-0.4.7/src/plruby.so'
   language 'C';
 
   create trusted procedural language 'plruby'
	handler plruby_call_handler
        lancompiler 'PL/Ruby';
