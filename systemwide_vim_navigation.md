## Capslock + HJKL to arrow keys
1. Create ~/.Xmodmap and put this inside:
```
clear Lock 
keycode 66 = ISO_Level3_Shift
```
2. Add Left, Down, Up, Right as a third item to the h,j,k,l key entries in /usr/share/X11/xkb/symbols/us (the first section):
```
key { [ h, H, Left, Left ] }; 
key { [ j, J, Down, Down ] };
key { [ k, K, Up, Up ] }; 
key { [ l, L, Right, Right ] };
```
3. run ```xmodmap ~/.Xmodmap```

## Alternative: Capslock as Control and Control_L + HJKL to arrow keys
This is my current setup. I unmapped Control_L as a control key and use it as a special modifier (ISO_Level3_Shift), which corresponds to the third entry in the /usr/share/X11/xkb/symbols/us file for the hjkl mappings.

1. I modified the first stanza of /usr/share/X11/xkb/symbols/us like before:
```
key { [ h, H, Left, Left ] }; 
key { [ j, J, Down, Down ] };
key { [ k, K, Up, Up ] }; 
key { [ l, L, Right, Right ] };
```

2. Then I put this in my ~/.Xmodmap file:
```
clear Control
keycode 66 = Control_L
add Control = Control_L
add Control = Control_R
keycode 37 = ISO_Level3_Shift
keycode 66 is capslock and keycode 37 is left control
```

3. run ```xmodmap ~/.Xmodmap```

With this setup I can use arrows keys with Control_L + hjkl as well as skip over words with Control_L + caps + hl. Easy!

## Source
https://superuser.com/questions/96299/mapping-superhjkl-to-arrow-keys-under-x
