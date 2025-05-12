; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [257 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [771 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x01109b0e4d99e61f, ; 1: System.ComponentModel.Annotations.dll => 13
	i64 u0x01b4147f5099147e, ; 2: lib-es-System.ServiceModel.NetFramingBase.resources.dll.so => 218
	i64 u0x02827b47e97f2378, ; 3: System.Security.Cryptography.Pkcs.dll => 180
	i64 u0x0284512fad379f7e, ; 4: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 5: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 6: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x0332080b93de39e8, ; 7: lib-ko-System.ServiceModel.NetTcp.resources.dll.so => 235
	i64 u0x03621c804933a890, ; 8: System.Buffers => 7
	i64 u0x0399610510a38a38, ; 9: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x0517ef04e06e9f76, ; 10: System.Net.Primitives => 71
	i64 u0x0536103900cb32e8, ; 11: lib_Microsoft.IdentityModel.Tokens.Saml.dll.so => 178
	i64 u0x0581db89237110e9, ; 12: lib_System.Collections.dll.so => 12
	i64 u0x05a1c25e78e22d87, ; 13: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x06168c5c025b28b4, ; 14: pl/System.ServiceModel.NetFramingBase.resources => 223
	i64 u0x06388ffe9f6c161a, ; 15: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 16: System.Configuration.dll => 19
	i64 u0x066bc49ad3fdac8f, ; 17: pt-BR/System.ServiceModel.Primitives.resources => 250
	i64 u0x069fff96ec92a91d, ; 18: System.Xml.XPath.dll => 161
	i64 u0x07469f2eecce9e85, ; 19: mscorlib.dll => 167
	i64 u0x0747be857ce04d9a, ; 20: es/System.ServiceModel.Federation.resources => 192
	i64 u0x07c04588bd7473fd, ; 21: lib-cs-System.ServiceModel.Primitives.resources.dll.so => 242
	i64 u0x07dcdc7460a0c5e4, ; 22: System.Collections.NonGeneric => 10
	i64 u0x07df6145bf7c4ae8, ; 23: tr/System.ServiceModel.Primitives.resources.dll => 252
	i64 u0x07facf341f169bb5, ; 24: cs/System.ServiceModel.Http.resources => 203
	i64 u0x08130b8ab839d58b, ; 25: pt-BR/System.ServiceModel.Http.resources => 211
	i64 u0x08662d7e43e96768, ; 26: pl/System.ServiceModel.NetTcp.resources => 236
	i64 u0x08836ae19c27b9da, ; 27: lib_System.ServiceModel.Security.dll.so => 188
	i64 u0x08a7c865576bbde7, ; 28: System.Reflection.Primitives => 96
	i64 u0x09138715c92dba90, ; 29: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x092266563089ae3e, ; 30: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 31: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 32: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x09f0570dfb8f954c, ; 33: lib-cs-System.ServiceModel.NetTcp.resources.dll.so => 229
	i64 u0x0a980941fa112bc4, ; 34: System.Security.Cryptography.Xml => 181
	i64 u0x0abb3e2b271edc45, ; 35: System.Threading.Channels.dll => 140
	i64 u0x0ac1788730e4eecb, ; 36: de/System.ServiceModel.Http.resources.dll => 204
	i64 u0x0b06b1feab070143, ; 37: System.Formats.Tar => 39
	i64 u0x0c18eb6b2c720a2e, ; 38: cs/System.ServiceModel.Federation.resources => 190
	i64 u0x0c59ad9fbbd43abe, ; 39: Mono.Android => 172
	i64 u0x0c74af560004e816, ; 40: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c83c82812e96127, ; 41: lib_System.Net.Mail.dll.so => 67
	i64 u0x0d13cd7cce4284e4, ; 42: System.Security.SecureString => 130
	i64 u0x0e14e73a54dda68e, ; 43: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0f19324fa82e4da6, ; 44: ru/System.ServiceModel.NetTcp.resources.dll => 238
	i64 u0x0f5e7abaa7cf470a, ; 45: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 46: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102bde114e8d673c, ; 47: fr/System.ServiceModel.Federation.resources => 193
	i64 u0x1065c4cb554c3d75, ; 48: System.IO.IsolatedStorage.dll => 52
	i64 u0x108f2a264461e619, ; 49: ko/System.ServiceModel.Http.resources => 209
	i64 u0x10f6cfcbcf801616, ; 50: System.IO.Compression.Brotli => 43
	i64 u0x1140109eb2e77ceb, ; 51: Microsoft.Extensions.ObjectPool.dll => 174
	i64 u0x114443cdcf2091f1, ; 52: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 53: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 54: System.Net.WebSockets.dll => 81
	i64 u0x12128b3f59302d47, ; 55: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 56: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 57: lib_System.Resources.Reader.dll.so => 99
	i64 u0x12d3b63863d4ab0b, ; 58: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x130a61c2e887bb6e, ; 59: zh-Hant/System.ServiceModel.Http.resources => 215
	i64 u0x134eab1061c395ee, ; 60: System.Transactions => 151
	i64 u0x13beedefb0e28a45, ; 61: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 62: lib_Java.Interop.dll.so => 169
	i64 u0x147103369fd947e4, ; 63: zh-Hans/System.ServiceModel.Federation.resources => 201
	i64 u0x1497051b917530bd, ; 64: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x152a448bd1e745a7, ; 65: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 66: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x159b534a3ef12dc2, ; 67: cs/System.ServiceModel.Http.resources.dll => 203
	i64 u0x15bdc156ed462f2f, ; 68: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 69: System.Resources.Writer.dll => 101
	i64 u0x162ded4f872e2108, ; 70: ko/System.ServiceModel.Primitives.resources.dll => 248
	i64 u0x16bf2a22df043a09, ; 71: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 72: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 73: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 74: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 75: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x1752c12f1e1fc00c, ; 76: System.Core => 21
	i64 u0x17d9f0347eceffae, ; 77: lib-fr-System.ServiceModel.NetFramingBase.resources.dll.so => 219
	i64 u0x17f9358913beb16a, ; 78: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 79: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18a9befae51bb361, ; 80: System.Net.WebClient => 77
	i64 u0x19a4c090f14ebb66, ; 81: System.Security.Claims => 119
	i64 u0x19c0ab2196420f08, ; 82: tr/System.ServiceModel.Primitives.resources => 252
	i64 u0x1a91866a319e9259, ; 83: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 84: lib_System.dll.so => 165
	i64 u0x1aea8f1c3b282172, ; 85: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b4ed5f9d1cf859d, ; 86: lib-tr-System.ServiceModel.Federation.resources.dll.so => 200
	i64 u0x1b9ff281906566bf, ; 87: es/System.ServiceModel.NetFramingBase.resources => 218
	i64 u0x1c753b5ff15bce1b, ; 88: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 89: System.Threading.Tasks.dll => 145
	i64 u0x1d219bde965f2231, ; 90: lib-pl-System.ServiceModel.Federation.resources.dll.so => 197
	i64 u0x1d23eafdc6dc346c, ; 91: System.Globalization.Calendars.dll => 40
	i64 u0x1d32a3a761ab10c7, ; 92: pl/System.ServiceModel.Primitives.resources.dll => 249
	i64 u0x1db6820994506bf5, ; 93: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 94: System.Diagnostics.StackTrace => 30
	i64 u0x1dd2a7d5c8d3d2b6, ; 95: tr/System.ServiceModel.NetFramingBase.resources.dll => 226
	i64 u0x1e7c31185e2fb266, ; 96: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1f055d15d807e1b2, ; 97: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 98: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 99: lib_System.Numerics.dll.so => 84
	i64 u0x1fb89ca66dfcabab, ; 100: it/System.ServiceModel.NetTcp.resources.dll => 233
	i64 u0x20237ea48006d7a8, ; 101: lib_System.Net.WebClient.dll.so => 77
	i64 u0x207e32ac93b83ef8, ; 102: _01.SERVIDOR => 255
	i64 u0x209375905fcc1bad, ; 103: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 104: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 105: System.Globalization => 42
	i64 u0x21419508838f7547, ; 106: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 107: System.Runtime => 117
	i64 u0x219ea1b751a4dee4, ; 108: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 109: System.Reflection.Emit.ILGeneration => 91
	i64 u0x224538d85ed15a82, ; 110: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 111: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22bfeeba49e6aa35, ; 112: cs/System.ServiceModel.NetFramingBase.resources.dll => 216
	i64 u0x23528a4ba1887701, ; 113: tr/System.ServiceModel.Http.resources.dll => 213
	i64 u0x237be844f1f812c7, ; 114: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 115: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 116: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x23ebb0be6a1f9c46, ; 117: ru/System.ServiceModel.NetFramingBase.resources.dll => 225
	i64 u0x2407aef2bbe8fadf, ; 118: System.Console => 20
	i64 u0x2434c1866d776788, ; 119: it/System.ServiceModel.Primitives.resources.dll => 246
	i64 u0x247619fe4413f8bf, ; 120: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x248ba06617481add, ; 121: zh-Hant/System.ServiceModel.Federation.resources.dll => 202
	i64 u0x26a670e154a9c54b, ; 122: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 123: System.IO.dll => 58
	i64 u0x2759af78ab94d39b, ; 124: System.Net.WebSockets => 81
	i64 u0x277289bda3869388, ; 125: de/System.ServiceModel.Federation.resources.dll => 191
	i64 u0x27b410442fad6cf1, ; 126: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 127: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 128: System.Net.Primitives.dll => 71
	i64 u0x28e29ea3dda9f3d1, ; 129: zh-Hans/System.ServiceModel.NetTcp.resources => 240
	i64 u0x2a20ac106f144888, ; 130: ko/System.ServiceModel.Federation.resources => 196
	i64 u0x2a3b095612184159, ; 131: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 132: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad5d6b13b7a3e04, ; 133: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 134: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 135: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b0c21e667d8f1ef, ; 136: lib-tr-System.ServiceModel.NetFramingBase.resources.dll.so => 226
	i64 u0x2b9b351a8ec65c76, ; 137: System.ServiceModel.Primitives.dll => 187
	i64 u0x2c26c7650afbcba2, ; 138: tr/System.ServiceModel.NetFramingBase.resources => 226
	i64 u0x2cbd9262ca785540, ; 139: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 140: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 141: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 142: System.Threading.dll => 149
	i64 u0x2d5ffcae1ad0aaca, ; 143: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 144: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 145: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e44180014afa07e, ; 146: System.ServiceModel.NetFramingBase => 184
	i64 u0x2e5a40c319acb800, ; 147: System.IO.FileSystem => 51
	i64 u0x2f02f94df3200fe5, ; 148: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 149: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 150: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 151: lib_System.Xml.dll.so => 164
	i64 u0x2f8b8b1fa14a8448, ; 152: zh-Hans/System.ServiceModel.NetFramingBase.resources => 227
	i64 u0x30c6dda129408828, ; 153: System.IO.IsolatedStorage => 52
	i64 u0x3115b96f750a95ee, ; 154: System.ServiceModel.Federation => 182
	i64 u0x31195fef5d8fb552, ; 155: _Microsoft.Android.Resource.Designer.dll => 256
	i64 u0x31496b779ed0663d, ; 156: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x31775b73d7e5d2ca, ; 157: lib_MobilApp.dll.so => 0
	i64 u0x3235427f8d12dae1, ; 158: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x32aa989ff07a84ff, ; 159: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 160: System.Collections.Immutable => 9
	i64 u0x341abc357fbb4ebf, ; 161: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 162: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34ba7926775157ee, ; 163: fr/System.ServiceModel.Http.resources.dll => 206
	i64 u0x34fda75514bd8bb7, ; 164: lib_Microsoft.IdentityModel.Protocols.WsTrust.dll.so => 176
	i64 u0x353590da528c9d22, ; 165: System.ComponentModel.Annotations => 13
	i64 u0x355c649948d55d97, ; 166: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x3628ab68db23a01a, ; 167: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 168: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 169: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 170: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 171: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 172: System.Reflection.Primitives.dll => 96
	i64 u0x37bc29f3183003b6, ; 173: lib_System.IO.dll.so => 58
	i64 u0x37fb35a39cd89631, ; 174: de/System.ServiceModel.NetTcp.resources => 230
	i64 u0x380134e03b1e160a, ; 175: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 176: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x383410cfa2a31339, ; 177: de/System.ServiceModel.Primitives.resources => 243
	i64 u0x38869c811d74050e, ; 178: System.Net.NameResolution.dll => 68
	i64 u0x38d77e34f978d1b6, ; 179: System.ServiceModel.Primitives => 187
	i64 u0x395f717707d372c7, ; 180: fr/System.ServiceModel.Primitives.resources.dll => 245
	i64 u0x3ab5859054645f72, ; 181: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad699f278ab9353, ; 182: lib-ko-System.ServiceModel.NetFramingBase.resources.dll.so => 222
	i64 u0x3ae44ac43a1fbdbb, ; 183: System.Runtime.Serialization => 116
	i64 u0x3b8103a61ccb341b, ; 184: es/System.ServiceModel.NetTcp.resources => 231
	i64 u0x3b860f9932505633, ; 185: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3bea9ebe8c027c01, ; 186: lib_Microsoft.IdentityModel.Tokens.dll.so => 177
	i64 u0x3bfec727ed47fa97, ; 187: ru/System.ServiceModel.Federation.resources => 199
	i64 u0x3c3aafb6b3a00bf6, ; 188: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 189: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7e5ed3d5db71bb, ; 190: System.Security => 131
	i64 u0x3cbb3644a83a76bd, ; 191: it/System.ServiceModel.Federation.resources.dll => 194
	i64 u0x3cec4f158c2d0869, ; 192: ko/System.ServiceModel.Primitives.resources => 248
	i64 u0x3d2b1913edfc08d7, ; 193: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 194: System.Xml.Linq => 156
	i64 u0x3e57d4d195c53c2e, ; 195: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 196: lib_System.Data.dll.so => 24
	i64 u0x3e6a340cc96f2e46, ; 197: lib-pt-BR-System.ServiceModel.Primitives.resources.dll.so => 250
	i64 u0x3f510adf788828dd, ; 198: System.Threading.Tasks.Extensions => 143
	i64 u0x3fb0be225913eb6b, ; 199: fr/System.ServiceModel.Primitives.resources => 245
	i64 u0x40268eb2c3e5e8d4, ; 200: lib-pt-BR-System.ServiceModel.Federation.resources.dll.so => 198
	i64 u0x40c98b6bd77346d4, ; 201: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 202: mscorlib => 167
	i64 u0x423a9ecc4d905a88, ; 203: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 204: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 205: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 206: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 207: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x431612591b56dba0, ; 208: cs/System.ServiceModel.Primitives.resources => 242
	i64 u0x43375950ec7c1b6a, ; 209: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 210: Mono.Android.dll => 172
	i64 u0x43564d2d913fd6b1, ; 211: es/System.ServiceModel.Federation.resources.dll => 192
	i64 u0x437d06c381ed575a, ; 212: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43abf7a7601b2bef, ; 213: pl/System.ServiceModel.Http.resources.dll => 210
	i64 u0x4441ec36856b0733, ; 214: es/System.ServiceModel.Http.resources.dll => 205
	i64 u0x448bd33429269b19, ; 215: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 216: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x45c40276a42e283e, ; 217: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 218: System.AppContext.dll => 6
	i64 u0x463d680a1dec0810, ; 219: System.Security.Cryptography.Xml.dll => 181
	i64 u0x4687b1cc0feabf8f, ; 220: pt-BR/System.ServiceModel.NetTcp.resources => 237
	i64 u0x47358bd471172e1d, ; 221: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47482983e855006a, ; 222: es/System.ServiceModel.NetTcp.resources.dll => 231
	i64 u0x47fa70fa792b8adb, ; 223: fr/System.ServiceModel.Http.resources => 206
	i64 u0x480c0a47dd42dd81, ; 224: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x4875b1ef38ec0862, ; 225: System.ServiceModel.dll => 189
	i64 u0x491a662076bc9a46, ; 226: it/System.ServiceModel.NetFramingBase.resources => 220
	i64 u0x4956bf53b9c53cbb, ; 227: es/System.ServiceModel.NetFramingBase.resources.dll => 218
	i64 u0x49575e19a82569ac, ; 228: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 228
	i64 u0x49d025a0a7359fa5, ; 229: lib-pl-System.ServiceModel.Primitives.resources.dll.so => 249
	i64 u0x49e952f19a4e2022, ; 230: System.ObjectModel => 85
	i64 u0x4a01f51359a6d10e, ; 231: ru/System.ServiceModel.Http.resources.dll => 212
	i64 u0x4a7a18981dbd56bc, ; 232: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4b07a0ed0ab33ff4, ; 233: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 234: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 235: System.Text.Json => 138
	i64 u0x4c7755cf07ad2d5f, ; 236: System.Net.Http.Json.dll => 64
	i64 u0x4c8185b93923bcbf, ; 237: ru/System.ServiceModel.NetFramingBase.resources => 225
	i64 u0x4cf6f67dc77aacd2, ; 238: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 239: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 240: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 241: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 242: System.Web.dll => 154
	i64 u0x4d7793536e79c309, ; 243: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 244: System.Runtime.Loader.dll => 110
	i64 u0x4e32f00cb0937401, ; 245: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 246: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 247: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 248: System.Globalization.Calendars => 40
	i64 u0x4ffd65baff757598, ; 249: Microsoft.IdentityModel.Tokens => 177
	i64 u0x50ae1710326f19b5, ; 250: ru/System.ServiceModel.NetTcp.resources => 238
	i64 u0x50c3a29b21050d45, ; 251: System.Linq.Parallel.dll => 60
	i64 u0x516324a5050a7e3c, ; 252: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 253: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 254: System.Drawing => 36
	i64 u0x521a910269354815, ; 255: fr/System.ServiceModel.NetFramingBase.resources => 219
	i64 u0x5247c5c32a4140f0, ; 256: System.Resources.Reader => 99
	i64 u0x526ce79eb8e90527, ; 257: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 258: lib_System.Data.Common.dll.so => 22
	i64 u0x5332096658d1c250, ; 259: lib-ja-System.ServiceModel.Primitives.resources.dll.so => 247
	i64 u0x53978aac584c666e, ; 260: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 261: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 262: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x5435e6f049e9bc37, ; 263: System.Security.Claims.dll => 119
	i64 u0x5457fa7c2ea8234d, ; 264: ko/System.ServiceModel.NetTcp.resources.dll => 235
	i64 u0x54795225dd1587af, ; 265: lib_System.Runtime.dll.so => 117
	i64 u0x5588627c9a108ec9, ; 266: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 267: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 268: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 269: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x564c325249a9f66f, ; 270: lib_System.ServiceModel.NetFramingBase.dll.so => 184
	i64 u0x564f338c00f45c4e, ; 271: System.ServiceModel.Security.dll => 188
	i64 u0x56a8b26e1aeae27b, ; 272: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 273: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 274: System.Private.Uri => 87
	i64 u0x575ea136f0458b87, ; 275: lib-de-System.ServiceModel.NetFramingBase.resources.dll.so => 217
	i64 u0x579a06fed6eec900, ; 276: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 277: System.Diagnostics.DiagnosticSource => 27
	i64 u0x57e01be59902581a, ; 278: lib-pt-BR-System.ServiceModel.NetFramingBase.resources.dll.so => 224
	i64 u0x581a8bd5cfda563e, ; 279: System.Threading.Timer => 148
	i64 u0x595a356d23e8da9a, ; 280: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59ce7a94c58f2695, ; 281: lib-pl-System.ServiceModel.NetTcp.resources.dll.so => 236
	i64 u0x59ddb23cfc360e17, ; 282: lib-zh-Hant-System.ServiceModel.Primitives.resources.dll.so => 254
	i64 u0x5a745f5101a75527, ; 283: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a8f6699f4a1caa9, ; 284: lib_System.Threading.dll.so => 149
	i64 u0x5ae1c42eef178fa6, ; 285: lib-ru-System.ServiceModel.Federation.resources.dll.so => 199
	i64 u0x5ae9cd33b15841bf, ; 286: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 287: System.Private.DataContractSerialization => 86
	i64 u0x5b8109e8e14c5e3e, ; 288: System.Globalization.Extensions.dll => 41
	i64 u0x5beaa5537d2016c6, ; 289: ko/System.ServiceModel.NetTcp.resources => 235
	i64 u0x5c30a4a35f9cc8c4, ; 290: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c53c29f5073b0c9, ; 291: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 292: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 293: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d67fb6a3d77b941, ; 294: lib-de-System.ServiceModel.Http.resources.dll.so => 204
	i64 u0x5d7ec76c1c703055, ; 295: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 296: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5e467bc8f09ad026, ; 297: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 298: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 299: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 300: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 301: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 302: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 303: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 304: System.Data.Common => 22
	i64 u0x5fac98e0b37a5b9d, ; 305: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x5fd02402d97cdaab, ; 306: lib_Microsoft.Extensions.ObjectPool.dll.so => 174
	i64 u0x5fe9f6784e283873, ; 307: ja/System.ServiceModel.NetTcp.resources => 234
	i64 u0x60f62d786afcf130, ; 308: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 309: System.IO => 58
	i64 u0x61d88f399afb2f45, ; 310: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 311: System.Private.CoreLib => 173
	i64 u0x63f1f6883c1e23c2, ; 312: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x640e3b14dbd325c2, ; 313: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x642bb5b52ddaa236, ; 314: pt-BR/System.ServiceModel.Federation.resources => 198
	i64 u0x64587004560099b9, ; 315: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 316: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x6564a54ee07ff3d3, ; 317: ja/System.ServiceModel.Primitives.resources.dll => 247
	i64 u0x65ece51227bfa724, ; 318: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x6679b2337ee6b22a, ; 319: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 320: lib_System.Console.dll.so => 20
	i64 u0x66fc75e2c1d29d35, ; 321: pt-BR/System.ServiceModel.Http.resources.dll => 211
	i64 u0x670aff70911d9fa5, ; 322: zh-Hans/System.ServiceModel.Federation.resources.dll => 201
	i64 u0x674303f65d8fad6f, ; 323: lib_System.Net.Quic.dll.so => 72
	i64 u0x67c0802770244408, ; 324: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 325: lib_System.Formats.Tar.dll.so => 39
	i64 u0x682e32a3fa5d0870, ; 326: cs/System.ServiceModel.NetFramingBase.resources => 216
	i64 u0x6872ec7a2e36b1ac, ; 327: System.Drawing.Primitives.dll => 35
	i64 u0x68fbbbe2eb455198, ; 328: System.Formats.Asn1 => 38
	i64 u0x69ad9c8949c089ce, ; 329: System.ServiceModel.Duplex.dll => 186
	i64 u0x6a4d7577b2317255, ; 330: System.Runtime.InteropServices.dll => 108
	i64 u0x6a898fd8e0027f5f, ; 331: lib-it-System.ServiceModel.Http.resources.dll.so => 207
	i64 u0x6afcedb171067e2b, ; 332: System.Core.dll => 21
	i64 u0x6b0384b6e0da1492, ; 333: System.ServiceModel.Duplex => 186
	i64 u0x6b59389970ee1fc9, ; 334: lib-ja-System.ServiceModel.NetFramingBase.resources.dll.so => 221
	i64 u0x6c0d56cccdc3d6af, ; 335: System.ServiceModel.Security => 188
	i64 u0x6c375d328bf6e758, ; 336: pl/System.ServiceModel.Federation.resources => 197
	i64 u0x6d70755158ca866e, ; 337: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d7eeca99577fc8b, ; 338: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 339: System.Net.WebProxy.dll => 79
	i64 u0x6d87383d6be82905, ; 340: lib-es-System.ServiceModel.NetTcp.resources.dll.so => 231
	i64 u0x6d8bf5f20c354799, ; 341: System.ServiceModel.NetFramingBase.dll => 184
	i64 u0x6df9966caa8dde54, ; 342: pt-BR/System.ServiceModel.NetFramingBase.resources => 224
	i64 u0x6dfd14f3374dea80, ; 343: fr/System.ServiceModel.NetTcp.resources => 232
	i64 u0x6e46b608de8d2d37, ; 344: lib-pl-System.ServiceModel.NetFramingBase.resources.dll.so => 223
	i64 u0x6e838d9a2a6f6c9e, ; 345: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e87abad812686e7, ; 346: lib-ru-System.ServiceModel.Http.resources.dll.so => 212
	i64 u0x6e9965ce1095e60a, ; 347: lib_System.Core.dll.so => 21
	i64 u0x6ee83429f000d8b2, ; 348: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 227
	i64 u0x6ffc4967cc47ba57, ; 349: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 350: System.IO.FileSystem.dll => 51
	i64 u0x7081016708b8d5e3, ; 351: pt-BR/System.ServiceModel.Federation.resources.dll => 198
	i64 u0x713112014e7bcddd, ; 352: ja/System.ServiceModel.Federation.resources.dll => 195
	i64 u0x7147470744a19d10, ; 353: ru/System.ServiceModel.Primitives.resources => 251
	i64 u0x71485e7ffdb4b958, ; 354: System.Reflection.Extensions => 94
	i64 u0x715fb0ff95d2580a, ; 355: pl/System.ServiceModel.NetTcp.resources.dll => 236
	i64 u0x71ad672adbe48f35, ; 356: System.ComponentModel.Primitives.dll => 16
	i64 u0x71bc142d620e986a, ; 357: lib_System.Security.Cryptography.Pkcs.dll.so => 180
	i64 u0x7221269c09f481ba, ; 358: lib-es-System.ServiceModel.Federation.resources.dll.so => 192
	i64 u0x725f5a9e82a45c81, ; 359: System.Security.Cryptography.Encoding => 123
	i64 u0x72e0300099accce1, ; 360: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 361: System.IO.Compression.ZipFile => 45
	i64 u0x73a6be34e822f9d1, ; 362: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 363: lib_System.Memory.dll.so => 63
	i64 u0x73efe3fe81397f7d, ; 364: tr/System.ServiceModel.NetTcp.resources => 239
	i64 u0x73fd725e25508c92, ; 365: ja/System.ServiceModel.Http.resources.dll => 208
	i64 u0x743a1eccf080489a, ; 366: WindowsBase.dll => 166
	i64 u0x748e45a5491b990a, ; 367: zh-Hans/System.ServiceModel.Primitives.resources => 253
	i64 u0x75c326eb821b85c4, ; 368: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76990c4120a9d046, ; 369: lib-fr-System.ServiceModel.Http.resources.dll.so => 206
	i64 u0x76ca07b878f44da0, ; 370: System.Runtime.Numerics.dll => 111
	i64 u0x7720bbea3c69ef22, ; 371: pl/System.ServiceModel.Http.resources => 210
	i64 u0x778a805e625329ef, ; 372: System.Linq.Parallel => 60
	i64 u0x77949a8bd3fbba4e, ; 373: lib-zh-Hant-System.ServiceModel.NetTcp.resources.dll.so => 241
	i64 u0x77f8a4acc2fdc449, ; 374: System.Security.Cryptography.Cng.dll => 121
	i64 u0x782c5d8eb99ff201, ; 375: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x785583be4be89193, ; 376: lib-zh-Hans-System.ServiceModel.NetFramingBase.resources.dll.so => 227
	i64 u0x78f8254f77f884f2, ; 377: lib_System.ServiceModel.NetTcp.dll.so => 185
	i64 u0x7a9a57d43b0845fa, ; 378: System.AppContext => 6
	i64 u0x7bef86a4335c4870, ; 379: System.ComponentModel.TypeConverter => 17
	i64 u0x7c41d387501568ba, ; 380: System.Net.WebClient.dll => 77
	i64 u0x7c8bd73959bbb0a8, ; 381: zh-Hant/System.ServiceModel.NetFramingBase.resources => 228
	i64 u0x7cd2ec8eaf5241cd, ; 382: System.Security.dll => 131
	i64 u0x7d02354365aee2fa, ; 383: lib-fr-System.ServiceModel.Federation.resources.dll.so => 193
	i64 u0x7d8ee2bdc8e3aad1, ; 384: System.Numerics.Vectors => 83
	i64 u0x7dfc3d6d9d8d7b70, ; 385: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 386: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 387: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4084a672f9c30e, ; 388: lib_System.Security.Cryptography.Xml.dll.so => 181
	i64 u0x7e946809d6008ef2, ; 389: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ecc13347c8fd849, ; 390: lib_System.ComponentModel.dll.so => 18
	i64 u0x7fd423ee8ec71b4e, ; 391: lib-cs-System.ServiceModel.Federation.resources.dll.so => 190
	i64 u0x8076a9a44a2ca331, ; 392: System.Net.Quic => 72
	i64 u0x80d3153596637bd3, ; 393: lib-zh-Hant-System.ServiceModel.Http.resources.dll.so => 215
	i64 u0x80da183a87731838, ; 394: System.Reflection.Metadata => 95
	i64 u0x812c069d5cdecc17, ; 395: System.dll => 165
	i64 u0x81657cec2b31e8aa, ; 396: System.Net => 82
	i64 u0x822aa49008112ebe, ; 397: Microsoft.Extensions.ObjectPool => 174
	i64 u0x82b399cb01b531c4, ; 398: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 399: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 400: lib_System.Transactions.dll.so => 151
	i64 u0x833fbaaf1783b01c, ; 401: lib-ko-System.ServiceModel.Primitives.resources.dll.so => 248
	i64 u0x8351877ccf75a94c, ; 402: lib-es-System.ServiceModel.Http.resources.dll.so => 205
	i64 u0x846ce984efea52c7, ; 403: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 404: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 405: System.Runtime.Serialization.Json.dll => 113
	i64 u0x84b913cb6ead65d0, ; 406: lib-tr-System.ServiceModel.NetTcp.resources.dll.so => 239
	i64 u0x8631da6322beaf74, ; 407: ja/System.ServiceModel.NetFramingBase.resources => 221
	i64 u0x8662aaeb94fef37f, ; 408: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x866d7e7592718c99, ; 409: System.ServiceModel => 189
	i64 u0x86b62cb077ec4fd7, ; 410: System.Runtime.Serialization.Xml => 115
	i64 u0x872a5b14c18d328c, ; 411: System.ComponentModel.DataAnnotations => 14
	i64 u0x878e0bbd0ce1b004, ; 412: lib-pl-System.ServiceModel.Http.resources.dll.so => 210
	i64 u0x87c69b87d9283884, ; 413: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 414: System.IO.Compression.Brotli.dll => 43
	i64 u0x88ba6bc4f7762b03, ; 415: lib_System.Reflection.dll.so => 98
	i64 u0x8930322c7bd8f768, ; 416: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 417: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 418: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 419: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 420: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8afcc90f8e8c2e2b, ; 421: ru/System.ServiceModel.Federation.resources.dll => 199
	i64 u0x8b4ff5d0fdd5faa1, ; 422: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 423: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 424: System.Diagnostics.Process.dll => 29
	i64 u0x8cdfdb4ce85fb925, ; 425: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 426: System.IO.Compression.FileSystem => 44
	i64 u0x8d7b8ab4b3310ead, ; 427: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 428: System.Collections.Concurrent => 8
	i64 u0x8f44b45eb046bbd1, ; 429: System.ServiceModel.Web.dll => 132
	i64 u0x8f89a9946e9a8fdf, ; 430: ja/System.ServiceModel.NetFramingBase.resources.dll => 221
	i64 u0x8fa77233a513bb64, ; 431: _01.SERVIDOR.dll => 255
	i64 u0x8fbf5b0114c6dcef, ; 432: System.Globalization.dll => 42
	i64 u0x90263f8448b8f572, ; 433: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 434: _Microsoft.Android.Resource.Designer => 256
	i64 u0x90393bd4865292f3, ; 435: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 436: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x9157bd523cd7ed36, ; 437: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 438: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 439: System.ServiceModel.Web => 132
	i64 u0x92054e486c0c7ea7, ; 440: System.IO.FileSystem.DriveInfo => 48
	i64 u0x9218ebac4a13547d, ; 441: zh-Hant/System.ServiceModel.Primitives.resources.dll => 254
	i64 u0x923bad60e6cb0021, ; 442: System.ServiceModel.Federation.dll => 182
	i64 u0x928614058c40c4cd, ; 443: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x9341e399de892d37, ; 444: lib-ja-System.ServiceModel.NetTcp.resources.dll.so => 234
	i64 u0x944077d8ca3c6580, ; 445: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 446: System.Xml => 164
	i64 u0x948d746a7702861f, ; 447: Microsoft.IdentityModel.Logging.dll => 175
	i64 u0x9564283c37ed59a9, ; 448: lib_Microsoft.IdentityModel.Logging.dll.so => 175
	i64 u0x95f877d329f69012, ; 449: lib_System.ServiceModel.Primitives.dll.so => 187
	i64 u0x95fbf10ee2f6bba2, ; 450: de/System.ServiceModel.NetFramingBase.resources => 217
	i64 u0x97b8c771ea3e4220, ; 451: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 452: System.Collections.Concurrent.dll => 8
	i64 u0x98d720cc4597562c, ; 453: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 454: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 455: System.Threading.Overlapped.dll => 141
	i64 u0x99934fbe450187c6, ; 456: lib-it-System.ServiceModel.NetTcp.resources.dll.so => 233
	i64 u0x9b211a749105beac, ; 457: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 458: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9c244ac7cda32d26, ; 459: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c403155b5502882, ; 460: lib-ru-System.ServiceModel.Primitives.resources.dll.so => 251
	i64 u0x9c8f6872beab6408, ; 461: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 462: System.Xml.XmlDocument => 162
	i64 u0x9e4b95dec42769f7, ; 463: System.Diagnostics.Debug.dll => 26
	i64 u0x9e6a8a55037a5caa, ; 464: es/System.ServiceModel.Primitives.resources.dll => 244
	i64 u0x9ebd8db4d3870726, ; 465: de/System.ServiceModel.NetFramingBase.resources.dll => 217
	i64 u0x9f1905ae37dbd11c, ; 466: System.ServiceModel.NetTcp.dll => 185
	i64 u0x9fa837427b466b41, ; 467: lib-cs-System.ServiceModel.NetFramingBase.resources.dll.so => 216
	i64 u0xa00832eb975f56a8, ; 468: lib_System.Net.dll.so => 82
	i64 u0xa0223992a68bef2a, ; 469: fr/System.ServiceModel.Federation.resources.dll => 193
	i64 u0xa0cc72702627edad, ; 470: ko/System.ServiceModel.Http.resources.dll => 209
	i64 u0xa0d8259f4cc284ec, ; 471: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0ff9b3e34d92f11, ; 472: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 473: System.Threading.Timer.dll => 148
	i64 u0xa2572680829d2c7c, ; 474: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 475: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 476: lib_mscorlib.dll.so => 167
	i64 u0xa37a376ac4d769f4, ; 477: lib-cs-System.ServiceModel.Http.resources.dll.so => 203
	i64 u0xa395572e7da6c99d, ; 478: lib_System.Security.dll.so => 131
	i64 u0xa3c64c49e90a9987, ; 479: System.Security.Cryptography.Pkcs => 180
	i64 u0xa3e683f24b43af6f, ; 480: System.Dynamic.Runtime.dll => 37
	i64 u0xa4edc8f2ceae241a, ; 481: System.Data.Common.dll => 22
	i64 u0xa546a7b3b135e528, ; 482: fr/System.ServiceModel.NetFramingBase.resources.dll => 219
	i64 u0xa5494f40f128ce6a, ; 483: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 484: System.Reflection.DispatchProxy => 90
	i64 u0xa5b7152421ed6d98, ; 485: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 486: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 487: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 488: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 489: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 490: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa66cbee0130865f7, ; 491: lib_WindowsBase.dll.so => 166
	i64 u0xa763fbb98df8d9fb, ; 492: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa7eab29ed44b4e7a, ; 493: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 494: Microsoft.VisualBasic.Core => 2
	i64 u0xa8b52f21e0dbe690, ; 495: System.Runtime.Serialization.dll => 116
	i64 u0xa8e58fed601d5cd0, ; 496: ja/System.ServiceModel.Primitives.resources => 247
	i64 u0xa8e93b98fddb1ccf, ; 497: lib-de-System.ServiceModel.NetTcp.resources.dll.so => 230
	i64 u0xa94eefbc7cfedcce, ; 498: it/System.ServiceModel.Http.resources.dll => 207
	i64 u0xa94fc7dde26e269d, ; 499: it/System.ServiceModel.NetTcp.resources => 233
	i64 u0xa95590e7c57438a4, ; 500: System.Configuration => 19
	i64 u0xaa443ac34067eeef, ; 501: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 502: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 503: System.Diagnostics.StackTrace.dll => 30
	i64 u0xab3ce65e409334c2, ; 504: fr/System.ServiceModel.NetTcp.resources.dll => 232
	i64 u0xab793a8643b06cd4, ; 505: zh-Hant/System.ServiceModel.NetTcp.resources => 241
	i64 u0xab9c1b2687d86b0b, ; 506: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xabe49106840cf011, ; 507: cs/System.ServiceModel.NetTcp.resources => 229
	i64 u0xac2118054eb44149, ; 508: zh-Hant/System.ServiceModel.Http.resources.dll => 215
	i64 u0xac2af3fa195a15ce, ; 509: System.Runtime.Numerics => 111
	i64 u0xac522e2fd8080df8, ; 510: es/System.ServiceModel.Http.resources => 205
	i64 u0xac5acae88f60357e, ; 511: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 512: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 513: System.Xml.XDocument => 159
	i64 u0xacf42eea7ef9cd12, ; 514: System.Threading.Channels => 140
	i64 u0xacfe7011c572e5ba, ; 515: lib_System.ServiceModel.Duplex.dll.so => 186
	i64 u0xad5deb3acac67dc2, ; 516: lib-fr-System.ServiceModel.NetTcp.resources.dll.so => 232
	i64 u0xadb5a50910764244, ; 517: lib-ru-System.ServiceModel.NetFramingBase.resources.dll.so => 225
	i64 u0xadbb53caf78a79d2, ; 518: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 519: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadf4cf30debbeb9a, ; 520: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 521: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 522: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 523: Java.Interop => 169
	i64 u0xae40fdf36f7c3346, ; 524: tr/System.ServiceModel.Http.resources => 213
	i64 u0xae53579c90db1107, ; 525: System.ObjectModel.dll => 85
	i64 u0xaf732d0b2193b8f5, ; 526: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xb036f413731fcb9d, ; 527: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 224
	i64 u0xb0bb43dc52ea59f9, ; 528: System.Diagnostics.Tracing.dll => 34
	i64 u0xb0e3780674195d08, ; 529: lib-ko-System.ServiceModel.Http.resources.dll.so => 209
	i64 u0xb1dd05401aa8ee63, ; 530: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 531: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 532: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 533: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb30cdaca6dd92ee6, ; 534: lib-ko-System.ServiceModel.Federation.resources.dll.so => 196
	i64 u0xb43fcd02a3d99ca2, ; 535: zh-Hans/System.ServiceModel.Http.resources => 214
	i64 u0xb4bd7015ecee9d86, ; 536: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 537: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 538: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb5c38bf497a4cfe2, ; 539: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5ea31d5244c6626, ; 540: System.Threading.ThreadPool.dll => 147
	i64 u0xb6810b6e31e19016, ; 541: ja/System.ServiceModel.NetTcp.resources.dll => 234
	i64 u0xb7212c4683a94afe, ; 542: System.Drawing.Primitives => 35
	i64 u0xb736bb849856fcb1, ; 543: lib-de-System.ServiceModel.Federation.resources.dll.so => 191
	i64 u0xb7b52173eb160717, ; 544: it/System.ServiceModel.NetFramingBase.resources.dll => 220
	i64 u0xb80417965e9eec49, ; 545: lib-ru-System.ServiceModel.NetTcp.resources.dll.so => 238
	i64 u0xb81a2c6e0aee50fe, ; 546: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8ae3f1ddbf6632a, ; 547: ru/System.ServiceModel.Primitives.resources.dll => 251
	i64 u0xb8c60af47c08d4da, ; 548: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 549: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 550: Microsoft.CSharp.dll => 1
	i64 u0xba4670aa94a2b3c6, ; 551: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 552: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 553: lib_System.Windows.dll.so => 155
	i64 u0xbb0fb4261b15ceaa, ; 554: lib-it-System.ServiceModel.Primitives.resources.dll.so => 246
	i64 u0xbb286883bc35db36, ; 555: System.Transactions.dll => 151
	i64 u0xbb54ec6fb2d03594, ; 556: lib-zh-Hant-System.ServiceModel.Federation.resources.dll.so => 202
	i64 u0xbb65706fde942ce3, ; 557: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 558: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 559: System.Runtime.Serialization.Formatters => 112
	i64 u0xbd0e2c0d55246576, ; 560: System.Net.Http.dll => 65
	i64 u0xbd1eaddf5b8d294f, ; 561: pt-BR/System.ServiceModel.NetTcp.resources.dll => 237
	i64 u0xbd3fbd85b9e1cb29, ; 562: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd4f572d2bd0a789, ; 563: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd877b14d0b56392, ; 564: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe54984cf301dc4a, ; 565: de/System.ServiceModel.Federation.resources => 191
	i64 u0xbe65a49036345cf4, ; 566: lib_System.Buffers.dll.so => 7
	i64 u0xbee637a43bb91f81, ; 567: Microsoft.IdentityModel.Protocols.WsTrust => 176
	i64 u0xbef9919db45b4ca7, ; 568: System.IO.Pipes.AccessControl => 55
	i64 u0xbfc1e1fb3095f2b3, ; 569: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xbfe46510e1852010, ; 570: ko/System.ServiceModel.NetFramingBase.resources.dll => 222
	i64 u0xc0d928351ab5ca77, ; 571: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 572: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 573: System.Resources.Writer => 101
	i64 u0xc12890eb145545dd, ; 574: lib-tr-System.ServiceModel.Http.resources.dll.so => 213
	i64 u0xc12b8b3afa48329c, ; 575: lib_System.Linq.dll.so => 62
	i64 u0xc12f3d4943ba8357, ; 576: tr/System.ServiceModel.Federation.resources.dll => 200
	i64 u0xc183ca0b74453aa9, ; 577: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1a3b3eb30a78244, ; 578: lib-de-System.ServiceModel.Primitives.resources.dll.so => 243
	i64 u0xc26c064effb1dea9, ; 579: System.Buffers.dll => 7
	i64 u0xc278de356ad8a9e3, ; 580: Microsoft.IdentityModel.Logging => 175
	i64 u0xc2902288a6b71969, ; 581: lib-zh-Hant-System.ServiceModel.NetFramingBase.resources.dll.so => 228
	i64 u0xc2902f6cf5452577, ; 582: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 583: System.IO.FileSystem.Watcher => 50
	i64 u0xc2b6c7ee1d841808, ; 584: ko/System.ServiceModel.NetFramingBase.resources => 222
	i64 u0xc30b52815b58ac2c, ; 585: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 586: System.Threading.Overlapped => 141
	i64 u0xc373cc79ffb39da5, ; 587: lib-es-System.ServiceModel.Primitives.resources.dll.so => 244
	i64 u0xc3c86c1e5e12f03d, ; 588: WindowsBase => 166
	i64 u0xc3de36b39f4396f1, ; 589: tr/System.ServiceModel.NetTcp.resources.dll => 239
	i64 u0xc421b61fd853169d, ; 590: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 591: System.Runtime.Serialization.Json => 113
	i64 u0xc48d5bbc1d9c4baf, ; 592: Microsoft.IdentityModel.Tokens.Saml => 178
	i64 u0xc50fded0ded1418c, ; 593: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 594: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5325b2fcb37446f, ; 595: lib_System.Private.Xml.dll.so => 89
	i64 u0xc5a0f4b95a699af7, ; 596: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5c0f9d7738fb03e, ; 597: lib-it-System.ServiceModel.Federation.resources.dll.so => 194
	i64 u0xc5cdcd5b6277579e, ; 598: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc712817c78889718, ; 599: ko/System.ServiceModel.Federation.resources.dll => 196
	i64 u0xc7c01e7d7c93a110, ; 600: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 601: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 602: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 603: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 604: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc9c62c8f354ac568, ; 605: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca5801070d9fccfb, ; 606: System.Text.Encoding => 136
	i64 u0xcb27a7b77c658eac, ; 607: System.ServiceModel.Http => 183
	i64 u0xcbb5f80c7293e696, ; 608: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 609: lib__Microsoft.Android.Resource.Designer.dll.so => 256
	i64 u0xcc2876b32ef2794c, ; 610: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc9fa2923aa1c9ef, ; 611: System.Diagnostics.Contracts.dll => 25
	i64 u0xcd10a42808629144, ; 612: System.Net.Requests => 73
	i64 u0xcdb6fabc1cfaeb73, ; 613: zh-Hans/System.ServiceModel.Primitives.resources.dll => 253
	i64 u0xce5fa9297be87bb1, ; 614: it/System.ServiceModel.Primitives.resources => 246
	i64 u0xcf23d8093f3ceadf, ; 615: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 616: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 617: System.Private.Xml.Linq => 88
	i64 u0xd04b5f59ed596e31, ; 618: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 619: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd07cfc64a7f15335, ; 620: lib-ja-System.ServiceModel.Http.resources.dll.so => 208
	i64 u0xd0bf912ead88ee7d, ; 621: lib-ja-System.ServiceModel.Federation.resources.dll.so => 195
	i64 u0xd0de8a113e976700, ; 622: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 623: System.Runtime.Extensions => 104
	i64 u0xd12beacdfc14f696, ; 624: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 625: System.Net.Quic.dll => 72
	i64 u0xd2b06aa278ba1e89, ; 626: lib-fr-System.ServiceModel.Primitives.resources.dll.so => 245
	i64 u0xd333d0af9e423810, ; 627: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 628: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3651b6fc3125825, ; 629: System.Private.Uri.dll => 87
	i64 u0xd3801faafafb7698, ; 630: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e162f03c80c90e, ; 631: lib-zh-Hans-System.ServiceModel.Federation.resources.dll.so => 201
	i64 u0xd3edcc1f25459a50, ; 632: System.Reflection.Emit => 93
	i64 u0xd42961eb350ea9e6, ; 633: tr/System.ServiceModel.Federation.resources => 200
	i64 u0xd430e52f84548b3f, ; 634: lib-zh-Hans-System.ServiceModel.Http.resources.dll.so => 214
	i64 u0xd4336f77b442a771, ; 635: lib__01.SERVIDOR.dll.so => 255
	i64 u0xd4cd620631410343, ; 636: ja/System.ServiceModel.Http.resources => 208
	i64 u0xd4fa0abb79079ea9, ; 637: System.Security.Principal.dll => 129
	i64 u0xd68e59f35157fed7, ; 638: de/System.ServiceModel.Primitives.resources.dll => 243
	i64 u0xd6f58632fedbb216, ; 639: Microsoft.IdentityModel.Tokens.Saml.dll => 178
	i64 u0xd72c760af136e863, ; 640: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 641: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd8638978c13b5b54, ; 642: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 240
	i64 u0xd9f96c9b0f02d881, ; 643: lib-it-System.ServiceModel.NetFramingBase.resources.dll.so => 220
	i64 u0xdad05a11827959a3, ; 644: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 645: System.IO.FileSystem.Primitives => 49
	i64 u0xdb58816721c02a59, ; 646: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdb8dc7749e90ae5a, ; 647: pt-BR/System.ServiceModel.Primitives.resources.dll => 250
	i64 u0xdbf2a779fbc3ac31, ; 648: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 649: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 650: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc484a3cce4807d7, ; 651: lib-tr-System.ServiceModel.Primitives.resources.dll.so => 252
	i64 u0xdc75032002d1a212, ; 652: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 653: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdd2b722d78ef5f43, ; 654: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 655: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 656: System.Numerics.dll => 84
	i64 u0xde110ae80fa7c2e2, ; 657: System.Xml.XDocument.dll => 159
	i64 u0xde572c2b2fb32f93, ; 658: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xdf4b773de8fb1540, ; 659: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 660: System.Net.Ping => 70
	i64 u0xe021eaa401792a05, ; 661: System.Text.Encoding.dll => 136
	i64 u0xe04d12edb82323b4, ; 662: cs/System.ServiceModel.Primitives.resources.dll => 242
	i64 u0xe0e65c44a6b4e814, ; 663: zh-Hans/System.ServiceModel.Http.resources.dll => 214
	i64 u0xe10b760bb1462e7a, ; 664: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe17149f87c5f382d, ; 665: zh-Hant/System.ServiceModel.Primitives.resources => 254
	i64 u0xe192a588d4410686, ; 666: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 667: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 668: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 669: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 670: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 671: System.Net.Security.dll => 74
	i64 u0xe218f08cb872986b, ; 672: MobilApp => 0
	i64 u0xe2252a80fe853de4, ; 673: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 674: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 675: System.Net.Requests.dll => 73
	i64 u0xe2ad448dee50fbdf, ; 676: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 677: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 678: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 679: Mono.Android.Export.dll => 170
	i64 u0xe362cacd858b2c4b, ; 680: it/System.ServiceModel.Http.resources => 207
	i64 u0xe3b7cbae5ad66c75, ; 681: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe40da4c2053d9fc1, ; 682: lib_System.ServiceModel.dll.so => 189
	i64 u0xe4f74a0b5bf9703f, ; 683: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 684: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 685: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 686: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 687: System.Xml.dll => 164
	i64 u0xe6b7bd3a1b5613c4, ; 688: lib-pt-BR-System.ServiceModel.NetTcp.resources.dll.so => 237
	i64 u0xe7360805418372b7, ; 689: pl/System.ServiceModel.Primitives.resources => 249
	i64 u0xe7e03cc18dcdeb49, ; 690: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 691: lib_System.Configuration.dll.so => 19
	i64 u0xe896622fe0902957, ; 692: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 693: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 694: Microsoft.Win32.Registry => 5
	i64 u0xe94afa1d3ad97f77, ; 695: lib-zh-Hans-System.ServiceModel.NetTcp.resources.dll.so => 240
	i64 u0xe990c997dacceeeb, ; 696: System.ServiceModel.Http.dll => 183
	i64 u0xe9b9c8c0458fd92a, ; 697: System.Windows => 155
	i64 u0xea15e22d0bff96e1, ; 698: de/System.ServiceModel.Http.resources => 204
	i64 u0xeaa1fe7a46ae7be4, ; 699: Microsoft.IdentityModel.Xml => 179
	i64 u0xeb5f60bc5e2df133, ; 700: lib-zh-Hans-System.ServiceModel.Primitives.resources.dll.so => 253
	i64 u0xeba71a33dc0c2e2b, ; 701: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 241
	i64 u0xecef746f96f1ef0b, ; 702: cs/System.ServiceModel.NetTcp.resources.dll => 229
	i64 u0xed36be019dd1da2c, ; 703: lib-pt-BR-System.ServiceModel.Http.resources.dll.so => 211
	i64 u0xeda1f34cdf28fbe1, ; 704: Microsoft.IdentityModel.Protocols.WsTrust.dll => 176
	i64 u0xedc4817167106c23, ; 705: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 706: System.Memory.dll => 63
	i64 u0xee81f5b3f1c4f83b, ; 707: System.Threading.ThreadPool => 147
	i64 u0xeefc635595ef57f0, ; 708: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 709: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef09f569c5ccbdb6, ; 710: es/System.ServiceModel.Primitives.resources => 244
	i64 u0xefd1e0c4e5c9b371, ; 711: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 712: System.Formats.Tar.dll => 39
	i64 u0xf02e3ec81cbf3b99, ; 713: pl/System.ServiceModel.Federation.resources.dll => 197
	i64 u0xf09e47b6ae914f6e, ; 714: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 715: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 716: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 717: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf14c59fdf211c781, ; 718: it/System.ServiceModel.Federation.resources => 194
	i64 u0xf161f4f3c3b7e62c, ; 719: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 720: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 721: System.Formats.Asn1.dll => 38
	i64 u0xf25c54f4b95c91ec, ; 722: cs/System.ServiceModel.Federation.resources.dll => 190
	i64 u0xf28aeeb8d20f95ee, ; 723: zh-Hant/System.ServiceModel.Federation.resources => 202
	i64 u0xf2cf3fb42b982dfb, ; 724: lib_System.ServiceModel.Http.dll.so => 183
	i64 u0xf300e085f8acd238, ; 725: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 726: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf3ad9b8fb3eefd12, ; 727: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 728: System => 165
	i64 u0xf408654b2a135055, ; 729: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 730: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 731: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4a9724d1ffb0dcf, ; 732: MobilApp.dll => 0
	i64 u0xf4c1dd70a5496a17, ; 733: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 734: System.ServiceProcess.dll => 133
	i64 u0xf50aaca21414073d, ; 735: ru/System.ServiceModel.Http.resources => 212
	i64 u0xf518f63ead11fcd1, ; 736: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 737: System.Net.WebHeaderCollection => 78
	i64 u0xf61ade9836ad4692, ; 738: Microsoft.IdentityModel.Tokens.dll => 177
	i64 u0xf67a4c0ec7f57c34, ; 739: lib_System.ServiceModel.Federation.dll.so => 182
	i64 u0xf70c0a7bf8ccf5af, ; 740: System.Web => 154
	i64 u0xf71859bbc52d946a, ; 741: de/System.ServiceModel.NetTcp.resources.dll => 230
	i64 u0xf7e2cac4c45067b3, ; 742: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf8aac5ea82de1348, ; 743: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 744: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf905fb23ddbde5f7, ; 745: lib_Microsoft.IdentityModel.Xml.dll.so => 179
	i64 u0xf915dc29808193a1, ; 746: System.Web.HttpUtility.dll => 153
	i64 u0xf9be54c8bcf8ff3b, ; 747: System.Security.AccessControl.dll => 118
	i64 u0xfa0e82300e67f913, ; 748: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 749: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 750: lib_System.Net.Security.dll.so => 74
	i64 u0xfa645d91e9fc4cba, ; 751: System.Threading.Thread => 146
	i64 u0xfaab63c73b0aa3d9, ; 752: pl/System.ServiceModel.NetFramingBase.resources.dll => 223
	i64 u0xfad4d2c770e827f9, ; 753: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 754: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 755: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 756: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 757: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 758: lib_System.Net.Http.dll.so => 65
	i64 u0xfc4ffc48a9f72d49, ; 759: ja/System.ServiceModel.Federation.resources => 195
	i64 u0xfc6b7527cc280b3f, ; 760: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc93fc307d279893, ; 761: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 762: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd49b3c1a76e2748, ; 763: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 764: System.Text.Encoding.Extensions => 135
	i64 u0xfda36abccf05cf5c, ; 765: System.Net.WebSockets.Client => 80
	i64 u0xfeb04e24525f377e, ; 766: System.ServiceModel.NetTcp => 185
	i64 u0xff210ce784fdeddf, ; 767: Microsoft.IdentityModel.Xml.dll => 179
	i64 u0xff270a55858bac8d, ; 768: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 769: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73 ; 770: System.ValueTuple.dll => 152
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [771 x i32] [
	i32 42, i32 13, i32 218, i32 180, i32 105, i32 171, i32 48, i32 235,
	i32 7, i32 86, i32 71, i32 178, i32 12, i32 102, i32 223, i32 156,
	i32 19, i32 250, i32 161, i32 167, i32 192, i32 242, i32 10, i32 252,
	i32 203, i32 211, i32 236, i32 188, i32 96, i32 13, i32 10, i32 127,
	i32 95, i32 229, i32 181, i32 140, i32 204, i32 39, i32 190, i32 172,
	i32 5, i32 67, i32 130, i32 68, i32 238, i32 66, i32 57, i32 193,
	i32 52, i32 209, i32 43, i32 174, i32 125, i32 67, i32 81, i32 158,
	i32 92, i32 99, i32 141, i32 215, i32 151, i32 162, i32 169, i32 201,
	i32 81, i32 4, i32 5, i32 203, i32 51, i32 101, i32 248, i32 56,
	i32 120, i32 98, i32 168, i32 118, i32 21, i32 219, i32 137, i32 97,
	i32 77, i32 119, i32 252, i32 8, i32 165, i32 70, i32 200, i32 218,
	i32 171, i32 145, i32 197, i32 40, i32 249, i32 47, i32 30, i32 226,
	i32 144, i32 163, i32 28, i32 84, i32 233, i32 77, i32 255, i32 43,
	i32 29, i32 42, i32 103, i32 117, i32 45, i32 91, i32 56, i32 148,
	i32 216, i32 213, i32 146, i32 100, i32 49, i32 225, i32 20, i32 246,
	i32 114, i32 202, i32 94, i32 58, i32 81, i32 191, i32 169, i32 26,
	i32 71, i32 240, i32 196, i32 69, i32 33, i32 14, i32 139, i32 38,
	i32 226, i32 187, i32 226, i32 134, i32 92, i32 88, i32 149, i32 24,
	i32 138, i32 57, i32 184, i32 51, i32 29, i32 157, i32 34, i32 164,
	i32 227, i32 52, i32 182, i32 256, i32 90, i32 0, i32 35, i32 157,
	i32 9, i32 76, i32 55, i32 206, i32 176, i32 13, i32 109, i32 32,
	i32 104, i32 84, i32 92, i32 53, i32 96, i32 58, i32 230, i32 9,
	i32 102, i32 243, i32 68, i32 187, i32 245, i32 125, i32 222, i32 116,
	i32 231, i32 135, i32 177, i32 199, i32 126, i32 106, i32 131, i32 194,
	i32 248, i32 147, i32 156, i32 97, i32 24, i32 250, i32 143, i32 245,
	i32 198, i32 3, i32 167, i32 100, i32 161, i32 99, i32 25, i32 93,
	i32 242, i32 168, i32 172, i32 192, i32 3, i32 210, i32 205, i32 1,
	i32 114, i32 33, i32 6, i32 181, i32 237, i32 156, i32 231, i32 206,
	i32 53, i32 189, i32 220, i32 218, i32 228, i32 249, i32 85, i32 212,
	i32 44, i32 104, i32 47, i32 138, i32 64, i32 225, i32 69, i32 80,
	i32 59, i32 89, i32 154, i32 133, i32 110, i32 171, i32 134, i32 140,
	i32 40, i32 177, i32 238, i32 60, i32 79, i32 25, i32 36, i32 219,
	i32 99, i32 71, i32 22, i32 247, i32 121, i32 69, i32 107, i32 119,
	i32 235, i32 117, i32 11, i32 2, i32 124, i32 115, i32 184, i32 188,
	i32 142, i32 41, i32 87, i32 217, i32 173, i32 27, i32 224, i32 148,
	i32 1, i32 236, i32 254, i32 44, i32 149, i32 199, i32 18, i32 86,
	i32 41, i32 235, i32 94, i32 28, i32 41, i32 78, i32 204, i32 144,
	i32 108, i32 11, i32 105, i32 137, i32 16, i32 122, i32 66, i32 157,
	i32 22, i32 102, i32 174, i32 234, i32 63, i32 58, i32 110, i32 173,
	i32 9, i32 120, i32 198, i32 98, i32 105, i32 247, i32 111, i32 49,
	i32 20, i32 211, i32 201, i32 72, i32 155, i32 39, i32 216, i32 35,
	i32 38, i32 186, i32 108, i32 207, i32 21, i32 186, i32 221, i32 188,
	i32 197, i32 15, i32 79, i32 79, i32 231, i32 184, i32 224, i32 232,
	i32 223, i32 152, i32 212, i32 21, i32 227, i32 50, i32 51, i32 198,
	i32 195, i32 251, i32 94, i32 236, i32 16, i32 180, i32 192, i32 123,
	i32 160, i32 45, i32 116, i32 63, i32 239, i32 208, i32 166, i32 253,
	i32 14, i32 206, i32 111, i32 210, i32 60, i32 241, i32 121, i32 2,
	i32 227, i32 185, i32 6, i32 17, i32 77, i32 228, i32 131, i32 193,
	i32 83, i32 12, i32 34, i32 119, i32 181, i32 85, i32 18, i32 190,
	i32 72, i32 215, i32 95, i32 165, i32 82, i32 174, i32 154, i32 36,
	i32 151, i32 248, i32 205, i32 144, i32 56, i32 113, i32 239, i32 221,
	i32 37, i32 189, i32 115, i32 14, i32 210, i32 146, i32 43, i32 98,
	i32 168, i32 16, i32 48, i32 107, i32 97, i32 199, i32 27, i32 128,
	i32 29, i32 128, i32 44, i32 149, i32 8, i32 132, i32 221, i32 255,
	i32 42, i32 33, i32 256, i32 46, i32 143, i32 138, i32 62, i32 132,
	i32 48, i32 254, i32 182, i32 160, i32 234, i32 46, i32 164, i32 175,
	i32 175, i32 187, i32 217, i32 18, i32 8, i32 124, i32 59, i32 141,
	i32 233, i32 150, i32 142, i32 126, i32 251, i32 160, i32 162, i32 26,
	i32 244, i32 217, i32 185, i32 216, i32 82, i32 193, i32 209, i32 127,
	i32 101, i32 148, i32 54, i32 162, i32 167, i32 203, i32 131, i32 180,
	i32 37, i32 22, i32 219, i32 112, i32 90, i32 50, i32 60, i32 122,
	i32 83, i32 127, i32 163, i32 166, i32 4, i32 170, i32 2, i32 116,
	i32 247, i32 230, i32 207, i32 233, i32 19, i32 89, i32 65, i32 30,
	i32 232, i32 241, i32 59, i32 229, i32 215, i32 111, i32 205, i32 32,
	i32 128, i32 159, i32 140, i32 186, i32 232, i32 225, i32 153, i32 17,
	i32 75, i32 74, i32 15, i32 169, i32 213, i32 85, i32 124, i32 224,
	i32 34, i32 209, i32 118, i32 139, i32 122, i32 106, i32 196, i32 214,
	i32 54, i32 47, i32 28, i32 145, i32 147, i32 234, i32 35, i32 191,
	i32 220, i32 238, i32 173, i32 251, i32 75, i32 161, i32 1, i32 159,
	i32 12, i32 155, i32 246, i32 151, i32 202, i32 76, i32 103, i32 112,
	i32 65, i32 237, i32 66, i32 45, i32 109, i32 191, i32 7, i32 176,
	i32 55, i32 64, i32 222, i32 20, i32 109, i32 101, i32 213, i32 62,
	i32 200, i32 142, i32 243, i32 7, i32 175, i32 228, i32 170, i32 50,
	i32 222, i32 115, i32 141, i32 244, i32 166, i32 239, i32 80, i32 113,
	i32 178, i32 17, i32 73, i32 89, i32 87, i32 194, i32 120, i32 196,
	i32 135, i32 153, i32 106, i32 11, i32 90, i32 31, i32 136, i32 183,
	i32 40, i32 256, i32 139, i32 25, i32 73, i32 253, i32 246, i32 27,
	i32 67, i32 88, i32 95, i32 113, i32 208, i32 195, i32 31, i32 104,
	i32 37, i32 72, i32 245, i32 108, i32 123, i32 87, i32 86, i32 201,
	i32 93, i32 200, i32 214, i32 255, i32 208, i32 129, i32 243, i32 178,
	i32 163, i32 130, i32 240, i32 220, i32 10, i32 49, i32 91, i32 250,
	i32 150, i32 62, i32 136, i32 252, i32 150, i32 61, i32 117, i32 137,
	i32 84, i32 159, i32 143, i32 82, i32 70, i32 136, i32 242, i32 214,
	i32 125, i32 254, i32 54, i32 110, i32 130, i32 88, i32 23, i32 74,
	i32 0, i32 129, i32 31, i32 73, i32 158, i32 23, i32 4, i32 170,
	i32 207, i32 123, i32 189, i32 114, i32 172, i32 32, i32 3, i32 164,
	i32 237, i32 249, i32 30, i32 19, i32 93, i32 36, i32 5, i32 240,
	i32 183, i32 155, i32 204, i32 179, i32 253, i32 241, i32 229, i32 211,
	i32 176, i32 76, i32 63, i32 147, i32 121, i32 134, i32 244, i32 100,
	i32 39, i32 197, i32 68, i32 26, i32 75, i32 78, i32 194, i32 24,
	i32 152, i32 38, i32 190, i32 202, i32 183, i32 133, i32 103, i32 57,
	i32 165, i32 91, i32 61, i32 132, i32 0, i32 46, i32 133, i32 212,
	i32 145, i32 78, i32 177, i32 182, i32 154, i32 230, i32 83, i32 61,
	i32 96, i32 179, i32 153, i32 118, i32 6, i32 15, i32 74, i32 146,
	i32 223, i32 52, i32 70, i32 23, i32 158, i32 126, i32 65, i32 195,
	i32 112, i32 55, i32 53, i32 107, i32 135, i32 80, i32 185, i32 179,
	i32 129, i32 64, i32 152
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 278e101698269c9bc8840aa94d72e7f24066a96d"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
