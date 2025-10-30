return {
    ["Minify"] = {
        LuaVersion = "Lua51";
        VarNamePrefix = "haku_";
        NameGenerator = "Haku";
        PrettyPrint = false;
        Seed = 0;
        Steps = {
            {
                Name = "ConstantArray";
                Settings = {
                    -- Treshold               = 1;
                    -- StringsOnly            = false;
                    -- Shuffle                = true;
                    -- Rotate                 = true;
                    -- LocalWrapperTreshold   = 0;
                    -- LocalWrapperCount      = 0;
                    -- LocalWrapperArgCount   = 10;
                    -- MaxWrapperOffset       = 65535;
                    Encoding               = "base64";
                };
            },
        }
    };
    ["Weak"] = {
        LuaVersion = "Lua51";
        VarNamePrefix = "";
        NameGenerator = "MangledShuffled";
        PrettyPrint = false;
        Seed = 0;
        Steps = {
            {
                Name = "Vmify";
                Settings = {
                    
                };
            },
            {
                Name = "ConstantArray";
                Settings = {
                    Treshold    = 1;
                    StringsOnly = true;
                };
            },
            {
                Name = "WrapInFunction";
                Settings = {

                };
            },
        }
    };
    ["Medium"] = {
        LuaVersion = "Lua51";
        VarNamePrefix = "";
        NameGenerator = "MangledShuffled";
        PrettyPrint = false;
        Seed = 0;
        Steps = {
            {
                Name = "EncryptStrings";
                Settings = {

                };
            },
            {
                Name = "AntiTamper";
                Settings = {
                    UseDebug = false;
                };
            },
            {
                Name = "Vmify";
                Settings = {
                    
                };
            },
            {
                Name = "ConstantArray";
                Settings = {
                    Treshold               = 1;
                    StringsOnly            = true;
                    Shuffle                = true;
                    Rotate                 = true;
                    LocalWrapperTreshold   = 0;
                };
            },
            {
                Name = "NumbersToExpressions";
                Settings = {

                };
            },
            {
                Name = "WrapInFunction";
                Settings = {

                };
            },
        }
    };
    ["Strong"] = {
        LuaVersion = "Lua51";
        VarNamePrefix = "";
        NameGenerator = "Haku";
        PrettyPrint = true;
        Seed = 0;
        Steps = {
            {
                Name = "EncryptStrings";
                Settings = {

                };
            },
            {
                Name = "AntiTamper";
                Settings = {
                    UseDebug = true;
                };
            },
            {
                Name = "Vmify";
                Settings = {
                    
                };
            },
            {
                Name = "ConstantArray";
                Settings = {
                    Treshold               = 1;
                    StringsOnly            = false;
                    Shuffle                = true;
                    Rotate                 = true;
                    LocalWrapperTreshold   = 0;
                    LocalWrapperCount      = 0;
                    LocalWrapperArgCount   = 10;
                    MaxWrapperOffset       = 65535;
                    Encoding               = "base64";
                };
            },
            {
                Name = "NumbersToExpressions";
                Settings = {

                };
            },
            {
                Name = "WrapInFunction";
                Settings = {

                };
            },
        }
    };
}