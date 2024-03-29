# Teohook Scripting Wrapper
This is a wrapper for the scripting functionality that teohook has.

## Teohook Scripting Documentation
If you want to check out the documentation for teohook's scripting, you can click [here](docs)

## How to use
To use this, you must copy all of the code from the `wrapper.lua` file and put it at the top of your file.

## Functions

### Join World
* params: (string worldName)
```lua
-- This will teleport you to the world "start".
joinWorld("start")
```


### Drop Item
* params: (int itemID, int count)
```lua
-- This will drop 15 of the specific item specified, in this case itemID 2 is dirt, so this will drop 15 dirt.
dropItem(2, 15)
```


### Face Side
* params: (string side)
* possible sides: "right", "left"
```lua
-- This will make you look to the left side (server-sided, you won't see it on your end.)
faceSide("left")
```


### Wrench Tile
* params: (int x, int y)
```lua
-- This will wrench the block that is at x-75, y-25
wrenchTile(75,25)
```


### Hit Tile
* params: (int x, int y)
```lua
-- This will hit the block that is at x-75, y-25.
hitTile(75, 25)
```


### Place Tile
* params: (int id, int x, int y)
```lua
-- This will place a dirt block (id = 2) at x-75, y-25.
placeTile(2, 75, 25)
```