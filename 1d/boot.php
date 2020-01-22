<?php

error_reporting(0);

//autoloading the packages in the vendor folder.
require "vendor/autoload.php";

//setting up braintree credentials
Braintree_Configuration::environment('sandbox');
Braintree_Configuration::merchantId('fhqwwvt3c8jstksb');
Braintree_Configuration::publicKey('z3kjdymd7gmzt68t');
Braintree_Configuration::privateKey('a9d90d4174b818e0eb9a3227c21ad1ee');

//Booting Done.