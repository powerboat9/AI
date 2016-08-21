function getPositronic(file)
    local brain = {
        adjectives = {},
        verbs = {},
        nouns = {},
        rules = {
            motives = {},
            general = {}
        },
        genThinkRoutine = function(self)
            return coroutine.create(function()
                local cache = {}
                for i = 1, #general do
                    