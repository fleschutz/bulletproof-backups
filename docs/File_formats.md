🛡️ File Formats for Backups
============================
**Question is: Will you be able to open today’s files in your data backups in 20 years?**

For example the original proposal for the World Wide Web (WWW), written by Tim Berners-Lee in 1989, is an important piece of internet history. However, this Word document can't be opened on modern computers.

**Solution is:** Use standard file systems/partitions/file formats/file suffixes and avoid non-standard/proprietary/exotic ones!

✅ Recommended File Formats
----------------------------

| Suffix        | File Format                | Reason for Recommendation                                                | 
| ------------- | -------------------------- | ------------------------------------------------------------------------ |
| .CSV          | Spreadsheet table          | ASCII based ([RFC 4180](https://www.rfc-editor.org/rfc/rfc4180))         |
| .DNG          | Digital Negative           | open source, lossless standard (ISO 12234-4:2026)                        |
| .HTML         | Web page                   | open standard by [World Wide Web Consortium (W3C)](https://www.w3.org/)  |
| .INI          | Program settings           | based on ASCII                                                           |
| .JPG/PNG/TIFF | Single image               | standard (not lossless! keep generation loss in mind)                    |
| .M3U          | Playlist                   | simple ASCII/Unicode lines                                               |
| .MD           | Markdown                   | ASCII/Unicode based ([RFC 7763](https://www.rfc-editor.org/rfc/rfc7763)) | 
| .MP3          | Audio recording            | ISO/IEC 11172-3, ISO/IEC 13818-3 (not lossless)                          |
| .OD*          | Open Document Format       | ISO/IEC 26300 standard                                                   |
| .PDF          | Portable Document Format   | open standard, includes everything                                       |
| .TXT          | Pure text                  | simple ASCII/Unicode lines                                               | 
| .XML          | Extensible Markup Language | open standard derived from SGML (ISO 8879)                               |

❌ File Formats to Avoid
-------------------------

| Suffix | File Format                | Reason                         |
| ------ | -------------------------- | ------------------------------ |
| .DLL   | Dynamic linked library     | proprietary (Windows x86 only) |
| .DOC   | Microsoft Word text        | proprietary                    |
| .EXE   | Program executable         | proprietary (Windows x86 only) |
| .XLS   | Microsoft Excel table      | proprietary                    | 
| .RAW   | Raw image format           | highly proprietary per camera  |
