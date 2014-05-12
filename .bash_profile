export ORACLE_SPARSE='zipcar_base/nokia548@snap96'
export ORACLE_LUSH='zipcar/nokia548@snap96'
export ORACLE_DEV_USERNAME=zipcar
export ORACLE_DEV_PASSWORD=nokia548
export ORACLE_TEST_USERNAME=zipcar_base
export ORACLE_TEST_PASSWORD=nokia548
export JRUBY_OPTS="-J-XX:MaxPermSize=128m -J-Xmx512m --headless"
export TNS_ADMIN=/etc
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
. ~/.bashrc
