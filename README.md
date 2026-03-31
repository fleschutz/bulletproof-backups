Bulletproof Backups
===================
**The risk of DATA LOSS threatens our valuable digital data EVERYWHERE - no smartphone, tablet, PC, or data center is 100% safe! Luckily, this can easily be prevented by data backups performed *on site* for quick recovery and kept *offline* to prevent ransomware attacks.**

📋 Planning & Preparation
--------------------------
- [x] **Read** the [FAQ](docs/FAQ.md) to plan your backup strategy, recommended is the [3-2-1 rule](docs/3-2-1_rule.md).
- [x] **Fetch** [hard drives](https://www.amazon.com/s?k=harddisk) with enough capacity (use different vendors/models/types and maybe even rugged ones).
- [x] **Check** the hard drives for errors and use error-free ones only.
- [x] **Label** the hard drives with unique names, e.g. "Video backup #1 (4TB)".
- [x] **Connect** the hard drives to the PC and rename them accordingly.
- [x] **Download** this [repository (5.8MB)](https://github.com/fleschutz/bulletproof-backups/archive/refs/tags/v1.0.zip), unzip it, and copy the folder as 📁*bulletproof-backups* onto each hard drive.
- [x] **Set up a reminder** in your digital calendar to perform the backup every day/week/month/etc.

▶️ Perform the Backup
---------------------
1. **Connect your mobile device(s)** to the PC and copy photos into the *Pictures* folder, videos into the *Videos* folder, and so on.
2. **Connect the next hard drive** to the PC and open the 📁*bulletproof-backups* folder, then 📁*scripts*.
3. **Execute** the appropriate backup script, e.g. 📄*save_Home_folder.bat* to copy your home folder (with your pictures, videos, etc.) to the drive at 📁*bulletproof-backups/DATA*
4. **Disconnect** the drive *properly* and store it *carefully* in a *separate* and *secure* location.

🪂 Recover Your Data
--------------------
1. **Get the hard drive** with the *latest(!)* backup. Read [Logbook.csv](docs/Logbook.csv) if in doubt.
2. **Check** the hard drive. Read the [documents](docs/) if it's damaged.
3. **Connect** the hard drive to your PC and open the folders: 📁*bulletproof-backups*, then 📁*DATA*.
4. **Copy** or sync the missing or corrupted data back to your PC. DO NOT move the data! BE CAREFUL to set source and destination correct!
5. **Disconnect** the drive *properly* and store it *carefully* in a *separate* and *secure* location again.

💡 Hints
--------
* **At first** a full backup is performed (slow for big data), but next time only changes get copied (extremely fast).
* **No encryption** is performed to keep it simple and robust. Use an encryption program and a vault to prevent unauthorized access.
* **[Logbook.csv](docs/Logbook.csv)** gets updated automatically by the backup scripts (a table in .CSV format containing all the backup details).
* **Test** your backups regularly to ensure that they are working properly. Restore your backups to a test environment and check that all of your data can be accessed as expected.
* **DISCLAIMER:** All informations are given according to my best knowledge, but without guarantee.

🤝 Contributing
----------------
* Contributions, suggestions, and improvements are welcome!
* Open an Issue if you encounter bugs or have feature ideas.
* Create a Pull Request if you'd like to improve something.
  
📜 License & Copyright
-----------------------
This open source project is licensed under the CC0-1.0 license. All trademarks are the property of their respective owners.
