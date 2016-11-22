###############################################################################
# THIS IS FOR INTERNAL SELF-TESTING, CONSULT THE README FOR USAGE
###############################################################################
set -ex
cd tests
# Test that uploading to Coveralls works...
make coverage
# Test that local coverage reporting works...
unset TRAVIS
make coverage | grep -- 'Summary: 1/2 (50.00%)'
