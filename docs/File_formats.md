🛡️ File Formats for Backups
============================
**Question is: Will you be able to open today’s files in your data backups in 20 years?**

For example the original proposal for the World Wide Web (WWW), written by Tim Berners-Lee in 1989, is an important piece of internet history. However, this Word document can't be opened on modern computers.

**Solution is:** Use standard file systems/partitions/file formats/file suffixes and avoid non-standard/proprietary/exotic ones!

✅ Recommended File Formats
----------------------------

| File Suffix   | File Format                | Reason for Recommendation                                                | 
| ------------- | -------------------------- | ------------------------------------------------------------------------ |
| `.csv`        | Spreadsheet table          | ASCII based ([RFC 4180](https://www.rfc-editor.org/rfc/rfc4180))         |
| `.dng`        | Digital Negative           | open source, lossless standard (ISO 12234-4:2026)                        |
| `.html`       | Web page                   | open standard by [World Wide Web Consortium (W3C)](https://www.w3.org/)  |
| `.ini`        | Program settings           | ASCII based                                                              |
| `.jpg/.png/.tif` | Single image            | standard (not lossless! keep generation loss in mind)                    |
| `.m3u`        | Playlist                   | simple ASCII/Unicode lines                                               |
| `.md`         | Markdown                   | ASCII/Unicode based ([RFC 7763](https://www.rfc-editor.org/rfc/rfc7763)) | 
| `.mp3`        | Audio recording            | ISO/IEC 11172-3, ISO/IEC 13818-3 (not lossless)                          |
| `.od*`        | Open Document Format       | ISO/IEC 26300 standard                                                   |
| `.pdf`        | Portable Document Format   | open standard, includes everything                                       |
| `.txt`        | Text only                  | ASCII/Unicode based                                                      | 
| `.xml`        | Extensible Markup Language | open standard derived from SGML (ISO 8879)                               |

❌ File Formats to Avoid
-------------------------

| File Suffix | File Format                | Reason                         |
| ----------- | -------------------------- | ------------------------------ |
| `.dll`      | Dynamic linked library     | proprietary (Windows x86 only) |
| `.doc`      | Microsoft Word text        | proprietary                    |
| `.exe`      | Program executable         | proprietary (Windows x86 only) |
| `.xls`      | Microsoft Excel table      | proprietary                    | 
| `.raw`      | Raw image format           | highly proprietary per camera  |
