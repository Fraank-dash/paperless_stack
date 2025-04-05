#/bin/bash
curl -u "Admin:Admin" -F "title=TestFileperPOSTviaCURL" -F "document=@/this/could/be/fraank/filepath.jpg" http://localhost:8010/api/documents/post_document/
