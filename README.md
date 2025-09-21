Bulletproof Backups
===================
**Nowadays, data loss is a disaster! Prevent this with regular data backups performed *on site* for quick recovery and kept *offline* to prevent ransomware attacks.**

📋 Planning & Preparation
--------------------------
- [ ] **[Read the documents](docs/)** to plan your backup strategy, recommended is [3-2-1](docs/3-2-1.md).
- [ ] **[Buy hard drives](https://www.amazon.com/s?k=harddisk)** with enough capacity (use different vendors/models/types and maybe rugged ones).
- [ ] **Check the hard drives** for errors and use error-free ones only.
- [ ] **Label the hard drives** by writing an unique name and the disk size onto them (e.g. "*#1 Backups 4TB*")
- [ ] **Connect the hard drives** with the computer and rename the disks using the same name.
- [ ] **[Download this repo](https://github.com/fleschutz/bulletproof-backups/archive/refs/tags/v1.0.zip)** (5.8MB), unzip it, and copy it as 📁*bulletproof-backups* folder onto each hard drive.
- [ ] **Set up a reminder** in your digital calendar to perform the backup every day/week/month/etc.

💾 Backing Up Your Data
------------------------
- [ ] **Connect your mobile devices** to the PC and copy photos into the *Pictures* folder, documents into the *Documents* folder, and so on.
- [ ] **Connect the next hard drive** to the PC and open the 📁*bulletproof-backups* folder, then 📁*scripts*.
- [ ] **Execute the appropriate backup scripts** one by one, e.g. 📄*save_Home_dir.bat* to copy your home folder (containing your pictures, docs, etc.) to the drive at 📁*bulletproof-backups/DATA*
- [ ] **Disconnect the drive** *properly* and store it *carefully* in a *separate* and *secure* location.

🪂 Recovering Your Data
-----------------------
- [ ] **Get the hard drive** with the latest (!) backup. Check the [Logbook.csv](DATA/Logbook.csv) if in doubt.
- [ ] **Check the hard drive:** in case it's damaged read the [documents](docs/).
- [ ] **Connect the hard drive** to the PC and open the folders 📁*bulletproof-backups/DATA*.
- [ ] **Manually copy** (=overwrite files) or sync (=overwrite folder content) the missing or corrupted data back to the computer (but DON'T MOVE the data).
- [ ] **Disconnect the drive** *properly* and store it *carefully* in a *separate* and *secure* location again.

💡 Hints
--------
* **A full copy** is performed at first ("full backup", slow for big data), afterward only changes are copied ("incremental backup", extremely fast).
* **No encryption** is performed to keep it simple and robust. Use an encryption program and a vault to prevent unauthorized access.
* **[Logbook.csv](DATA/Logbook.csv)** gets updated automatically by the backup scripts (a table in .CSV format containing all the backup details).
* **Test your backups** regularly to ensure that they are working properly. Restore your backups to a test environment and check that all of your data can be accessed as expected.
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 Contributing
----------------
* Contributions, suggestions, and improvements are welcome!
* Open an Issue if you encounter bugs or have feature ideas.
* Create a Pull Request if you'd like to improve something.
  
📜 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.
