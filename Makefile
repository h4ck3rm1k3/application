
pkg:
	gem build *.gemspec
	gem install --user-install *.gem
	bundle exec rake build

parse:
	ruby parsetrace.rb

run_test:
	strace -e open -f -o trace.txt bundle exec chef-solo --config test_files/solo.rb --log_level debug --force-formatter --no-color --json-attributes test_files/dna.json

doit :
#	git submodule init
#	git submodule update
	bundle install
	bundle exec berks install
	bundle exec rake2.1 build
