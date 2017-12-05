#!/data/data/com.termux/files/usr/bin/sh

ag -c "/bin/sh" | tr -d ":[0-9]" | xargs sed -i "s/\/bin\/sh/\/data\/data\/com\.termux\/files\/usr\/bin\/sh/g"
