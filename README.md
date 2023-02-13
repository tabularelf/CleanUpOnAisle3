# CleanUpOnAisle3 v1.0.0
 A small extension that autocleans on runtime changes VM to YYC or vice versa. (Windows IDE currently supported)
## Setup:

I'd recommend creating an `.gitingore` file and include this.
```
.cuta3
```
As `.cuta3` will generate within the project directory. `.cuta3` is a temporary file and should be respected as such. (It's kept purely for stashing results of the last runtime state)

Download the latest release from [here.](https://github.com/tabularelf/CleanUpOnAisle3/releases) Once downloaded, head over to GameMaker and import the extension under Tools -> Import Local Package. Hit "Add All" and press "OK".
No additional setup is required! The first time run will clean your project automatically (as to stash the last runtime state)
After that, any future runs will only occur an autoclean whenever the switch from VM to YYC (or vice versa).
