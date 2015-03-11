# Copy the local awe user if possible.

if [ -e ~/.awe/Environment.cfg ]
then
    LINE_AWE_PASSWD_HOST=$(grep "^database_password" ~/.awe/Environment.cfg)
    LINE_AWE_PASSWD_GUEST=$(grep "^database_password" lxc_evis/home/evis/.awe/Environment.cfg)
    sed -i "s|$LINE_AWE_PASSWD_GUEST|$LINE_AWE_PASSWD_HOST|" lxc_evis/home/evis/.awe/Environment.cfg
    LINE_AWE_USER_HOST=$(grep "^database_user" ~/.awe/Environment.cfg)
    LINE_AWE_USER_GUEST=$(grep "^database_user" lxc_evis/home/evis/.awe/Environment.cfg)
    sed -i "s|$LINE_AWE_USER_GUEST|$LINE_AWE_USER_HOST|" lxc_evis/home/evis/.awe/Environment.cfg
fi
