return turtle and {
    definitions = {
        data = {
            pos = {0, 0, 0},
            rot = 0
        },
        save = function(self, path)
            
        moveUp = function(self)
            if turtle.up() then
                self.data.pos[2] = self.data.pos[2] + 1
                return true
            end
            return false
        end