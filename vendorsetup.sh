for device in $(cat vendor/vrtoxin/vrtoxin.devices)
do
add_lunch_combo vrtoxin_$device-user
add_lunch_combo vrtoxin_$device-userdebug
done
