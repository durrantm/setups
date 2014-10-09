export ORACLE_SPARSE='zipcar_base/nokia548@snap96'
export ORACLE_LUSH='zipcar/nokia548@snap96'
export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2
export ORACLE_HOME=/opt/oracle/instantclient_11_2
export ORACLE_DEV_POOLING_USERNAME=POOLING_API
export ORACLE_DEV_POOLING_PASSWORD=E4T_kGG9
export ORACLE_TEST_POOLING_USERNAME=pooling_api_base
export ORACLE_TEST_POOLING_PASSWORD=Yih7w_wH
export ORACLE_DEV_USERNAME=zipcar
export ORACLE_DEV_PASSWORD=nokia548
export ORACLE_TEST_USERNAME=zipcar_base
export ORACLE_TEST_PASSWORD=nokia548
export ORACLE_CI_DB=snap96
#export JRUBY_OPTS="-J-XX:MaxPermSize=128m -J-Xmx512m --headless"
export JRUBY_OPTS="-J-XX:MaxPermSize=256m -J-Xmx1g --headless" # 8/15/2014 to try and get core to not fail after 30 mins.
export TNS_ADMIN=/etc
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export TORQUEBOX_HOME=~/Downloads/torquebox-2.3.2
export JBOSS_HOME=$TORQUEBOX_HOME/jboss
export JRUBY_HOME=$TORQUEBOX_HOME/jruby
export PATH=$JRUBY_HOME/bin:$PATH
export ANDROID_HOME=$HOME/Downloads/android-sdk-macosx
export ANDROID_SDK=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
. ~/.bashrc
export MYPW=LDV7u0uL2FIjmXR+cmhgnA==
export TEST_DIR=/Users/mdurrant/zipcar
alias checkticket="rvm use ruby-2.1.1 && cd /Users/mdurrant && bundle install --without zcmain && clear && ruby ./checkticket.rb"
alias merge="rvm use ruby-2.1.1 && cd /Users/mdurrant && bundle install --without zcmain && clear && ruby ./merge.rb"
alias testticket="rvm use ruby-2.1.1 && cd /Users/mdurrant && bundle install --without zcmain && clear && ruby ./testticket.rb"
alias mp="rvm ruby-2.1.1 && cd /Users/mdurrant && bundle install --without zcmain && clear && ruby ./mergepush.rb"
