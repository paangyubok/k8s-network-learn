# add net namespace
ip netns add netns1
# list all network devices in netns1
ip netns exec netns1 ip link list
# set lo up in netns1
ip netns exec netns1 ip link set dev lo up

# add veth pair
ip link add veth0 type veth peer name veth1
# set veth1 to netns1
ip link set veth1 netns netns1

ip netns exec netns1 ifconfig veth1 10.1.1.1/24 up
ifconfig veth0 10.1.1.2/24 up