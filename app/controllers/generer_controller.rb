require 'pwgen'

class GenererController < ApplicationController
  def home

    @option_h = {
      option1: {skip_lower_case: true}
    }

    @var1 = [skip_lower_case: true]

    var2 = true

    # Pwgen::Password.configure()
    @generer = Pwgen::Password.generate_password(12, digits: 2)


  end
end

# :skip_lower_case [true | false] (Default: false) - No lower case letters in password.
# :skip_upper_case [true | false] (Default: false) - No upper case letters in password.
# :skip_digits [true | false] (Default: false) - No digits in password.
# :skip_symbols [true | false] (Default: false) - No symbols in password.
# :dont_exclude_unfrieldly_chars [true | false] (Default: false) - Remove 'unfriendly characters' ($ S s 5 B b 8 | I i o 0 1 l O !)
# :skip_url_unsafe [true | false] (Default: false) - Remove URL unsafe characters ($ & + , / : ; = ? @ < > # % { } | ^ ~ [ ] \ " `)
# :digits - Force a specific minimum number of digits in the password.
# :symbols - Force a specific minimum number of symbols in the password.
# :skip_phonetic [true | false] (Default: false) - Skip the creation of the phonetic password.
#  Pwgen::Password.configure(:skip_lower_case => true, :digits => 4)
