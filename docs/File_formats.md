🛡️ File Formats for Backups
============================
**Question is: Will you be able to open today’s files in your data backups in 20 years?**

For example the original proposal for the World Wide Web (WWW), written by Tim Berners-Lee in 1989, is an important piece of internet history. However, this Word document can't be opened on modern computers.

**Solution is:** Use standard file systems/partitions/file formats/file suffixes and avoid non-standard/proprietary/exotic ones!

✅ Recommended File Formats
----------------------------

| Format        | Description            | Reason for Recommendation                                                | 
| ------------- | ---------------------- | ------------------------------------------------------------------------ |
| .CSV          | Spreadsheet table      | ASCII based ([RFC 4180](https://www.rfc-editor.org/rfc/rfc4180))         |
| .DNG          | Digital Negative image | open format                                                              |
| .HTML         | Web page               | based on ASCII                                                           |
| .INI          | Program settings       | based on ASCII                                                           |
| .JPG/PNG/TIFF | Photo                  | standard (not lossless! keep generation loss in mind)                    |
| .MD           | Markdown text          | ASCII/Unicode based ([RFC 7763](https://www.rfc-editor.org/rfc/rfc7763)) | 
| .OD*          | Open Document Format   | ISO/IEC 26300 standard                                                   |
| PDF/A         | Adobe's PDF format     | open standard, includes everything                                       |
| .TXT          | Text                   | based on ASCII/Unicode                                                   | 


❌ File Formats to Avoid
-------------------------

| Format | Description                | Reason                         |
| ------ | -------------------------- | ------------------------------ |
| .DLL   | Dynamic linked library     | proprietary (Windows x86 only) |
| .DOC   | Microsoft Word text        | proprietary                    |
| .EXE   | Program executable         | proprietary (Windows x86 only) |
| .XLS   | Microsoft Excel table      | proprietary                    | 
| .RAW   | Raw image format           | highly proprietary per camera  |
