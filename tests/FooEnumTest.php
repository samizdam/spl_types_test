<?php

namespace Samizdam\SplTypesTest;

use PHPUnit\Framework\TestCase;

/**
 * @author samizdam <samizdam@inbox.ru>
 */
class FooEnumTest extends TestCase
{

    public function testEquals()
    {
//        echo '';
//        var_dump(get_loaded_extensions());
        $foo1 = new FooEnum(FooEnum::FOO);
        $foo2 = new FooEnum(FooEnum::FOO);
//        $this->assertEquals($foo1, $foo2);
    }

}