local lockTable = require(script:WaitForChild("lockTable"))

local react = require(script:WaitForChild("react"))

local addons = script:WaitForChild("addons")
local createReactHook = require(addons:WaitForChild("createReactHook"))(react)

local oneframe = require(script:WaitForChild("oneframe"))

local import = require(script:WaitForChild("import"))
local util = require(script:WaitForChild("util"))

local rodbv1 = require(script:WaitForChild("rodb v1"))
export type rodbv1 = typeof(rodbv1)

local exon = {

    oneframe = oneframe,
    react = react,

    -- Packages
    rednet = require(script:WaitForChild("rednet")),
    rodb = require(script:WaitForChild("rodb")),

    -- Utils and Stuff
    controllers = require(script:WaitForChild("controllers")),
    util = util,

    -- Addons,
    addons = {
        createReactHook = createReactHook,
        tidy = require(addons:WaitForChild("tidy")),
        input = require(addons:WaitForChild("input")),
    },

    -- Import Stuff
    import = import,
}

export type exon = typeof(exon)

lockTable(exon, "exon", {
    indexMessage = "(%s) is not a valid member of exon!"
})

return exon