pod install --verbose --no-repo-update &&  \
xcodebuild -workspace LZAlbum.xcworkspace -scheme LZAlbum archive -archivePath ./build/LZAlbum.xcarchive && \
rm -rf ./build/LZAlbum.ipa && \
xcodebuild -exportArchive -exportFormat ipa -archivePath build/LZAlbum.xcarchive -exportPath build/LZAlbum.ipa && \
fir p build/LZAlbum.ipa -T 0823a5646b2db2b9eab469866c41bce3
