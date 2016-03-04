pod install --verbose --no-repo-update &&  \
xcodebuild -workspace TestJenkins.xcworkspace -scheme TestJenkins archive -archivePath ./build/TestJenkins.xcarchive && \
rm -rf ./build/TestJenkins.ipa && \
xcodebuild -exportArchive -exportFormat ipa -archivePath build/TestJenkins.xcarchive -exportPath build/TestJenkins.ipa && \
fir p build/TestJenkins.ipa -T 0823a5646b2db2b9eab469866c41bce3
