<p align="center">
<img src="https://www.flaticon.com/svg/static/icons/svg/2111/2111436.svg"  width="200" alt="Google Drive Client"></a>
</p>
<h1 align="center">Google Drive Client</h1>

<div align="center">

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)]()
[![Status](https://img.shields.io/badge/status-active-success.svg)]()

</div>

<p align="center"> 
A Handful Google Drive Client For Dart
<br></p>

## Table of Contents

- [Table of Contents](#table-of-contents)
- [API](#api)
- [Authors](#authors)

## API

```dart
Future<List<GoogleDriveFileMetaData>> list();

Future<GoogleDriveFileMetaData> get(String id);

Future<GoogleDriveFileMetaData> create(GoogleDriveFileUploadMetaData metaData, File file, {Function(int, int) onUploadProgress});

Future<File> download(String id, String filename, {Function(int, int) onDownloadProgress});

Future<void> delete(String id);
```

## Authors

- [@hokamc](https://github.com/hokamc)
