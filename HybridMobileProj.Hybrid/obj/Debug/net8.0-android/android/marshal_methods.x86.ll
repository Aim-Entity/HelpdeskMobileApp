; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [367 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [728 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 199
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 282
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 316
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 324
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 333
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 144
	i32 65960268, ; 11: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 226
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 357
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 224
	i32 82292897, ; 16: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 17: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 341
	i32 101534019, ; 18: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 300
	i32 117431740, ; 19: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 20: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 300
	i32 122350210, ; 21: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 320
	i32 136584136, ; 23: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 356
	i32 140062828, ; 24: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 349
	i32 142721839, ; 25: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 27: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 28: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 256
	i32 176265551, ; 29: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 30: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 302
	i32 184328833, ; 31: System.ValueTuple.dll => 0xafca281 => 150
	i32 205061960, ; 32: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 33: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 254
	i32 220171995, ; 34: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 276
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 40: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 176
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 259
	i32 276479776, ; 42: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 278
	i32 280482487, ; 44: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 275
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 354
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 245
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 50: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 332
	i32 330147069, ; 51: Microsoft.SqlServer.Server => 0x13ada4fd => 225
	i32 342366114, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 277
	i32 347068432, ; 53: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 229
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 55: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 56: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 57: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 58: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 59: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 60: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 61: _Microsoft.Android.Resource.Designer => 0x17969339 => 363
	i32 403441872, ; 62: WindowsBase => 0x180c08d0 => 164
	i32 409257351, ; 63: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 352
	i32 441335492, ; 64: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 260
	i32 442565967, ; 65: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 273
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 457806524, ; 69: Application => 0x1b4992bc => 358
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 72: System.dll => 0x1bff388e => 163
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 275
	i32 485463106, ; 74: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 212
	i32 486930444, ; 75: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 288
	i32 489220957, ; 76: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 330
	i32 498788369, ; 77: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 209
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 320
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 82: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 351
	i32 539058512, ; 83: Microsoft.Extensions.Logging => 0x20216150 => 205
	i32 540030774, ; 84: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 85: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 86: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 87: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 182
	i32 549171840, ; 88: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 89: Jsr305Binding => 0x213954e7 => 313
	i32 569601784, ; 90: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 311
	i32 571435654, ; 91: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 202
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 93: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 94: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 95: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 96: Xamarin.AndroidX.CustomView => 0x2568904f => 265
	i32 627931235, ; 97: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 343
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 271
	i32 643868501, ; 99: System.Net => 0x2660a755 => 81
	i32 645360334, ; 100: Shared => 0x26776ace => 362
	i32 662205335, ; 101: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 102: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 307
	i32 666292255, ; 103: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 252
	i32 672442732, ; 104: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 105: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 106: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 107: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 322
	i32 693804605, ; 108: System.Windows => 0x295a9e3d => 153
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 317
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 321
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 114: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 115: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 227
	i32 752232764, ; 116: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 117: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 242
	i32 759454413, ; 118: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 119: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 120: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 121: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 349
	i32 789151979, ; 122: Microsoft.Extensions.Options => 0x2f0980eb => 208
	i32 790371945, ; 123: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 266
	i32 804008546, ; 124: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 180
	i32 804715423, ; 125: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 280
	i32 809851609, ; 127: System.Drawing.Common.dll => 0x30455ad9 => 232
	i32 817328830, ; 128: Plugins.InMemory.dll => 0x30b772be => 361
	i32 823281589, ; 129: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 130: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 131: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 132: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 133: Xamarin.AndroidX.Print => 0x3246f6cd => 293
	i32 869139383, ; 134: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 334
	i32 873119928, ; 135: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 136: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 137: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 138: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 348
	i32 904024072, ; 139: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 140: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 141: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 345
	i32 928116545, ; 142: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 316
	i32 952186615, ; 143: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 144: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 321
	i32 961460050, ; 145: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 338
	i32 966729478, ; 146: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 314
	i32 967690846, ; 147: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 277
	i32 975236339, ; 148: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 149: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 986514023, ; 150: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 151: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 152: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 347
	i32 992768348, ; 153: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 154: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 155: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 204
	i32 1001831731, ; 156: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 157: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 297
	i32 1019214401, ; 158: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 159: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 198
	i32 1031528504, ; 160: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 315
	i32 1035644815, ; 161: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 250
	i32 1036536393, ; 162: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 163: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 328
	i32 1044663988, ; 164: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1046434417, ; 165: Domain.dll => 0x3e5f5271 => 359
	i32 1052210849, ; 166: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 284
	i32 1062017875, ; 167: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 211
	i32 1067306892, ; 168: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 169: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 170: Xamarin.Kotlin.StdLib => 0x409e66d8 => 318
	i32 1098259244, ; 171: System => 0x41761b2c => 163
	i32 1106973742, ; 172: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 195
	i32 1108272742, ; 173: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 350
	i32 1117529484, ; 174: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 344
	i32 1118262833, ; 175: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 340
	i32 1121599056, ; 176: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 283
	i32 1127624469, ; 177: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 207
	i32 1138436374, ; 178: Microsoft.Data.SqlClient.dll => 0x43db2916 => 183
	i32 1145483052, ; 179: System.Windows.Extensions.dll => 0x4446af2c => 240
	i32 1149092582, ; 180: Xamarin.AndroidX.Window => 0x447dc2e6 => 310
	i32 1157931901, ; 181: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 186
	i32 1168523401, ; 182: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 346
	i32 1170634674, ; 183: System.Web.dll => 0x45c677b2 => 152
	i32 1173126369, ; 184: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 200
	i32 1175144683, ; 185: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 306
	i32 1178241025, ; 186: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 291
	i32 1202000627, ; 187: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 186
	i32 1204270330, ; 188: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 252
	i32 1204575371, ; 189: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 191
	i32 1208641965, ; 190: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 191: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 192: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 311
	i32 1253011324, ; 193: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 194: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 326
	i32 1264511973, ; 195: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 301
	i32 1267360935, ; 196: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 305
	i32 1273260888, ; 197: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 257
	i32 1275534314, ; 198: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 322
	i32 1278448581, ; 199: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 249
	i32 1292207520, ; 200: SQLitePCLRaw.core.dll => 0x4d0585a0 => 228
	i32 1293217323, ; 201: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 268
	i32 1308624726, ; 202: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 335
	i32 1309188875, ; 203: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 204: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 310
	i32 1324164729, ; 205: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 206: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 207: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 355
	i32 1349609095, ; 208: HybridMobileProj.Hybrid => 0x50716687 => 0
	i32 1364015309, ; 209: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 210: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 356
	i32 1376866003, ; 211: Xamarin.AndroidX.SavedState => 0x52114ed3 => 297
	i32 1379779777, ; 212: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 213: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 214: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 261
	i32 1408764838, ; 215: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 216: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 217: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 218: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 324
	i32 1434145427, ; 219: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 220: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 314
	i32 1439761251, ; 221: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 222: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 223: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 224: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 201
	i32 1457743152, ; 225: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 226: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 227: System.IdentityModel.Tokens.Jwt => 0x57137723 => 233
	i32 1461004990, ; 228: es\Microsoft.Maui.Controls.resources => 0x57152abe => 330
	i32 1461234159, ; 229: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 230: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 231: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 232: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 251
	i32 1470490898, ; 233: Microsoft.Extensions.Primitives => 0x57a5e912 => 209
	i32 1479771757, ; 234: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 235: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 236: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 237: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 298
	i32 1490351284, ; 238: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 184
	i32 1498168481, ; 239: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 213
	i32 1521091094, ; 240: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 204
	i32 1526286932, ; 241: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 354
	i32 1536373174, ; 242: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 243: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 244: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 245: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 180
	i32 1550322496, ; 246: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565310744, ; 247: System.Runtime.Caching => 0x5d4cbf18 => 236
	i32 1565862583, ; 248: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 249: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 250: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 251: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582305585, ; 252: Azure.Identity => 0x5e501131 => 173
	i32 1582372066, ; 253: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 267
	i32 1592978981, ; 254: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 255: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 315
	i32 1601112923, ; 256: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1604827217, ; 257: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 258: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 259: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 287
	i32 1622358360, ; 260: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 261: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 309
	i32 1628113371, ; 262: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 216
	i32 1632842087, ; 263: Microsoft.Extensions.Configuration.Json => 0x61533167 => 196
	i32 1635184631, ; 264: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 271
	i32 1636350590, ; 265: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 264
	i32 1639515021, ; 266: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 267: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 268: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 269: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 179
	i32 1657153582, ; 270: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 271: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 303
	i32 1658251792, ; 272: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 312
	i32 1670060433, ; 273: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 259
	i32 1675553242, ; 274: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 275: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 276: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 277: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 278: Microsoft.Data.Sqlite => 0x649e8ef3 => 184
	i32 1689493916, ; 279: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 185
	i32 1691477237, ; 280: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 281: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 282: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 319
	i32 1701541528, ; 283: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 284: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 229
	i32 1720223769, ; 285: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 280
	i32 1726116996, ; 286: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 287: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 288: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 255
	i32 1743415430, ; 289: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 325
	i32 1744735666, ; 290: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746115085, ; 291: System.IO.Pipelines.dll => 0x68139a0d => 234
	i32 1746316138, ; 292: Mono.Android.Export => 0x6816ab6a => 168
	i32 1750313021, ; 293: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 294: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 295: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 178
	i32 1763938596, ; 296: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 297: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 298: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 302
	i32 1770582343, ; 299: Microsoft.Extensions.Logging.dll => 0x6988f147 => 205
	i32 1776026572, ; 300: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 301: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 302: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 303: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 341
	i32 1788241197, ; 304: Xamarin.AndroidX.Fragment => 0x6a96652d => 273
	i32 1793755602, ; 305: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 333
	i32 1794500907, ; 306: Microsoft.Identity.Client.dll => 0x6af5e92b => 210
	i32 1796167890, ; 307: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 182
	i32 1808609942, ; 308: Xamarin.AndroidX.Loader => 0x6bcd3296 => 287
	i32 1813058853, ; 309: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 318
	i32 1813201214, ; 310: Xamarin.Google.Android.Material => 0x6c13413e => 312
	i32 1818569960, ; 311: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 292
	i32 1818787751, ; 312: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 313: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 314: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 315: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 206
	i32 1829150748, ; 316: System.Windows.Extensions => 0x6d06a01c => 240
	i32 1847515442, ; 317: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 242
	i32 1853025655, ; 318: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 350
	i32 1858542181, ; 319: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 320: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 321: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 216
	i32 1875935024, ; 322: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 332
	i32 1879696579, ; 323: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 324: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 253
	i32 1886040351, ; 325: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 188
	i32 1888955245, ; 326: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 327: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 328: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 326
	i32 1898237753, ; 329: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 330: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 331: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1919899850, ; 332: Infrastructure.dll => 0x726f58ca => 360
	i32 1939592360, ; 333: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 334: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 337
	i32 1956758971, ; 335: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 336: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 299
	i32 1968388702, ; 337: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 192
	i32 1983156543, ; 338: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 319
	i32 1985761444, ; 339: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 244
	i32 1986222447, ; 340: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 217
	i32 2001968065, ; 341: Plugins.InMemory => 0x77539bc1 => 361
	i32 2003115576, ; 342: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 329
	i32 2011961780, ; 343: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 344: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 188
	i32 2019465201, ; 345: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 284
	i32 2031763787, ; 346: Xamarin.Android.Glide => 0x791a414b => 241
	i32 2040764568, ; 347: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 211
	i32 2045470958, ; 348: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 349: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 194
	i32 2055257422, ; 350: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 279
	i32 2060060697, ; 351: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 352: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 328
	i32 2070888862, ; 353: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 354: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 203
	i32 2079903147, ; 355: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 356: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 357: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 230
	i32 2127167465, ; 358: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 359: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 360: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 361: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 362: Microsoft.Maui => 0x80bd55ad => 222
	i32 2169148018, ; 363: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 336
	i32 2181898931, ; 364: Microsoft.Extensions.Options.dll => 0x820d22b3 => 208
	i32 2192057212, ; 365: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 206
	i32 2193016926, ; 366: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 367: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 199
	i32 2201107256, ; 368: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 323
	i32 2201231467, ; 369: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 370: it\Microsoft.Maui.Controls.resources => 0x839595db => 338
	i32 2217644978, ; 371: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 306
	i32 2222056684, ; 372: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2244775296, ; 373: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 288
	i32 2252106437, ; 374: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2252897993, ; 375: Microsoft.EntityFrameworkCore => 0x86487ec9 => 185
	i32 2253551641, ; 376: Microsoft.IdentityModel.Protocols => 0x86527819 => 215
	i32 2256313426, ; 377: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 378: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 379: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 193
	i32 2267999099, ; 380: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 243
	i32 2279755925, ; 381: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 295
	i32 2293034957, ; 382: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 383: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 384: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 385: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 342
	i32 2305521784, ; 386: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2315684594, ; 387: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 247
	i32 2320631194, ; 388: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2340441535, ; 389: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 390: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2353062107, ; 391: System.Net.Primitives => 0x8c40e0db => 70
	i32 2363376857, ; 392: Application.dll => 0x8cde44d9 => 358
	i32 2366048013, ; 393: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 336
	i32 2368005991, ; 394: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2369706906, ; 395: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 214
	i32 2371007202, ; 396: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 192
	i32 2378619854, ; 397: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 398: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 399: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 337
	i32 2400516001, ; 400: Domain => 0x8f14f7a1 => 359
	i32 2401565422, ; 401: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 402: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 270
	i32 2411328690, ; 403: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 176
	i32 2412485197, ; 404: Infrastructure => 0x8fcb9a4d => 360
	i32 2421380589, ; 405: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 406: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 257
	i32 2427813419, ; 407: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 334
	i32 2435356389, ; 408: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 409: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 410: Microsoft.JSInterop.dll => 0x919672ca => 218
	i32 2454642406, ; 411: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 412: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 413: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 414: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 227
	i32 2465532216, ; 415: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 260
	i32 2471841756, ; 416: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 417: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 418: Microsoft.Maui.Controls => 0x93dba8a1 => 220
	i32 2483903535, ; 419: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 420: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 421: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 422: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 423: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 340
	i32 2505896520, ; 424: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 282
	i32 2522472828, ; 425: Xamarin.Android.Glide.dll => 0x9659e17c => 241
	i32 2534521373, ; 426: Shared.dll => 0x9711ba1d => 362
	i32 2537015816, ; 427: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 175
	i32 2538310050, ; 428: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 429: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 335
	i32 2562349572, ; 430: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 431: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 432: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 339
	i32 2581783588, ; 433: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 283
	i32 2581819634, ; 434: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 305
	i32 2585220780, ; 435: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 436: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 437: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 177
	i32 2589602615, ; 438: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2592341985, ; 439: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 200
	i32 2593496499, ; 440: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 344
	i32 2605712449, ; 441: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 323
	i32 2615233544, ; 442: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 274
	i32 2616218305, ; 443: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 207
	i32 2617129537, ; 444: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 445: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 446: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 264
	i32 2624644809, ; 447: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 269
	i32 2626831493, ; 448: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 339
	i32 2627185994, ; 449: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 450: System.Memory.Data => 0x9ca74fdc => 235
	i32 2629843544, ; 451: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 452: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 278
	i32 2634653062, ; 453: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 187
	i32 2640290731, ; 454: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 214
	i32 2640706905, ; 455: Azure.Core => 0x9d65fd59 => 172
	i32 2660759594, ; 456: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 237
	i32 2663391936, ; 457: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 243
	i32 2663698177, ; 458: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 459: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 460: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 461: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 462: Azure.Identity.dll => 0x9f9148fa => 173
	i32 2686887180, ; 463: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 464: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 179
	i32 2693849962, ; 465: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 466: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 303
	i32 2715334215, ; 467: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 468: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 469: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 470: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 471: Xamarin.AndroidX.Activity => 0xa2e0939b => 245
	i32 2735172069, ; 472: System.Threading.Channels => 0xa30769e5 => 138
	i32 2735631878, ; 473: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 175
	i32 2737747696, ; 474: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 251
	i32 2740051746, ; 475: Microsoft.Identity.Client => 0xa351df22 => 210
	i32 2740698338, ; 476: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 325
	i32 2740948882, ; 477: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 478: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 479: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 345
	i32 2755098380, ; 480: Microsoft.SqlServer.Server.dll => 0xa437770c => 225
	i32 2755643133, ; 481: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 189
	i32 2758225723, ; 482: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 221
	i32 2764765095, ; 483: Microsoft.Maui.dll => 0xa4caf7a7 => 222
	i32 2765824710, ; 484: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 485: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 317
	i32 2778768386, ; 486: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 308
	i32 2779977773, ; 487: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 296
	i32 2785988530, ; 488: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 351
	i32 2788224221, ; 489: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 274
	i32 2795666278, ; 490: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 226
	i32 2801831435, ; 491: Microsoft.Maui.Graphics => 0xa7008e0b => 224
	i32 2803228030, ; 492: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2810250172, ; 493: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 261
	i32 2819470561, ; 494: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 495: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 496: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 296
	i32 2824502124, ; 497: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2833784645, ; 498: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 181
	i32 2838993487, ; 499: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 285
	i32 2841355853, ; 500: System.Security.Permissions => 0xa95ba64d => 238
	i32 2847789619, ; 501: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 187
	i32 2849599387, ; 502: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 503: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 308
	i32 2855708567, ; 504: Xamarin.AndroidX.Transition => 0xaa36a797 => 304
	i32 2861098320, ; 505: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 506: Microsoft.Maui.Essentials => 0xaa8a4878 => 223
	i32 2867946736, ; 507: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 237
	i32 2870099610, ; 508: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 246
	i32 2875164099, ; 509: Jsr305Binding.dll => 0xab5f85c3 => 313
	i32 2875220617, ; 510: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 511: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 272
	i32 2887636118, ; 512: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 513: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 178
	i32 2899753641, ; 514: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 515: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 516: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 517: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 518: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2911054922, ; 519: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 203
	i32 2916838712, ; 520: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 309
	i32 2919462931, ; 521: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 522: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 248
	i32 2936416060, ; 523: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 524: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 525: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2944313911, ; 526: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 231
	i32 2959614098, ; 527: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 528: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 529: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 530: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 268
	i32 2987532451, ; 531: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 299
	i32 2996846495, ; 532: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 281
	i32 3012788804, ; 533: System.Configuration.ConfigurationManager => 0xb3938244 => 231
	i32 3016983068, ; 534: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 301
	i32 3023353419, ; 535: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 536: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 276
	i32 3033605958, ; 537: System.Memory.Data.dll => 0xb4d12746 => 235
	i32 3038032645, ; 538: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 363
	i32 3053864966, ; 539: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 331
	i32 3056245963, ; 540: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 298
	i32 3057625584, ; 541: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 289
	i32 3059408633, ; 542: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 543: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 544: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 190
	i32 3075834255, ; 545: System.Threading.Tasks => 0xb755818f => 143
	i32 3077847600, ; 546: HybridMobileProj.Hybrid.dll => 0xb7743a30 => 0
	i32 3084678329, ; 547: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 217
	i32 3090735792, ; 548: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 549: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 550: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 551: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 552: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 553: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 554: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 555: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 556: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 557: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 558: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 559: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 290
	i32 3192346100, ; 560: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 561: System.Web => 0xbe592c0c => 152
	i32 3195844289, ; 562: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 190
	i32 3204380047, ; 563: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 564: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 565: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 267
	i32 3213246214, ; 566: System.Security.Permissions.dll => 0xbf863f06 => 238
	i32 3220365878, ; 567: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 568: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 569: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 570: Xamarin.AndroidX.CardView => 0xc235e84d => 255
	i32 3265493905, ; 571: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 572: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 573: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 574: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 575: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 576: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 577: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 578: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 579: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 331
	i32 3312457198, ; 580: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 213
	i32 3316684772, ; 581: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 582: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 265
	i32 3317144872, ; 583: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 584: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 253
	i32 3345895724, ; 585: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 294
	i32 3346324047, ; 586: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 291
	i32 3357674450, ; 587: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 348
	i32 3358260929, ; 588: System.Text.Json => 0xc82afec1 => 239
	i32 3360279109, ; 589: SQLitePCLRaw.core => 0xc849ca45 => 228
	i32 3362336904, ; 590: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 246
	i32 3362522851, ; 591: Xamarin.AndroidX.Core => 0xc86c06e3 => 262
	i32 3366347497, ; 592: Java.Interop => 0xc8a662e9 => 167
	i32 3374879918, ; 593: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 215
	i32 3374999561, ; 594: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 295
	i32 3381016424, ; 595: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 327
	i32 3395150330, ; 596: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 597: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 598: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 266
	i32 3406629867, ; 599: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 201
	i32 3421170118, ; 600: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 194
	i32 3428513518, ; 601: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 197
	i32 3429136800, ; 602: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 603: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 604: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 269
	i32 3445260447, ; 605: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 606: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 219
	i32 3458724246, ; 607: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 346
	i32 3464190856, ; 608: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 177
	i32 3471940407, ; 609: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 610: Mono.Android => 0xcf3163e6 => 170
	i32 3484440000, ; 611: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 347
	i32 3485117614, ; 612: System.Text.Json.dll => 0xcfbaacae => 239
	i32 3486566296, ; 613: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 614: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 258
	i32 3500000672, ; 615: Microsoft.JSInterop => 0xd09dc5a0 => 218
	i32 3509114376, ; 616: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 617: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 618: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 619: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 620: Microsoft.Data.SqlClient => 0xd35114f1 => 183
	i32 3560100363, ; 621: System.Threading.Timer => 0xd432d20b => 146
	i32 3561949811, ; 622: Azure.Core.dll => 0xd44f0a73 => 172
	i32 3570554715, ; 623: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 624: System.Runtime.Caching.dll => 0xd4d3289f => 236
	i32 3580758918, ; 625: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 355
	i32 3592228221, ; 626: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 357
	i32 3597029428, ; 627: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 244
	i32 3598340787, ; 628: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 629: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 630: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 631: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 293
	i32 3633644679, ; 632: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 248
	i32 3638274909, ; 633: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 634: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 279
	i32 3643446276, ; 635: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 352
	i32 3643854240, ; 636: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 290
	i32 3645089577, ; 637: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 638: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 193
	i32 3660523487, ; 639: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 640: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3682565725, ; 641: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 254
	i32 3684561358, ; 642: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 258
	i32 3689375977, ; 643: System.Drawing.Common => 0xdbe768e9 => 232
	i32 3700591436, ; 644: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 212
	i32 3700866549, ; 645: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 646: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 263
	i32 3716563718, ; 647: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 648: Xamarin.AndroidX.Annotation => 0xdda814c6 => 247
	i32 3722202641, ; 649: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 196
	i32 3724971120, ; 650: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 289
	i32 3732100267, ; 651: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 652: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 181
	i32 3737834244, ; 653: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 654: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 655: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3751619990, ; 656: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 327
	i32 3754567612, ; 657: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 230
	i32 3758424670, ; 658: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 195
	i32 3786282454, ; 659: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 256
	i32 3792276235, ; 660: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 661: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 219
	i32 3802395368, ; 662: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 663: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 664: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 665: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 666: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 198
	i32 3844307129, ; 667: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 668: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 669: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 670: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 671: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 672: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 673: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 304
	i32 3888767677, ; 674: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 294
	i32 3896106733, ; 675: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 676: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 262
	i32 3901907137, ; 677: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 678: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 343
	i32 3920810846, ; 679: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 680: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 307
	i32 3928044579, ; 681: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 682: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 683: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 292
	i32 3945713374, ; 684: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 685: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 686: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 250
	i32 3959773229, ; 687: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 281
	i32 4003436829, ; 688: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 689: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 249
	i32 4023392905, ; 690: System.IO.Pipelines => 0xefd01a89 => 234
	i32 4025784931, ; 691: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 692: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 221
	i32 4054681211, ; 693: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 694: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 695: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4091086043, ; 696: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 329
	i32 4094352644, ; 697: Microsoft.Maui.Essentials.dll => 0xf40add04 => 223
	i32 4099507663, ; 698: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 699: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 700: Xamarin.AndroidX.Emoji2 => 0xf479582c => 270
	i32 4101842092, ; 701: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 191
	i32 4103439459, ; 702: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 353
	i32 4126470640, ; 703: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 197
	i32 4127667938, ; 704: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 705: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 706: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 707: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 353
	i32 4151237749, ; 708: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 709: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 710: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 711: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 712: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 713: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 286
	i32 4185676441, ; 714: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 715: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 189
	i32 4196529839, ; 716: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 717: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 718: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 342
	i32 4256097574, ; 719: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 263
	i32 4258378803, ; 720: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 285
	i32 4260525087, ; 721: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 722: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 233
	i32 4271975918, ; 723: Microsoft.Maui.Controls.dll => 0xfea12dee => 220
	i32 4274976490, ; 724: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 725: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 286
	i32 4294648842, ; 726: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 202
	i32 4294763496 ; 727: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 272
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [728 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 199, ; 3
	i32 282, ; 4
	i32 316, ; 5
	i32 48, ; 6
	i32 324, ; 7
	i32 80, ; 8
	i32 333, ; 9
	i32 144, ; 10
	i32 226, ; 11
	i32 30, ; 12
	i32 357, ; 13
	i32 124, ; 14
	i32 224, ; 15
	i32 102, ; 16
	i32 341, ; 17
	i32 300, ; 18
	i32 107, ; 19
	i32 300, ; 20
	i32 138, ; 21
	i32 320, ; 22
	i32 356, ; 23
	i32 349, ; 24
	i32 77, ; 25
	i32 124, ; 26
	i32 13, ; 27
	i32 256, ; 28
	i32 132, ; 29
	i32 302, ; 30
	i32 150, ; 31
	i32 18, ; 32
	i32 254, ; 33
	i32 26, ; 34
	i32 276, ; 35
	i32 1, ; 36
	i32 59, ; 37
	i32 42, ; 38
	i32 91, ; 39
	i32 176, ; 40
	i32 259, ; 41
	i32 146, ; 42
	i32 278, ; 43
	i32 275, ; 44
	i32 54, ; 45
	i32 69, ; 46
	i32 354, ; 47
	i32 245, ; 48
	i32 83, ; 49
	i32 332, ; 50
	i32 225, ; 51
	i32 277, ; 52
	i32 229, ; 53
	i32 131, ; 54
	i32 55, ; 55
	i32 148, ; 56
	i32 74, ; 57
	i32 144, ; 58
	i32 62, ; 59
	i32 145, ; 60
	i32 363, ; 61
	i32 164, ; 62
	i32 352, ; 63
	i32 260, ; 64
	i32 12, ; 65
	i32 273, ; 66
	i32 125, ; 67
	i32 151, ; 68
	i32 358, ; 69
	i32 113, ; 70
	i32 165, ; 71
	i32 163, ; 72
	i32 275, ; 73
	i32 212, ; 74
	i32 288, ; 75
	i32 330, ; 76
	i32 84, ; 77
	i32 209, ; 78
	i32 149, ; 79
	i32 320, ; 80
	i32 60, ; 81
	i32 351, ; 82
	i32 205, ; 83
	i32 51, ; 84
	i32 103, ; 85
	i32 114, ; 86
	i32 182, ; 87
	i32 40, ; 88
	i32 313, ; 89
	i32 311, ; 90
	i32 202, ; 91
	i32 120, ; 92
	i32 52, ; 93
	i32 44, ; 94
	i32 119, ; 95
	i32 265, ; 96
	i32 343, ; 97
	i32 271, ; 98
	i32 81, ; 99
	i32 362, ; 100
	i32 136, ; 101
	i32 307, ; 102
	i32 252, ; 103
	i32 8, ; 104
	i32 73, ; 105
	i32 154, ; 106
	i32 322, ; 107
	i32 153, ; 108
	i32 92, ; 109
	i32 317, ; 110
	i32 45, ; 111
	i32 321, ; 112
	i32 109, ; 113
	i32 129, ; 114
	i32 227, ; 115
	i32 25, ; 116
	i32 242, ; 117
	i32 72, ; 118
	i32 55, ; 119
	i32 46, ; 120
	i32 349, ; 121
	i32 208, ; 122
	i32 266, ; 123
	i32 180, ; 124
	i32 22, ; 125
	i32 280, ; 126
	i32 232, ; 127
	i32 361, ; 128
	i32 86, ; 129
	i32 43, ; 130
	i32 159, ; 131
	i32 71, ; 132
	i32 293, ; 133
	i32 334, ; 134
	i32 3, ; 135
	i32 42, ; 136
	i32 63, ; 137
	i32 348, ; 138
	i32 16, ; 139
	i32 53, ; 140
	i32 345, ; 141
	i32 316, ; 142
	i32 105, ; 143
	i32 321, ; 144
	i32 338, ; 145
	i32 314, ; 146
	i32 277, ; 147
	i32 34, ; 148
	i32 157, ; 149
	i32 85, ; 150
	i32 32, ; 151
	i32 347, ; 152
	i32 12, ; 153
	i32 51, ; 154
	i32 204, ; 155
	i32 56, ; 156
	i32 297, ; 157
	i32 36, ; 158
	i32 198, ; 159
	i32 315, ; 160
	i32 250, ; 161
	i32 35, ; 162
	i32 328, ; 163
	i32 58, ; 164
	i32 359, ; 165
	i32 284, ; 166
	i32 211, ; 167
	i32 174, ; 168
	i32 17, ; 169
	i32 318, ; 170
	i32 163, ; 171
	i32 195, ; 172
	i32 350, ; 173
	i32 344, ; 174
	i32 340, ; 175
	i32 283, ; 176
	i32 207, ; 177
	i32 183, ; 178
	i32 240, ; 179
	i32 310, ; 180
	i32 186, ; 181
	i32 346, ; 182
	i32 152, ; 183
	i32 200, ; 184
	i32 306, ; 185
	i32 291, ; 186
	i32 186, ; 187
	i32 252, ; 188
	i32 191, ; 189
	i32 29, ; 190
	i32 52, ; 191
	i32 311, ; 192
	i32 5, ; 193
	i32 326, ; 194
	i32 301, ; 195
	i32 305, ; 196
	i32 257, ; 197
	i32 322, ; 198
	i32 249, ; 199
	i32 228, ; 200
	i32 268, ; 201
	i32 335, ; 202
	i32 85, ; 203
	i32 310, ; 204
	i32 61, ; 205
	i32 112, ; 206
	i32 355, ; 207
	i32 0, ; 208
	i32 57, ; 209
	i32 356, ; 210
	i32 297, ; 211
	i32 99, ; 212
	i32 19, ; 213
	i32 261, ; 214
	i32 111, ; 215
	i32 101, ; 216
	i32 102, ; 217
	i32 324, ; 218
	i32 104, ; 219
	i32 314, ; 220
	i32 71, ; 221
	i32 38, ; 222
	i32 32, ; 223
	i32 201, ; 224
	i32 103, ; 225
	i32 73, ; 226
	i32 233, ; 227
	i32 330, ; 228
	i32 9, ; 229
	i32 123, ; 230
	i32 46, ; 231
	i32 251, ; 232
	i32 209, ; 233
	i32 9, ; 234
	i32 43, ; 235
	i32 4, ; 236
	i32 298, ; 237
	i32 184, ; 238
	i32 213, ; 239
	i32 204, ; 240
	i32 354, ; 241
	i32 31, ; 242
	i32 137, ; 243
	i32 92, ; 244
	i32 180, ; 245
	i32 93, ; 246
	i32 236, ; 247
	i32 49, ; 248
	i32 140, ; 249
	i32 112, ; 250
	i32 139, ; 251
	i32 173, ; 252
	i32 267, ; 253
	i32 115, ; 254
	i32 315, ; 255
	i32 156, ; 256
	i32 76, ; 257
	i32 79, ; 258
	i32 287, ; 259
	i32 37, ; 260
	i32 309, ; 261
	i32 216, ; 262
	i32 196, ; 263
	i32 271, ; 264
	i32 264, ; 265
	i32 64, ; 266
	i32 137, ; 267
	i32 15, ; 268
	i32 179, ; 269
	i32 116, ; 270
	i32 303, ; 271
	i32 312, ; 272
	i32 259, ; 273
	i32 48, ; 274
	i32 70, ; 275
	i32 80, ; 276
	i32 126, ; 277
	i32 184, ; 278
	i32 185, ; 279
	i32 94, ; 280
	i32 121, ; 281
	i32 319, ; 282
	i32 26, ; 283
	i32 229, ; 284
	i32 280, ; 285
	i32 97, ; 286
	i32 28, ; 287
	i32 255, ; 288
	i32 325, ; 289
	i32 148, ; 290
	i32 234, ; 291
	i32 168, ; 292
	i32 4, ; 293
	i32 98, ; 294
	i32 178, ; 295
	i32 33, ; 296
	i32 93, ; 297
	i32 302, ; 298
	i32 205, ; 299
	i32 21, ; 300
	i32 41, ; 301
	i32 169, ; 302
	i32 341, ; 303
	i32 273, ; 304
	i32 333, ; 305
	i32 210, ; 306
	i32 182, ; 307
	i32 287, ; 308
	i32 318, ; 309
	i32 312, ; 310
	i32 292, ; 311
	i32 2, ; 312
	i32 134, ; 313
	i32 111, ; 314
	i32 206, ; 315
	i32 240, ; 316
	i32 242, ; 317
	i32 350, ; 318
	i32 58, ; 319
	i32 95, ; 320
	i32 216, ; 321
	i32 332, ; 322
	i32 39, ; 323
	i32 253, ; 324
	i32 188, ; 325
	i32 25, ; 326
	i32 94, ; 327
	i32 326, ; 328
	i32 89, ; 329
	i32 99, ; 330
	i32 10, ; 331
	i32 360, ; 332
	i32 87, ; 333
	i32 337, ; 334
	i32 100, ; 335
	i32 299, ; 336
	i32 192, ; 337
	i32 319, ; 338
	i32 244, ; 339
	i32 217, ; 340
	i32 361, ; 341
	i32 329, ; 342
	i32 7, ; 343
	i32 188, ; 344
	i32 284, ; 345
	i32 241, ; 346
	i32 211, ; 347
	i32 88, ; 348
	i32 194, ; 349
	i32 279, ; 350
	i32 153, ; 351
	i32 328, ; 352
	i32 33, ; 353
	i32 203, ; 354
	i32 116, ; 355
	i32 82, ; 356
	i32 230, ; 357
	i32 20, ; 358
	i32 11, ; 359
	i32 161, ; 360
	i32 3, ; 361
	i32 222, ; 362
	i32 336, ; 363
	i32 208, ; 364
	i32 206, ; 365
	i32 84, ; 366
	i32 199, ; 367
	i32 323, ; 368
	i32 64, ; 369
	i32 338, ; 370
	i32 306, ; 371
	i32 142, ; 372
	i32 288, ; 373
	i32 156, ; 374
	i32 185, ; 375
	i32 215, ; 376
	i32 41, ; 377
	i32 117, ; 378
	i32 193, ; 379
	i32 243, ; 380
	i32 295, ; 381
	i32 131, ; 382
	i32 75, ; 383
	i32 66, ; 384
	i32 342, ; 385
	i32 171, ; 386
	i32 247, ; 387
	i32 142, ; 388
	i32 106, ; 389
	i32 150, ; 390
	i32 70, ; 391
	i32 358, ; 392
	i32 336, ; 393
	i32 155, ; 394
	i32 214, ; 395
	i32 192, ; 396
	i32 121, ; 397
	i32 127, ; 398
	i32 337, ; 399
	i32 359, ; 400
	i32 151, ; 401
	i32 270, ; 402
	i32 176, ; 403
	i32 360, ; 404
	i32 140, ; 405
	i32 257, ; 406
	i32 334, ; 407
	i32 20, ; 408
	i32 14, ; 409
	i32 218, ; 410
	i32 135, ; 411
	i32 75, ; 412
	i32 59, ; 413
	i32 227, ; 414
	i32 260, ; 415
	i32 166, ; 416
	i32 167, ; 417
	i32 220, ; 418
	i32 15, ; 419
	i32 74, ; 420
	i32 6, ; 421
	i32 23, ; 422
	i32 340, ; 423
	i32 282, ; 424
	i32 241, ; 425
	i32 362, ; 426
	i32 175, ; 427
	i32 91, ; 428
	i32 335, ; 429
	i32 1, ; 430
	i32 136, ; 431
	i32 339, ; 432
	i32 283, ; 433
	i32 305, ; 434
	i32 134, ; 435
	i32 69, ; 436
	i32 177, ; 437
	i32 145, ; 438
	i32 200, ; 439
	i32 344, ; 440
	i32 323, ; 441
	i32 274, ; 442
	i32 207, ; 443
	i32 88, ; 444
	i32 96, ; 445
	i32 264, ; 446
	i32 269, ; 447
	i32 339, ; 448
	i32 31, ; 449
	i32 235, ; 450
	i32 45, ; 451
	i32 278, ; 452
	i32 187, ; 453
	i32 214, ; 454
	i32 172, ; 455
	i32 237, ; 456
	i32 243, ; 457
	i32 109, ; 458
	i32 157, ; 459
	i32 35, ; 460
	i32 22, ; 461
	i32 173, ; 462
	i32 114, ; 463
	i32 179, ; 464
	i32 57, ; 465
	i32 303, ; 466
	i32 143, ; 467
	i32 118, ; 468
	i32 120, ; 469
	i32 110, ; 470
	i32 245, ; 471
	i32 138, ; 472
	i32 175, ; 473
	i32 251, ; 474
	i32 210, ; 475
	i32 325, ; 476
	i32 54, ; 477
	i32 105, ; 478
	i32 345, ; 479
	i32 225, ; 480
	i32 189, ; 481
	i32 221, ; 482
	i32 222, ; 483
	i32 133, ; 484
	i32 317, ; 485
	i32 308, ; 486
	i32 296, ; 487
	i32 351, ; 488
	i32 274, ; 489
	i32 226, ; 490
	i32 224, ; 491
	i32 158, ; 492
	i32 261, ; 493
	i32 162, ; 494
	i32 132, ; 495
	i32 296, ; 496
	i32 160, ; 497
	i32 181, ; 498
	i32 285, ; 499
	i32 238, ; 500
	i32 187, ; 501
	i32 139, ; 502
	i32 308, ; 503
	i32 304, ; 504
	i32 168, ; 505
	i32 223, ; 506
	i32 237, ; 507
	i32 246, ; 508
	i32 313, ; 509
	i32 40, ; 510
	i32 272, ; 511
	i32 81, ; 512
	i32 178, ; 513
	i32 56, ; 514
	i32 37, ; 515
	i32 97, ; 516
	i32 165, ; 517
	i32 171, ; 518
	i32 203, ; 519
	i32 309, ; 520
	i32 82, ; 521
	i32 248, ; 522
	i32 98, ; 523
	i32 30, ; 524
	i32 158, ; 525
	i32 231, ; 526
	i32 18, ; 527
	i32 127, ; 528
	i32 119, ; 529
	i32 268, ; 530
	i32 299, ; 531
	i32 281, ; 532
	i32 231, ; 533
	i32 301, ; 534
	i32 164, ; 535
	i32 276, ; 536
	i32 235, ; 537
	i32 363, ; 538
	i32 331, ; 539
	i32 298, ; 540
	i32 289, ; 541
	i32 169, ; 542
	i32 16, ; 543
	i32 190, ; 544
	i32 143, ; 545
	i32 0, ; 546
	i32 217, ; 547
	i32 125, ; 548
	i32 118, ; 549
	i32 38, ; 550
	i32 115, ; 551
	i32 47, ; 552
	i32 141, ; 553
	i32 117, ; 554
	i32 34, ; 555
	i32 174, ; 556
	i32 95, ; 557
	i32 53, ; 558
	i32 290, ; 559
	i32 129, ; 560
	i32 152, ; 561
	i32 190, ; 562
	i32 24, ; 563
	i32 160, ; 564
	i32 267, ; 565
	i32 238, ; 566
	i32 147, ; 567
	i32 104, ; 568
	i32 89, ; 569
	i32 255, ; 570
	i32 60, ; 571
	i32 141, ; 572
	i32 100, ; 573
	i32 5, ; 574
	i32 13, ; 575
	i32 122, ; 576
	i32 135, ; 577
	i32 28, ; 578
	i32 331, ; 579
	i32 213, ; 580
	i32 72, ; 581
	i32 265, ; 582
	i32 24, ; 583
	i32 253, ; 584
	i32 294, ; 585
	i32 291, ; 586
	i32 348, ; 587
	i32 239, ; 588
	i32 228, ; 589
	i32 246, ; 590
	i32 262, ; 591
	i32 167, ; 592
	i32 215, ; 593
	i32 295, ; 594
	i32 327, ; 595
	i32 101, ; 596
	i32 123, ; 597
	i32 266, ; 598
	i32 201, ; 599
	i32 194, ; 600
	i32 197, ; 601
	i32 162, ; 602
	i32 166, ; 603
	i32 269, ; 604
	i32 39, ; 605
	i32 219, ; 606
	i32 346, ; 607
	i32 177, ; 608
	i32 17, ; 609
	i32 170, ; 610
	i32 347, ; 611
	i32 239, ; 612
	i32 149, ; 613
	i32 258, ; 614
	i32 218, ; 615
	i32 154, ; 616
	i32 130, ; 617
	i32 19, ; 618
	i32 65, ; 619
	i32 183, ; 620
	i32 146, ; 621
	i32 172, ; 622
	i32 47, ; 623
	i32 236, ; 624
	i32 355, ; 625
	i32 357, ; 626
	i32 244, ; 627
	i32 79, ; 628
	i32 61, ; 629
	i32 106, ; 630
	i32 293, ; 631
	i32 248, ; 632
	i32 49, ; 633
	i32 279, ; 634
	i32 352, ; 635
	i32 290, ; 636
	i32 14, ; 637
	i32 193, ; 638
	i32 68, ; 639
	i32 170, ; 640
	i32 254, ; 641
	i32 258, ; 642
	i32 232, ; 643
	i32 212, ; 644
	i32 78, ; 645
	i32 263, ; 646
	i32 108, ; 647
	i32 247, ; 648
	i32 196, ; 649
	i32 289, ; 650
	i32 67, ; 651
	i32 181, ; 652
	i32 63, ; 653
	i32 27, ; 654
	i32 159, ; 655
	i32 327, ; 656
	i32 230, ; 657
	i32 195, ; 658
	i32 256, ; 659
	i32 10, ; 660
	i32 219, ; 661
	i32 11, ; 662
	i32 78, ; 663
	i32 126, ; 664
	i32 83, ; 665
	i32 198, ; 666
	i32 66, ; 667
	i32 107, ; 668
	i32 65, ; 669
	i32 128, ; 670
	i32 122, ; 671
	i32 77, ; 672
	i32 304, ; 673
	i32 294, ; 674
	i32 8, ; 675
	i32 262, ; 676
	i32 2, ; 677
	i32 343, ; 678
	i32 44, ; 679
	i32 307, ; 680
	i32 155, ; 681
	i32 128, ; 682
	i32 292, ; 683
	i32 23, ; 684
	i32 133, ; 685
	i32 250, ; 686
	i32 281, ; 687
	i32 29, ; 688
	i32 249, ; 689
	i32 234, ; 690
	i32 62, ; 691
	i32 221, ; 692
	i32 90, ; 693
	i32 87, ; 694
	i32 147, ; 695
	i32 329, ; 696
	i32 223, ; 697
	i32 36, ; 698
	i32 86, ; 699
	i32 270, ; 700
	i32 191, ; 701
	i32 353, ; 702
	i32 197, ; 703
	i32 50, ; 704
	i32 6, ; 705
	i32 90, ; 706
	i32 353, ; 707
	i32 21, ; 708
	i32 161, ; 709
	i32 96, ; 710
	i32 50, ; 711
	i32 113, ; 712
	i32 286, ; 713
	i32 130, ; 714
	i32 189, ; 715
	i32 76, ; 716
	i32 27, ; 717
	i32 342, ; 718
	i32 263, ; 719
	i32 285, ; 720
	i32 7, ; 721
	i32 233, ; 722
	i32 220, ; 723
	i32 110, ; 724
	i32 286, ; 725
	i32 202, ; 726
	i32 272 ; 727
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
