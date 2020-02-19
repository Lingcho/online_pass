# README

This README would normally document whatever steps are necessary to get the
application up and running.

Basic password generation
  require 'pwgen'

  Pwgen::Password.generate_password(length)
  puts Pwgen::Password.password
  puts Pwgen::Password.phonetic_password
There are a number of options that can be password:

  Pwgen::Password.configure(options)

:skip_lower_case [true | false] (Default: false) - No lower case letters in password.
:skip_upper_case [true | false] (Default: false) - No upper case letters in password.
:skip_digits [true | false] (Default: false) - No digits in password.
:skip_symbols [true | false] (Default: false) - No symbols in password.
:dont_exclude_unfrieldly_chars [true | false] (Default: false) - Remove 'unfriendly characters' ($ S s 5 B b 8 | I i o 0 1 l O !)
:skip_url_unsafe [true | false] (Default: false) - Remove URL unsafe characters ($ & + , / : ; = ? @ < > # % { } | ^ ~ [ ] \ " `)
:digits - Force a specific minimum number of digits in the password.
:symbols - Force a specific minimum number of symbols in the password.
:skip_phonetic [true | false] (Default: false) - Skip the creation of the phonetic password.
    Pwgen::Password.configure(:skip_lower_case => true, :digits => 4)
You can also pass the options parameter to the 'generate_password' method to override the settings for a specific password creation.

Executable
There is also an executable linked to this gem which allows you to generate passwords within bash scripts etc.

Usage: pwgen
    -h, --help                       Display this screen
    -c, --show-config                Show the configuration
    -d, --digits string              Minimum number of digits to use. (default: random)
    -l, --length string              The length of the password (default 12)
    -s, --symbols string             Minimum number of symbols to use. (default: random)
    -C, --skip-confusables           Skip the use of letters which are easily confused e.g. 1 and l in passwords
    -D, --skip-digits                Skip the use of digits in passwords
    -L, --skip-lower-case            Skip the use of lower case letters in passwords
    -P, --skip-phonetic              Skip creation of the phonetic password
    -S, --skip-symbols               Skip the use of symbols in passwords
    -U, --skip-upper-case            Skip the use of upper case letters in passwords
    -W, --skip-url-unsafe            Skip the use of url (Web) unsafe characters in passwords
Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

Testing
For local testing make sure that you run bundle exec rspec spec and then rake install to install the gem locally.

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/AntiPhotonltd/password_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

License
The gem is available as open source under the terms of the MIT License.

Code of Conduct
Everyone interacting in the Pwgen project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
