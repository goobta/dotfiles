######################
# Script to enable virtual displays on Intel X11 machines.
# Normally, this behavior is shut off, but this script enables
# the setting and works on reboot. 
#
# Script inspired from this Github solution:
# https://github.com/kbumsik/VirtScreen/issues/16#issuecomment-420711627
######################

import os

config = '''Section "Device"
    Identifier "intelgpu0"
    Driver "intel"
    Option "VirtualHeads" "1"
EndSection
'''

if __name__ == '__main__':
  if os.path.isdir('/etc/X11/xorg.conf.d'):
    folder = '/etc/X11/xorg.conf.d'
  elif os.path.isdir('/usr/share/X11/xorg.conf.d'):
    folder = '/usr/share/X11/xorg.conf.d'
  else:
    print('No directory found! Output written to local file')
    folder = '.'

  filename = folder + '/20-intel.conf'
  with open(filename, 'w') as fh:
    fh.write(config)

  print('Config written to {}'.format(filename))
