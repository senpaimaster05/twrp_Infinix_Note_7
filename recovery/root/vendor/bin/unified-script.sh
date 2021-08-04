#!/sbin/sh

load_E6746()
{
    resetprop "ro.product.model" "IN1"
    resetprop "ro.product.name" "E6746"
    resetprop "ro.product.system.model" "IN1"
    resetprop "ro.product.device" "E6746"
    resetprop "ro.product.vendor.device" "E6746"
}

load_E7746()
{
    resetprop "ro.product.model" "IN_Note1"
    resetprop "ro.product.name" "E7746"
    restprop "ro.product.system.model" "IN_Note1"
    resetprop "ro.product.device" "E7746"
    resetprop "ro.product.vendor.device" "E7746"
}
	
unknown=$(getprop ro.mmx.sku.name)
echo $unknown

case $unknown in
    "E6746")
        load_E6746
        ;;
    "E7746")
        load_E7746
        ;;
esac

exit 0
	
	 
