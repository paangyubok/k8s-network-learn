1. execute `net.sh` to create a veth pair. `veth0` is in root namespace and `veth1` is in `netns1` namespace
2. run `sudo ip netns exec netns1 nc -l 1234` in one terminal
3. run `nc 10.1.1.1 1234` in another terminal and then say hello, you can receive hello in previous terminal