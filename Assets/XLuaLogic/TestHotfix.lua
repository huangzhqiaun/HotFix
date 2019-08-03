--require "util"
print("test hotfix")

TestHotfix = {}

local this = TestHotfix;

function TestHotfix.Add(a, b)
    local test = CS.XLuaFramework.TestHotfix;
    print(typeof(test))
    print(test.value)
    local ogj = test();
    print("add result======>" .. test.Add(a, b));
    print("mul result======>" .. ogj:Mul(a, b));
end

function TestHotfix.DOHotfix()
    xlua.hotfix(CS.XLuaFramework.TestHotfix, {
        Add = function(a, b)
            return a + b;
        end;
        Mul = function(self, a, b)
            return a * b;
        end })
end