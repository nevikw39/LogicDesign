# LogicDesign
## 11020EECS101002

This is the repo in which my lab assignments of Logic Design, 2022 spring semester are.

In the course, students would be provided with a CAD workstation account. They would need to write some Verilog modules and simulate, synthesis them. The workstation is like a sort of computer cluster: there's no license on login node, so one have to `ssh` to other nodes; in addition, file system is shared across nodes.

## Connect to the Workstation by VS Code

I personally perfer to connect to the workstation by **VS Code** with _Remote SSH_ extension. For more detail, you might refer to the official [document](https://code.visualstudio.com/docs/remote/ssh). We need some extra works due to some annoying reasons:

0. Copy your `ssh` key to the workstation so that you won't need to type your password each time you log in. If you don't have a key, [generate one](https://blog.gtwang.org/linux/linux-ssh-public-key-authentication/). 
1. Update your `ssh` config, which is at `<your home directory>/.ssh/config`, i.e. `~/.ssh/config` if Linux or macOS, `%USERPROFILE%\.ssh\config` if Windows.
  ```
  # login node
  Host cad
    Hostname nthucad.cs.nthu.edu.tw
    User u<your student ID>
  
  Host cad_ic21
    Hostname ic21
    ProxyJump cad         # We have to connect to the node via login node
    User u<your student ID>
    ForwardX11Trusted yes # In case you need to open `nWave` or `Design Vision`, etc.
  
  Host cad_ic22
    Hostname ic22
    ProxyJump cad
    User u<your student ID>
    ForwardX11Trusted ye
  ```
2. Add [.tcshrc](.tcshrc) to your home directory in the workstation. This patch is required because either **VS Code** doesn't `source` the login script or it doesn't `export` _environment variables_ to interactive terminals.
3. Now you can connect to `cad_ic21` or `cad_ic22` in **VS Code** and find that `ncverilog` works!

## Lab Assignments

| Labs | Name & Report | Score |
|:-:|:-:|:-:|
| 1 | [Fibonacci Number Detector](lab1/docs/report.pdf) | 96 |
| 2 | [ALU and Carry-Lookahead Adder](lab2/docs/report.pdf) | 96 |
| 3 | [Pattern Matching](lab3/docs/report.pdf) | 98 |
