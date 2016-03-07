
# 使用pod管理项目的，先导入依赖库，未使用pod、或者项目依赖库都存在的，可以注释掉
#pod install --verbose --no-repo-update &&  \

# 生成 XXX.xcarchive
xcodebuild -workspace TestJenkins.xcworkspace -scheme TestJenkins archive -archivePath ./build/TestJenkins.xcarchive && \

# 清除之前的ipa文件
rm -rf ./build/TestJenkins.ipa && \

# 使用生成的 XXX.xcarchive -> (XXX表示项目名称) 生成 XXX.ipa
xcodebuild -exportArchive -exportFormat ipa -archivePath build/TestJenkins.xcarchive -exportPath build/TestJenkins.ipa -exportProvisioningProfile comvsoutestjenkinsappstore && \

#xcodebuild -exportArchive -exportFormat IPA \
#-archivePath /Path/To/Archive/name.xcarchive \
#-exportPath /Path/To/Archive/name.ipa \
#-exportProvisioningProfile 'PROVISIONING_PROFILE_NAME'

# ipa上传到fir.im -> (-T 后面为fir.im 的API token)
fir p build/TestJenkins.ipa -T 0823a5646b2db2b9eab469866c41bce3
