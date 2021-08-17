# Teohook Scripting Wrapper
This is a wrapper for the teohook scripting functionality.

## How to use
To use this, you must copy all of the code from the `wrapper.lua` file and put it at the top of your file.

## Usage
### Join World
* Params: (string worldName)
```lua
joinWorld("start") -- This will teleport you to the world "start".
```
### Drop Item
* Params: (int itemID, int count)
```lua
dropItem(2, 15) -- This will drop 15 of the specific item specified, in this case itemID 2 is dirt, so this will drop 15 dirt.
```
