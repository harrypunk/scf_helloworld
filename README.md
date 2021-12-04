# Tencent SCF helloworld  
golang  

### compile and upload
```bash
make upload
```

### Problem:  
```
tccli scf UpdateFunctionCode --FunctionName helloworld-1638496454240 --ZipFile build/hello64
usage: tccli [options] <command> <subcommand> [<subcommand> ...] [parameters]
...

[TencentCloudSDKException] code:InvalidParameterValue.ZipFileBase64BinasciiError message:压缩文件base64解码失败: `Incorrect padding`，请修正后再试。可参考：https://mc.tencent.com/dcPGxe15 requestId:aac953b2-0a37-43e1-9369-8d2bbf3a2f96
```