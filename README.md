# Git Project Initialization Script

This project contains a Bash script to initialize a new Git project on UNIX/bash/macOS. The script automates the process of creating a new project directory, initializing a Git repository, creating a `README.md` file, a `.gitignore` file, and making the initial commit.

## Initialize GIT project (init_git_project.sh)

1. **Run the script**:
```
./init_git_project.sh <project_name>
```
2. **Navigate to project directory**:
```
cd <project_name>
```
3. **Run setup remote repository script**:
```
./setup_remote.sh https://github.com/<git_username>/<project_name>.git
```

## (For Mac only) Print CPU, memory, disk space, GPU, and macOS version information (mac_specs.sh)

1. **Run the script**:
```
./mac_specs.sh
```
2. **Sample Output**:
```
=== Mac Specifications ===
CPU Information:
Apple M1
Memory Information (in GB):
8 GB
Disk Space Information:
Filesystem        Size    Used   Avail Capacity iused ifree %iused  Mounted on
/dev/disk3s1s1   228Gi    13Gi   114Gi    11%    394k  1.2G    0%   /
devfs            225Ki   225Ki     0Bi   100%     778     0  100%   /dev
/dev/disk3s6     228Gi   8.0Gi   114Gi     7%       8  1.2G    0%   /System/Volumes/VM
/dev/disk3s2     228Gi    11Gi   114Gi    10%    1.4k  1.2G    0%   /System/Volumes/Preboot
/dev/disk3s4     228Gi   627Mi   114Gi     1%     289  1.2G    0%   /System/Volumes/Update
/dev/disk2s2     500Mi   6.0Mi   482Mi     2%       1  4.9M    0%   /System/Volumes/xarts
/dev/disk2s1     500Mi   6.1Mi   482Mi     2%      32  4.9M    0%   /System/Volumes/iSCPreboot
/dev/disk2s3     500Mi   748Ki   482Mi     1%      71  4.9M    0%   /System/Volumes/Hardware
/dev/disk3s5     228Gi    80Gi   114Gi    42%    1.6M  1.2G    0%   /System/Volumes/Data
map auto_home      0Bi     0Bi     0Bi   100%       0     0     -   /System/Volumes/Data/home
/dev/disk3s1     228Gi    13Gi   114Gi    11%    404k  1.2G    0%   /System/Volumes/Update/mnt1
/dev/disk5s1      16Gi    16Gi   469Mi    98%    524k  4.8M   10%   /Library/Developer/CoreSimulator/Volumes/iOS_21F79
GPU Information:
      Chipset Model: Apple M1
macOS Version:
ProductName:		macOS
ProductVersion:		14.2.1
BuildVersion:		23C71
Detailed System Information:
Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: MacBookAir10,1
      Model Number: MGN63ZP/A
      Chip: Apple M1
      Total Number of Cores: 8 (4 performance and 4 efficiency)
      Memory: 8 GB
      System Firmware Version: 10151.61.4
      OS Loader Version: 10151.61.4
      Serial Number (system): HXJLK79K1WFV
      Hardware UUID: 27CFFAFB-E654-56DD-9DD4-F68E02FEF875
      Provisioning UDID: 00008103-0006645E3468A01E
      Activation Lock Status: Enabled

=== End of Specifications ===
```

## Contribution

Contributions are welcome! If you have a useful Bash script or improvements to existing scripts, feel free to fork the repository, create a new branch, and submit a pull request. Please ensure that your contributions are well-documented and adhere to the project’s coding standards.


