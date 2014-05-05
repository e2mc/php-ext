<?php
print_r(get_loaded_extensions());
print_r(get_extension_funcs('e2mc'));
echo e2mc_test('My first php extension!');
echo confirm_e2mc_compiled('e2mc');
