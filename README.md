# Say. My. Name.
A Godot game to help me remember names and faces.

## Todo
- [x] get keyboard input
- [x] dynamically create character
- [ ] Character
    - [ ] set origin (for label)
    - [ ] animate
    - [x] move from left to right
    - [x] de-spawn
    - [ ] swap `head` on instantiation
- [ ] Typing / Label
    - [ ] position correctly with character
    - [ ] style with background (bbcode)
    - [ ] highlight current letter
    - [ ] `_____` -> `wal___`
    - [ ] penalty if not hit before de-spawn
- [ ] load local photos and names 
- [x] rotate through names

## Optional Todos
- [ ] time limit
- [ ] animation: scale image and cycle through happy (say!), neutral (my!), angry (name!) shake
- [ ] score / persistent scoreboard

## Useful
- YT Tutorial Typing Game by jmbiv: [Part 1](https://www.youtube.com/watch?v=qRPI_c9qI1o), [Part 2](https://www.youtube.com/watch?v=CoLRvfk6tbk), Part 3
- YT by Queble [Using constructors when instantiating scenes](https://www.youtube.com/watch?v=u9aMR50yjCE), but I'm wondering why he isn't using `_init()` - maybe this is the reason: [PackedScenes can only be called with `instantiate()`](https://docs.godotengine.org/en/latest/tutorials/scripting/resources.html#loading-scenes)

