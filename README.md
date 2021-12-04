# Tencent SCF helloworld  
golang  

### compile and upload
```bash
make upload
```

### Problem:  
1. local upload    
    ```
    tccli scf UpdateFunctionCode --FunctionName helloworld-1638496454240 --ZipFile build/hello64
    usage: tccli [options] <command> <subcommand> [<subcommand> ...] [parameters]
    ...

    [TencentCloudSDKException] code:InvalidParameterValue.ZipFileBase64BinasciiError message:压缩文件base64解码失败: `Incorrect padding`，请修正后再试。可参考：https://mc.tencent.com/dcPGxe15 requestId:aac953b2-0a37-43e1-9369-8d2bbf3a2f96
    ```
2. cloud console
    > 2021-12-03 01:01:01 函数更新操作失败。您仍可以调用函数，此时调用的是更新之前的函数。
未找到函数执行入口文件，请确认代码包入口文件名和 handler 设置是否对应或代码压缩包是否正常。