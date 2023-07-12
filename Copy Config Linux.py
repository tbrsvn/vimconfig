import subprocess
username = subprocess.check_output(['whoami']).strip()
user = username.decode()
subprocess.run(["rm", "-rf", "/home/{user}/.config/nvim"])
subprocess.run(["cp", "-r", "nvim", f"/home/{user}/.config/"])
