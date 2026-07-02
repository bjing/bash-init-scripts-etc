# Desktop

## Gnome

### Extension Manager

Install and enable the following:

* Dock to Dash
* Appindicator and KStatusNotifierItem Support


### Window setup

Set min,max,close buttons to the left side

```sh
# On the left side
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# On the right side
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
```


# Virtualisation
Install the packages:

```sh
sudo dnf group install --with-optional virtualization
sudo systemctl enable --now libvirtd
```

Verify with:

```sh
 lsmod | grep kvm
```

For Windows VMs, also install VirtIO drivers:
```sh
sudo dnf install virtio-win
```

The driver ISO should be here: `/usr/share/virtio-win/virtio-win.iso`.
