require 'rubygems'
require 'geminstaller'

# Specify --geminstaller-output=all and --rubygems-output=all for maximum debug logging
args = ' --sudo --exceptions --geminstaller-output=all --rubygems-output=stderr'

# The 'install' method will auto-install gems as specified by the args and config
GemInstaller.install(args)

# The 'autogem' method will automatically add all gems in the GemInstaller config to your load path,
# using the rubygems 'gem' method.  Note that only the *first* version of any given gem will be loaded.
GemInstaller.autogem(args)
