<?php
use Samizdam\SplTypesTest\FooEnum;

require_once __DIR__ . '/vendor/autoload.php';

$foo1 = new FooEnum(FooEnum::FOO);
$foo2 = new FooEnum(FooEnum::FOO);
var_dump($foo2, $foo2);
