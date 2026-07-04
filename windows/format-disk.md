# Format disk

If you're using the Lenovo/Windows recovery tool to put an OS image onto
a USB drive, but the disk can't be correctly used due to, for example, it was
poreviously formatted and used by a Linux system, the best solution is to 
re-partition and reformat the disk on Windows.

In Windows (VM): clean the USB with DiskPart

1. Open Command Prompt as Administrator inside Windows, then:

```
diskpart
```

2. Inside DiskPart:

```
list disk
```

3. Find the USB stick by size. Be very careful here. Then:

```
select disk N
clean
create partition primary
format fs=ntfs quick
assign
exit
```

Replace N with the USB disk number.

Then retry Lenovo Recovery Tool.