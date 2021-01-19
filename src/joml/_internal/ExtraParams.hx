package joml._internal;

import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.io.Path;

class ExtraParams {
    public static function includeJars(): Void {
        var getPath = function( ?pos:haxe.PosInfos ) {
            return Path.directory(pos.fileName);
        }

        Compiler.addNativeLib(getPath() + "/jars/common");
    }
}
