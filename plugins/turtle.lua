return turtle and {
    definitions = {
        data = persist({
            pos = {0, 0, 0},
            rot = 0
        }),
        moveUp = function(self)
            if turtle.up() then
                self.data.pos[2] = self.data.pos[2] + 1
                return true
            end
            return false
        end,
        _move = function(self, isBack)
            if isBack and turtle.back() or turtle.forward() do
                local z = (self.data.rot == 0 and -1) or (self.data.rot == 2 and 1) or 0
                local x = (self.data.rot == 1 and 1) or (self.data.rot == 3 and -1) or 0
                if isBack then
                    x = 0 - x
                    z = 0 - z
                end
                self.data.pos[1], self.data.pos[3] = self.data.pos[1] + x, self.data.pos[3] + z
                return true
            end
            return false
        end,
        forward = function(self)
            self:_move()
        end,
        back = function(self)
            self:_move(true)
        end,
        turnRight = function(self)
            turtle.turnRight()
            self.data.rot = (self.data.rot + 1) % 4
        end,
        turnLeft = function(self)
            turtle.turnLeft()
            self.data.rot = (self.data.rot - 1) % 4
        end
    },
    def-inherit = turtle,
    lo
