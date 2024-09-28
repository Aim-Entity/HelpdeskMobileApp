; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [367 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [728 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 269
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 209
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 170
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 223
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 256
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 150
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 297
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 300
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 263
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 11: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 12: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 299
	i64 560278790331054453, ; 13: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 14: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 282
	i64 648449422406355874, ; 15: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 195
	i64 649145001856603771, ; 16: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 17: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 194
	i64 670564002081277297, ; 18: Microsoft.Identity.Client.dll => 0x94e526837380571 => 210
	i64 683390398661839228, ; 19: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 202
	i64 702024105029695270, ; 20: System.Drawing.Common => 0x9be17343c0e7726 => 232
	i64 750875890346172408, ; 21: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 144
	i64 798450721097591769, ; 22: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 257
	i64 799765834175365804, ; 23: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 24: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 336
	i64 870603111519317375, ; 25: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 229
	i64 872800313462103108, ; 26: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 268
	i64 895210737996778430, ; 27: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 283
	i64 937459790420187032, ; 28: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 225
	i64 940822596282819491, ; 29: System.Transactions => 0xd0e792aa81923a3 => 149
	i64 960778385402502048, ; 30: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 31: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1060858978308751610, ; 32: Azure.Core.dll => 0xeb8ed9ebee080fa => 172
	i64 1091602723860597467, ; 33: Application => 0xf2626e4cf8f4adb => 358
	i64 1120440138749646132, ; 34: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 312
	i64 1268860745194512059, ; 35: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 36: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 189
	i64 1301485588176585670, ; 37: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 228
	i64 1301626418029409250, ; 38: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 252
	i64 1369545283391376210, ; 40: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 290
	i64 1404195534211153682, ; 41: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 42: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 43: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 44: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 220
	i64 1492954217099365037, ; 45: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 46: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 169
	i64 1518315023656898250, ; 47: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 230
	i64 1537168428375924959, ; 48: System.Threading.Thread.dll => 0x15551e8a954ae0df => 144
	i64 1576750169145655260, ; 49: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 311
	i64 1624659445732251991, ; 50: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 251
	i64 1628611045998245443, ; 51: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 286
	i64 1636321030536304333, ; 52: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 276
	i64 1651782184287836205, ; 53: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 54: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1672383392659050004, ; 55: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 184
	i64 1682513316613008342, ; 56: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1735388228521408345, ; 57: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 58: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 59: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1776954265264967804, ; 60: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 218
	i64 1795316252682057001, ; 61: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 250
	i64 1825687700144851180, ; 62: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 63: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 330
	i64 1836611346387731153, ; 64: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 297
	i64 1854145951182283680, ; 65: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 66: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 182
	i64 1875417405349196092, ; 67: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 68: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 247
	i64 1881198190668717030, ; 69: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 352
	i64 1894191570947481469, ; 70: Shared.dll => 0x1a498532aadd1f7d => 362
	i64 1897575647115118287, ; 71: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 299
	i64 1920760634179481754, ; 72: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 221
	i64 1972385128188460614, ; 73: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 284
	i64 2040001226662520565, ; 75: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 141
	i64 2062890601515140263, ; 76: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 140
	i64 2064708342624596306, ; 77: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 320
	i64 2080945842184875448, ; 78: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 79: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 80: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 140
	i64 2165310824878145998, ; 81: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 244
	i64 2165725771938924357, ; 82: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 254
	i64 2182323945368236980, ; 83: Domain.dll => 0x1e492c10dc80b3b4 => 359
	i64 2192948757939169934, ; 84: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 186
	i64 2200176636225660136, ; 85: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 207
	i64 2262844636196693701, ; 86: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 268
	i64 2287834202362508563, ; 87: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 88: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 89: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 180
	i64 2304837677853103545, ; 90: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 296
	i64 2315304989185124968, ; 91: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 92: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 216
	i64 2329709569556905518, ; 93: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 279
	i64 2335503487726329082, ; 94: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 95: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 96: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 261
	i64 2479423007379663237, ; 97: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 306
	i64 2497223385847772520, ; 98: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 99: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 245
	i64 2554797818648757682, ; 100: System.Runtime.Caching.dll => 0x23747714858085b2 => 236
	i64 2592350477072141967, ; 101: System.Xml.dll => 0x23f9e10627330e8f => 162
	i64 2602673633151553063, ; 102: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 351
	i64 2612152650457191105, ; 103: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 217
	i64 2624866290265602282, ; 104: mscorlib.dll => 0x246d65fbde2db8ea => 165
	i64 2632269733008246987, ; 105: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 106: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 197
	i64 2662981627730767622, ; 107: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 326
	i64 2706075432581334785, ; 108: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2781169761569919449, ; 109: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 218
	i64 2783046991838674048, ; 110: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 111: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 301
	i64 2789714023057451704, ; 112: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 213
	i64 2815524396660695947, ; 113: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 114: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 231
	i64 2895129759130297543, ; 115: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 331
	i64 2923871038697555247, ; 116: Jsr305Binding => 0x2893ad37e69ec52f => 313
	i64 3017136373564924869, ; 117: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 118: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 312
	i64 3106852385031680087, ; 119: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 120: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 121: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3238539556702659506, ; 122: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 226
	i64 3266690593535380875, ; 123: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 175
	i64 3281594302220646930, ; 124: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 125: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 277
	i64 3303437397778967116, ; 126: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 248
	i64 3311221304742556517, ; 127: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 128: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 129: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 130: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 323
	i64 3396143930648122816, ; 131: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 200
	i64 3402534845034375023, ; 132: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 233
	i64 3429672777697402584, ; 133: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 223
	i64 3437845325506641314, ; 134: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 135: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 303
	i64 3494946837667399002, ; 136: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 192
	i64 3508450208084372758, ; 137: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 138: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 302
	i64 3523004241079211829, ; 139: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 191
	i64 3531994851595924923, ; 140: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 141: System.Private.CoreLib.dll => 0x31480e226177735f => 171
	i64 3567343442040498961, ; 142: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 346
	i64 3571415421602489686, ; 143: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 144: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 193
	i64 3647754201059316852, ; 145: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 155
	i64 3655542548057982301, ; 146: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 192
	i64 3659371656528649588, ; 147: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 242
	i64 3714286808464443951, ; 148: Application.dll => 0x338bcc2c54714a2f => 358
	i64 3716579019761409177, ; 149: netstandard.dll => 0x3393f0ed5c8c5c99 => 166
	i64 3727469159507183293, ; 150: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 295
	i64 3753897248517198740, ; 151: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 179
	i64 3772598417116884899, ; 152: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 269
	i64 3794322307918838949, ; 153: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 181
	i64 3869221888984012293, ; 154: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 205
	i64 3869649043256705283, ; 155: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 156: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 203
	i64 3890352374528606784, ; 157: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 221
	i64 3919223565570527920, ; 158: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 159: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 160: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 161: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 160
	i64 4009997192427317104, ; 162: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 163: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 327
	i64 4073500526318903918, ; 164: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 165: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 219
	i64 4120493066591692148, ; 166: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 357
	i64 4148881117810174540, ; 167: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 168: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 169: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 145
	i64 4168469861834746866, ; 170: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 171: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 172: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 263
	i64 4205801962323029395, ; 173: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 174: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 175: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4337444564132831293, ; 176: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 227
	i64 4360412976914417659, ; 177: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 352
	i64 4373617458794931033, ; 178: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4384840217421645357, ; 179: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 177
	i64 4397634830160618470, ; 180: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 181: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 151
	i64 4484706122338676047, ; 182: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 183: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 187
	i64 4533124835995628778, ; 184: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4612482779465751747, ; 185: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 186
	i64 4636684751163556186, ; 186: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 307
	i64 4672453897036726049, ; 187: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 188: System.Xml.XmlSerializer => 0x417501590542f358 => 161
	i64 4743821336939966868, ; 189: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 190: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 281
	i64 4794310189461587505, ; 191: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 245
	i64 4795410492532947900, ; 192: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 302
	i64 4809057822547766521, ; 193: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 194: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 195: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 196: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 342
	i64 4953714692329509532, ; 197: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 350
	i64 5055365687667823624, ; 198: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 246
	i64 5081566143765835342, ; 199: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 200: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 201: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5129462924058778861, ; 202: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 184
	i64 5182934613077526976, ; 203: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 204: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 178
	i64 5205316157927637098, ; 205: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 288
	i64 5244375036463807528, ; 206: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 207: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 208: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 209: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 280
	i64 5290786973231294105, ; 210: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 211: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 306
	i64 5408338804355907810, ; 212: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 304
	i64 5423376490970181369, ; 213: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 214: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 215: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 216: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 259
	i64 5457765010617926378, ; 217: System.Xml.Serialization => 0x4bbde05c557002ea => 156
	i64 5471532531798518949, ; 218: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 350
	i64 5488847537322884930, ; 219: System.Windows.Extensions => 0x4c2c4dc108687f42 => 240
	i64 5507995362134886206, ; 220: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 221: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 353
	i64 5527431512186326818, ; 222: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 223: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 224: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 225: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 249
	i64 5591791169662171124, ; 226: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 227: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 228: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 309
	i64 5724799082821825042, ; 229: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 272
	i64 5734013572833599164, ; 230: Plugins.InMemory => 0x4f934ef6e203debc => 361
	i64 5757522595884336624, ; 231: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 258
	i64 5783556987928984683, ; 232: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 233: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 278
	i64 5959344983920014087, ; 234: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 298
	i64 5979151488806146654, ; 235: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 236: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6102788177522843259, ; 237: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 298
	i64 6183170893902868313, ; 238: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 227
	i64 6200764641006662125, ; 239: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 347
	i64 6222399776351216807, ; 240: System.Text.Json.dll => 0x565a67a0ffe264a7 => 239
	i64 6251069312384999852, ; 241: System.Transactions.Local => 0x56c0426b870da1ac => 148
	i64 6278736998281604212, ; 242: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 243: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 244: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 330
	i64 6319713645133255417, ; 245: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 282
	i64 6357457916754632952, ; 246: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 363
	i64 6401687960814735282, ; 247: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 279
	i64 6471714727257221498, ; 248: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 331
	i64 6478287442656530074, ; 249: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 335
	i64 6504860066809920875, ; 250: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 254
	i64 6548213210057960872, ; 251: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 265
	i64 6557084851308642443, ; 252: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 310
	i64 6560151584539558821, ; 253: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 208
	i64 6589202984700901502, ; 254: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 315
	i64 6591971792923354531, ; 255: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 280
	i64 6617685658146568858, ; 256: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 257: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 258: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 259: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 343
	i64 6772837112740759457, ; 260: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 261: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 262: System.Windows => 0x5e5884bd523ca188 => 153
	i64 6814185388980153342, ; 263: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 157
	i64 6876862101832370452, ; 264: System.Xml.Linq => 0x5f6f85a57d108914 => 154
	i64 6894844156784520562, ; 265: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6920570528939222495, ; 266: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 179
	i64 7011053663211085209, ; 267: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 274
	i64 7060896174307865760, ; 268: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 142
	i64 7083547580668757502, ; 269: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 270: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 271: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 275
	i64 7112547816752919026, ; 272: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 273: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 244
	i64 7270811800166795866, ; 274: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 275: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 276: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 277: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 278: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 235
	i64 7349431895026339542, ; 279: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 243
	i64 7377312882064240630, ; 280: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 281: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 154
	i64 7489048572193775167, ; 282: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 283: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 233
	i64 7592577537120840276, ; 284: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 285: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 286: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 287: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 288: System.Private.CoreLib => 0x6b0ff375198b9c17 => 171
	i64 7725404731275645577, ; 289: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 283
	i64 7735176074855944702, ; 290: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 291: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 318
	i64 7742555799473854801, ; 292: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 338
	i64 7791074099216502080, ; 293: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 294: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 295: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 251
	i64 7972383140441761405, ; 296: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 190
	i64 7975724199463739455, ; 297: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 349
	i64 8014722069583580780, ; 298: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 177
	i64 8025517457475554965, ; 299: WindowsBase => 0x6f605d9b4786ce95 => 164
	i64 8031450141206250471, ; 300: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 301: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 302: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 277
	i64 8085230611270010360, ; 303: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 304: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 305: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 306: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 340
	i64 8113615946733131500, ; 307: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 308: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 167
	i64 8185542183669246576, ; 309: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 310: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 322
	i64 8234598844743906698, ; 311: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 211
	i64 8246048515196606205, ; 312: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 224
	i64 8264926008854159966, ; 313: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 314: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 315: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 316: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8381604729589167482, ; 317: Shared => 0x745171180ae5757a => 362
	i64 8386351099740279196, ; 318: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 355
	i64 8398329775253868912, ; 319: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 260
	i64 8400357532724379117, ; 320: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 292
	i64 8410671156615598628, ; 321: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 322: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 281
	i64 8476857680833348370, ; 323: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 238
	i64 8513291706828295435, ; 324: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 225
	i64 8518412311883997971, ; 325: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 326: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 327: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 271
	i64 8601935802264776013, ; 328: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 304
	i64 8623059219396073920, ; 329: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 330: Java.Interop => 0x77b654e585b55834 => 167
	i64 8638972117149407195, ; 331: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 332: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 291
	i64 8648495978913578441, ; 333: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 334: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 345
	i64 8684531736582871431, ; 335: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 336: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 337: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 319
	i64 8941376889969657626, ; 338: System.Xml.XDocument => 0x7c1626e87187471a => 157
	i64 8951477988056063522, ; 339: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 294
	i64 8954753533646919997, ; 340: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 341: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 210
	i64 9045785047181495996, ; 342: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 355
	i64 9052662452269567435, ; 343: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 215
	i64 9111603110219107042, ; 344: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 191
	i64 9138683372487561558, ; 345: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 346: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 185
	i64 9312692141327339315, ; 347: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 309
	i64 9324707631942237306, ; 348: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 250
	i64 9363564275759486853, ; 349: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 329
	i64 9427266486299436557, ; 350: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 214
	i64 9468215723722196442, ; 351: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 158
	i64 9500688326720985260, ; 352: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 189
	i64 9551379474083066910, ; 353: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 353
	i64 9554839972845591462, ; 354: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 355: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 314
	i64 9584643793929893533, ; 356: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9650158550865574924, ; 357: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 196
	i64 9659729154652888475, ; 358: System.Text.RegularExpressions => 0x860e407c9991dd9b => 137
	i64 9662334977499516867, ; 359: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 360: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 361: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 261
	i64 9702891218465930390, ; 362: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 363: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 325
	i64 9780093022148426479, ; 364: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 311
	i64 9808709177481450983, ; 365: Mono.Android.dll => 0x881f890734e555e7 => 170
	i64 9819168441846169364, ; 366: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 215
	i64 9825649861376906464, ; 367: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 258
	i64 9834056768316610435, ; 368: System.Transactions.dll => 0x8879968718899783 => 149
	i64 9836529246295212050, ; 369: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864956466380592553, ; 370: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 188
	i64 9907349773706910547, ; 371: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 271
	i64 9933555792566666578, ; 372: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 373: Microsoft.Maui => 0x8a2b8315b36616ac => 222
	i64 9974604633896246661, ; 374: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 156
	i64 10017511394021241210, ; 375: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 207
	i64 10038780035334861115, ; 376: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 377: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 378: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 379: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 380: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 220
	i64 10105485790837105934, ; 381: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 142
	i64 10143853363526200146, ; 382: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 327
	i64 10205853378024263619, ; 383: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 194
	i64 10209869394718195525, ; 384: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 343
	i64 10226222362177979215, ; 385: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 320
	i64 10229024438826829339, ; 386: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 265
	i64 10236703004850800690, ; 387: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 388: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 389: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 317
	i64 10360651442923773544, ; 390: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 391: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 392: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 303
	i64 10406448008575299332, ; 393: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 323
	i64 10430153318873392755, ; 394: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 262
	i64 10447083246144586668, ; 395: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 182
	i64 10506226065143327199, ; 396: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 325
	i64 10546663366131771576, ; 397: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 398: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 399: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 158
	i64 10670374202010151210, ; 400: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 401: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10734191584620811116, ; 402: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 202
	i64 10761706286639228993, ; 403: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 357
	i64 10785150219063592792, ; 404: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 405: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 187
	i64 10822644899632537592, ; 406: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 407: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 408: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 252
	i64 10889380495983713167, ; 409: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 183
	i64 10899834349646441345, ; 410: System.Web => 0x9743fd975946eb81 => 152
	i64 10943875058216066601, ; 411: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 412: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 413: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 206
	i64 11009005086950030778, ; 414: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 222
	i64 11019817191295005410, ; 415: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 249
	i64 11023048688141570732, ; 416: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 417: System.Xml => 0x992e31d0412bf7fc => 162
	i64 11047101296015504039, ; 418: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 226
	i64 11051904132540108364, ; 419: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 201
	i64 11071824625609515081, ; 420: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 315
	i64 11103970607964515343, ; 421: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 336
	i64 11136029745144976707, ; 422: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 313
	i64 11156122287428000958, ; 423: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 351
	i64 11157797727133427779, ; 424: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 332
	i64 11162124722117608902, ; 425: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 308
	i64 11188319605227840848, ; 426: System.Threading.Overlapped => 0x9b44e5671724e550 => 139
	i64 11218356222449480316, ; 427: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 176
	i64 11220793807500858938, ; 428: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 339
	i64 11226290749488709958, ; 429: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 208
	i64 11235648312900863002, ; 430: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 431: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 146
	i64 11340910727871153756, ; 432: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 264
	i64 11341245327015630248, ; 433: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 231
	i64 11347436699239206956, ; 434: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 161
	i64 11387123649535633893, ; 435: Infrastructure => 0x9e0730a0b00569e5 => 360
	i64 11392833485892708388, ; 436: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 293
	i64 11398376662953476300, ; 437: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 188
	i64 11432101114902388181, ; 438: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 439: Mono.Android.Export => 0x9edabf8623efc131 => 168
	i64 11448276831755070604, ; 440: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 441: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 442: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 274
	i64 11513602507638267977, ; 443: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 234
	i64 11517440453979132662, ; 444: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 212
	i64 11518296021396496455, ; 445: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 337
	i64 11529969570048099689, ; 446: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 308
	i64 11530571088791430846, ; 447: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 205
	i64 11580057168383206117, ; 448: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 247
	i64 11591352189662810718, ; 449: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 301
	i64 11597940890313164233, ; 450: netstandard => 0xa0f429ca8d1805c9 => 166
	i64 11672361001936329215, ; 451: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 275
	i64 11692977985522001935, ; 452: System.Threading.Overlapped.dll => 0xa245cd869980680f => 139
	i64 11707554492040141440, ; 453: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 454: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 143
	i64 11855031688536399763, ; 455: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 354
	i64 11991047634523762324, ; 456: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 457: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 237
	i64 12040886584167504988, ; 458: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 459: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 203
	i64 12058074296353848905, ; 460: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 204
	i64 12063623837170009990, ; 461: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 462: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 463: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 464: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 465: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 305
	i64 12145679461940342714, ; 466: System.Text.Json => 0xa88e1f1ebcb62fba => 239
	i64 12191646537372739477, ; 467: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 241
	i64 12198439281774268251, ; 468: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 216
	i64 12199647145504282313, ; 469: HybridMobileProj.Hybrid.dll => 0xa94dda713ce416c9 => 0
	i64 12201331334810686224, ; 470: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 471: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 472: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 230
	i64 12313367145828839434, ; 473: System.IO.Pipelines => 0xaae1de2e1c17f00a => 234
	i64 12332222936682028543, ; 474: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 475: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 476: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 213
	i64 12451044538927396471, ; 477: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 273
	i64 12466513435562512481, ; 478: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 287
	i64 12475113361194491050, ; 479: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 363
	i64 12487638416075308985, ; 480: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 267
	i64 12493213219680520345, ; 481: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 183
	i64 12517810545449516888, ; 482: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12529936764501890820, ; 483: Infrastructure.dll => 0xade34719d23e1704 => 360
	i64 12538491095302438457, ; 484: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 255
	i64 12550732019250633519, ; 485: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12699999919562409296, ; 486: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 487: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 256
	i64 12708238894395270091, ; 488: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 489: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 490: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 491: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 310
	i64 12828192437253469131, ; 492: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 321
	i64 12835242264250840079, ; 493: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 494: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 209
	i64 12843770487262409629, ; 495: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 496: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12963446364377008305, ; 497: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 232
	i64 12982280885948128408, ; 498: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 266
	i64 12989346753972519995, ; 499: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 324
	i64 13003699287675270979, ; 500: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 180
	i64 13005833372463390146, ; 501: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 345
	i64 13068258254871114833, ; 502: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13129914918964716986, ; 503: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 270
	i64 13162471042547327635, ; 504: System.Security.Permissions => 0xb6aa7dace9662293 => 238
	i64 13173818576982874404, ; 505: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13246160281449864914, ; 506: Domain => 0xb7d3d09845b51ed2 => 359
	i64 13343850469010654401, ; 507: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 169
	i64 13370592475155966277, ; 508: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 509: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 333
	i64 13401370062847626945, ; 510: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 305
	i64 13404347523447273790, ; 511: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 260
	i64 13431476299110033919, ; 512: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 513: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 316
	i64 13463706743370286408, ; 514: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 515: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 318
	i64 13491513212026656886, ; 516: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 253
	i64 13540124433173649601, ; 517: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 354
	i64 13550417756503177631, ; 518: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 200
	i64 13572454107664307259, ; 519: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 295
	i64 13578472628727169633, ; 520: System.Xml.XPath => 0xbc706ce9fba5c261 => 159
	i64 13580399111273692417, ; 521: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 522: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 266
	i64 13647894001087880694, ; 523: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 524: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 246
	i64 13702626353344114072, ; 525: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 526: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 527: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 528: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 529: Azure.Identity => 0xbeb596218df25c82 => 173
	i64 13768883594457632599, ; 530: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 531: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 319
	i64 13881769479078963060, ; 532: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 533: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 240
	i64 13911222732217019342, ; 534: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 535: System.Windows.dll => 0xc14bc67b8bba9714 => 153
	i64 13955418299340266673, ; 536: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 199
	i64 13959074834287824816, ; 537: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 273
	i64 14075334701871371868, ; 538: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 539: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 181
	i64 14124974489674258913, ; 540: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 255
	i64 14125464355221830302, ; 541: System.Threading.dll => 0xc407bafdbc707a9e => 147
	i64 14133832980772275001, ; 542: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 185
	i64 14178052285788134900, ; 543: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 242
	i64 14212104595480609394, ; 544: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 545: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 546: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 547: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 548: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 549: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 293
	i64 14298246716367104064, ; 550: System.Web.dll => 0xc66d93a217f4e840 => 152
	i64 14327695147300244862, ; 551: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 552: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 553: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 243
	i64 14336598549344604866, ; 554: HybridMobileProj.Hybrid => 0xc6f5d46c0d10d2c2 => 0
	i64 14346402571976470310, ; 555: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 556: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 347
	i64 14461014870687870182, ; 557: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 558: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 348
	i64 14486659737292545672, ; 559: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 278
	i64 14491877563792607819, ; 560: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 356
	i64 14495724990987328804, ; 561: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 296
	i64 14551742072151931844, ; 562: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 563: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 564: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14610046442689856844, ; 565: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 326
	i64 14622043554576106986, ; 566: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 567: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 288
	i64 14648804764802849406, ; 568: Azure.Identity.dll => 0xcb4b0252261f9a7e => 173
	i64 14669215534098758659, ; 569: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 197
	i64 14690985099581930927, ; 570: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 151
	i64 14705122255218365489, ; 571: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 340
	i64 14735017007120366644, ; 572: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 339
	i64 14744092281598614090, ; 573: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 356
	i64 14792063746108907174, ; 574: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 316
	i64 14832630590065248058, ; 575: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 576: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 264
	i64 14889905118082851278, ; 577: GoogleGson.dll => 0xcea391d0969961ce => 174
	i64 14904040806490515477, ; 578: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 324
	i64 14912225920358050525, ; 579: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 580: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 581: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 198
	i64 14984936317414011727, ; 582: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 583: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 584: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 267
	i64 15015154896917945444, ; 585: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 586: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 587: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 588: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 589: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 341
	i64 15115185479366240210, ; 590: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 591: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 592: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 212
	i64 15150743910298169673, ; 593: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 294
	i64 15203009853192377507, ; 594: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 346
	i64 15227001540531775957, ; 595: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 193
	i64 15234786388537674379, ; 596: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 597: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 598: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 257
	i64 15279429628684179188, ; 599: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 322
	i64 15299439993936780255, ; 600: System.Xml.XPath.dll => 0xd452879d55019bdf => 159
	i64 15338463749992804988, ; 601: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 602: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 262
	i64 15383240894167415497, ; 603: System.Memory.Data => 0xd57c4016df1c7ac9 => 235
	i64 15391712275433856905, ; 604: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 198
	i64 15427448221306938193, ; 605: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 178
	i64 15481710163200268842, ; 606: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 201
	i64 15526743539506359484, ; 607: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 608: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 609: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 610: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 328
	i64 15541854775306130054, ; 611: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 612: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 613: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 286
	i64 15592226634512578529, ; 614: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 175
	i64 15609085926864131306, ; 615: System.dll => 0xd89e9cf3334914ea => 163
	i64 15620595871140898079, ; 616: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 199
	i64 15661133872274321916, ; 617: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 155
	i64 15710114879900314733, ; 618: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 619: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 620: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 300
	i64 15783653065526199428, ; 621: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 329
	i64 15817206913877585035, ; 622: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 143
	i64 15827202283623377193, ; 623: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 196
	i64 15847085070278954535, ; 624: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 138
	i64 15885744048853936810, ; 625: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 626: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 219
	i64 15934062614519587357, ; 627: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 628: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 629: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 141
	i64 15971679995444160383, ; 630: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 631: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 632: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 633: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 348
	i64 16154507427712707110, ; 634: System => 0xe03056ea4e39aa26 => 163
	i64 16219561732052121626, ; 635: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 636: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 342
	i64 16315482530584035869, ; 637: WindowsBase.dll => 0xe26c3ceb1e8d821d => 164
	i64 16321164108206115771, ; 638: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 206
	i64 16337011941688632206, ; 639: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 640: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 272
	i64 16423015068819898779, ; 641: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 321
	i64 16454459195343277943, ; 642: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 643: Mono.Android.Export.dll => 0xe4f04b741db987ce => 168
	i64 16589693266713801121, ; 644: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 285
	i64 16621146507174665210, ; 645: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 259
	i64 16649148416072044166, ; 646: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 224
	i64 16677317093839702854, ; 647: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 292
	i64 16702652415771857902, ; 648: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 150
	i64 16709499819875633724, ; 649: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 650: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16755018182064898362, ; 651: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 228
	i64 16758309481308491337, ; 652: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 653: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 654: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 655: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 341
	i64 16822611501064131242, ; 656: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 657: mscorlib => 0xe99c30c1484d7f4f => 165
	i64 16856067890322379635, ; 658: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 659: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 137
	i64 16933958494752847024, ; 660: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 661: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 349
	i64 16945858842201062480, ; 662: Azure.Core => 0xeb2bc8d57f4e7c50 => 172
	i64 16977952268158210142, ; 663: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 664: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 285
	i64 16998075588627545693, ; 665: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 290
	i64 17008137082415910100, ; 666: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 667: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 248
	i64 17031351772568316411, ; 668: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 289
	i64 17037200463775726619, ; 669: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 276
	i64 17047433665992082296, ; 670: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 195
	i64 17062143951396181894, ; 671: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17066200624730723951, ; 672: Plugins.InMemory.dll => 0xecd7530c2e9fd66f => 361
	i64 17079998892748052666, ; 673: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 176
	i64 17118171214553292978, ; 674: System.Threading.Channels => 0xed8ff6060fc420b2 => 138
	i64 17137864900836977098, ; 675: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 217
	i64 17187273293601214786, ; 676: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 677: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 211
	i64 17201328579425343169, ; 678: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 679: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 680: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 344
	i64 17205988430934219272, ; 681: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 204
	i64 17230721278011714856, ; 682: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 683: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 148
	i64 17260702271250283638, ; 684: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17310278548634113468, ; 685: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 334
	i64 17333249706306540043, ; 686: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 687: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 688: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 334
	i64 17360349973592121190, ; 689: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 314
	i64 17371436720558481852, ; 690: System.Runtime.Caching => 0xf113bda8d710a1bc => 236
	i64 17470386307322966175, ; 691: System.Threading.Timer => 0xf27347c8d0d5709f => 146
	i64 17509662556995089465, ; 692: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 693: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 332
	i64 17522591619082469157, ; 694: GoogleGson => 0xf32cc03d27a5bf25 => 174
	i64 17523946658117960076, ; 695: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 237
	i64 17590473451926037903, ; 696: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 241
	i64 17623389608345532001, ; 697: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 344
	i64 17627500474728259406, ; 698: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 699: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 700: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 287
	i64 17710060891934109755, ; 701: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 284
	i64 17712670374920797664, ; 702: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 703: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 704: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 214
	i64 17827813215687577648, ; 705: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 335
	i64 17838668724098252521, ; 706: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 707: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 317
	i64 17928294245072900555, ; 708: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 709: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 328
	i64 17992315986609351877, ; 710: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 160
	i64 18017743553296241350, ; 711: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 190
	i64 18025913125965088385, ; 712: System.Threading => 0xfa28e87b91334681 => 147
	i64 18116111925905154859, ; 713: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 253
	i64 18121036031235206392, ; 714: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 289
	i64 18146411883821974900, ; 715: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 716: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 717: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 145
	i64 18245806341561545090, ; 718: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 719: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 270
	i64 18305135509493619199, ; 720: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 291
	i64 18318849532986632368, ; 721: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 722: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 338
	i64 18342408478508122430, ; 723: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 337
	i64 18358161419737137786, ; 724: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 333
	i64 18370042311372477656, ; 725: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 229
	i64 18380184030268848184, ; 726: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 307
	i64 18439108438687598470 ; 727: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [728 x i32] [
	i32 269, ; 0
	i32 209, ; 1
	i32 170, ; 2
	i32 223, ; 3
	i32 58, ; 4
	i32 256, ; 5
	i32 150, ; 6
	i32 297, ; 7
	i32 300, ; 8
	i32 263, ; 9
	i32 132, ; 10
	i32 56, ; 11
	i32 299, ; 12
	i32 95, ; 13
	i32 282, ; 14
	i32 195, ; 15
	i32 129, ; 16
	i32 194, ; 17
	i32 210, ; 18
	i32 202, ; 19
	i32 232, ; 20
	i32 144, ; 21
	i32 257, ; 22
	i32 18, ; 23
	i32 336, ; 24
	i32 229, ; 25
	i32 268, ; 26
	i32 283, ; 27
	i32 225, ; 28
	i32 149, ; 29
	i32 104, ; 30
	i32 95, ; 31
	i32 172, ; 32
	i32 358, ; 33
	i32 312, ; 34
	i32 36, ; 35
	i32 189, ; 36
	i32 228, ; 37
	i32 28, ; 38
	i32 252, ; 39
	i32 290, ; 40
	i32 50, ; 41
	i32 115, ; 42
	i32 70, ; 43
	i32 220, ; 44
	i32 65, ; 45
	i32 169, ; 46
	i32 230, ; 47
	i32 144, ; 48
	i32 311, ; 49
	i32 251, ; 50
	i32 286, ; 51
	i32 276, ; 52
	i32 40, ; 53
	i32 89, ; 54
	i32 184, ; 55
	i32 81, ; 56
	i32 66, ; 57
	i32 62, ; 58
	i32 86, ; 59
	i32 218, ; 60
	i32 250, ; 61
	i32 106, ; 62
	i32 330, ; 63
	i32 297, ; 64
	i32 102, ; 65
	i32 182, ; 66
	i32 35, ; 67
	i32 247, ; 68
	i32 352, ; 69
	i32 362, ; 70
	i32 299, ; 71
	i32 221, ; 72
	i32 119, ; 73
	i32 284, ; 74
	i32 141, ; 75
	i32 140, ; 76
	i32 320, ; 77
	i32 53, ; 78
	i32 35, ; 79
	i32 140, ; 80
	i32 244, ; 81
	i32 254, ; 82
	i32 359, ; 83
	i32 186, ; 84
	i32 207, ; 85
	i32 268, ; 86
	i32 8, ; 87
	i32 14, ; 88
	i32 180, ; 89
	i32 296, ; 90
	i32 51, ; 91
	i32 216, ; 92
	i32 279, ; 93
	i32 136, ; 94
	i32 101, ; 95
	i32 261, ; 96
	i32 306, ; 97
	i32 116, ; 98
	i32 245, ; 99
	i32 236, ; 100
	i32 162, ; 101
	i32 351, ; 102
	i32 217, ; 103
	i32 165, ; 104
	i32 67, ; 105
	i32 197, ; 106
	i32 326, ; 107
	i32 80, ; 108
	i32 218, ; 109
	i32 101, ; 110
	i32 301, ; 111
	i32 213, ; 112
	i32 117, ; 113
	i32 231, ; 114
	i32 331, ; 115
	i32 313, ; 116
	i32 78, ; 117
	i32 312, ; 118
	i32 114, ; 119
	i32 121, ; 120
	i32 48, ; 121
	i32 226, ; 122
	i32 175, ; 123
	i32 128, ; 124
	i32 277, ; 125
	i32 248, ; 126
	i32 82, ; 127
	i32 110, ; 128
	i32 75, ; 129
	i32 323, ; 130
	i32 200, ; 131
	i32 233, ; 132
	i32 223, ; 133
	i32 53, ; 134
	i32 303, ; 135
	i32 192, ; 136
	i32 69, ; 137
	i32 302, ; 138
	i32 191, ; 139
	i32 83, ; 140
	i32 171, ; 141
	i32 346, ; 142
	i32 116, ; 143
	i32 193, ; 144
	i32 155, ; 145
	i32 192, ; 146
	i32 242, ; 147
	i32 358, ; 148
	i32 166, ; 149
	i32 295, ; 150
	i32 179, ; 151
	i32 269, ; 152
	i32 181, ; 153
	i32 205, ; 154
	i32 32, ; 155
	i32 203, ; 156
	i32 221, ; 157
	i32 122, ; 158
	i32 72, ; 159
	i32 62, ; 160
	i32 160, ; 161
	i32 113, ; 162
	i32 327, ; 163
	i32 88, ; 164
	i32 219, ; 165
	i32 357, ; 166
	i32 105, ; 167
	i32 18, ; 168
	i32 145, ; 169
	i32 118, ; 170
	i32 58, ; 171
	i32 263, ; 172
	i32 17, ; 173
	i32 52, ; 174
	i32 92, ; 175
	i32 227, ; 176
	i32 352, ; 177
	i32 55, ; 178
	i32 177, ; 179
	i32 129, ; 180
	i32 151, ; 181
	i32 41, ; 182
	i32 187, ; 183
	i32 92, ; 184
	i32 186, ; 185
	i32 307, ; 186
	i32 50, ; 187
	i32 161, ; 188
	i32 13, ; 189
	i32 281, ; 190
	i32 245, ; 191
	i32 302, ; 192
	i32 36, ; 193
	i32 67, ; 194
	i32 109, ; 195
	i32 342, ; 196
	i32 350, ; 197
	i32 246, ; 198
	i32 99, ; 199
	i32 99, ; 200
	i32 11, ; 201
	i32 184, ; 202
	i32 11, ; 203
	i32 178, ; 204
	i32 288, ; 205
	i32 25, ; 206
	i32 128, ; 207
	i32 76, ; 208
	i32 280, ; 209
	i32 109, ; 210
	i32 306, ; 211
	i32 304, ; 212
	i32 106, ; 213
	i32 2, ; 214
	i32 26, ; 215
	i32 259, ; 216
	i32 156, ; 217
	i32 350, ; 218
	i32 240, ; 219
	i32 21, ; 220
	i32 353, ; 221
	i32 49, ; 222
	i32 43, ; 223
	i32 126, ; 224
	i32 249, ; 225
	i32 59, ; 226
	i32 119, ; 227
	i32 309, ; 228
	i32 272, ; 229
	i32 361, ; 230
	i32 258, ; 231
	i32 3, ; 232
	i32 278, ; 233
	i32 298, ; 234
	i32 38, ; 235
	i32 124, ; 236
	i32 298, ; 237
	i32 227, ; 238
	i32 347, ; 239
	i32 239, ; 240
	i32 148, ; 241
	i32 85, ; 242
	i32 90, ; 243
	i32 330, ; 244
	i32 282, ; 245
	i32 363, ; 246
	i32 279, ; 247
	i32 331, ; 248
	i32 335, ; 249
	i32 254, ; 250
	i32 265, ; 251
	i32 310, ; 252
	i32 208, ; 253
	i32 315, ; 254
	i32 280, ; 255
	i32 133, ; 256
	i32 96, ; 257
	i32 3, ; 258
	i32 343, ; 259
	i32 105, ; 260
	i32 33, ; 261
	i32 153, ; 262
	i32 157, ; 263
	i32 154, ; 264
	i32 82, ; 265
	i32 179, ; 266
	i32 274, ; 267
	i32 142, ; 268
	i32 87, ; 269
	i32 19, ; 270
	i32 275, ; 271
	i32 51, ; 272
	i32 244, ; 273
	i32 61, ; 274
	i32 54, ; 275
	i32 4, ; 276
	i32 97, ; 277
	i32 235, ; 278
	i32 243, ; 279
	i32 17, ; 280
	i32 154, ; 281
	i32 84, ; 282
	i32 233, ; 283
	i32 29, ; 284
	i32 45, ; 285
	i32 64, ; 286
	i32 66, ; 287
	i32 171, ; 288
	i32 283, ; 289
	i32 1, ; 290
	i32 318, ; 291
	i32 338, ; 292
	i32 47, ; 293
	i32 24, ; 294
	i32 251, ; 295
	i32 190, ; 296
	i32 349, ; 297
	i32 177, ; 298
	i32 164, ; 299
	i32 108, ; 300
	i32 12, ; 301
	i32 277, ; 302
	i32 63, ; 303
	i32 27, ; 304
	i32 23, ; 305
	i32 340, ; 306
	i32 93, ; 307
	i32 167, ; 308
	i32 12, ; 309
	i32 322, ; 310
	i32 211, ; 311
	i32 224, ; 312
	i32 29, ; 313
	i32 103, ; 314
	i32 14, ; 315
	i32 126, ; 316
	i32 362, ; 317
	i32 355, ; 318
	i32 260, ; 319
	i32 292, ; 320
	i32 91, ; 321
	i32 281, ; 322
	i32 238, ; 323
	i32 225, ; 324
	i32 9, ; 325
	i32 86, ; 326
	i32 271, ; 327
	i32 304, ; 328
	i32 71, ; 329
	i32 167, ; 330
	i32 1, ; 331
	i32 291, ; 332
	i32 5, ; 333
	i32 345, ; 334
	i32 44, ; 335
	i32 27, ; 336
	i32 319, ; 337
	i32 157, ; 338
	i32 294, ; 339
	i32 112, ; 340
	i32 210, ; 341
	i32 355, ; 342
	i32 215, ; 343
	i32 191, ; 344
	i32 121, ; 345
	i32 185, ; 346
	i32 309, ; 347
	i32 250, ; 348
	i32 329, ; 349
	i32 214, ; 350
	i32 158, ; 351
	i32 189, ; 352
	i32 353, ; 353
	i32 131, ; 354
	i32 314, ; 355
	i32 57, ; 356
	i32 196, ; 357
	i32 137, ; 358
	i32 83, ; 359
	i32 30, ; 360
	i32 261, ; 361
	i32 10, ; 362
	i32 325, ; 363
	i32 311, ; 364
	i32 170, ; 365
	i32 215, ; 366
	i32 258, ; 367
	i32 149, ; 368
	i32 94, ; 369
	i32 188, ; 370
	i32 271, ; 371
	i32 60, ; 372
	i32 222, ; 373
	i32 156, ; 374
	i32 207, ; 375
	i32 64, ; 376
	i32 88, ; 377
	i32 79, ; 378
	i32 47, ; 379
	i32 220, ; 380
	i32 142, ; 381
	i32 327, ; 382
	i32 194, ; 383
	i32 343, ; 384
	i32 320, ; 385
	i32 265, ; 386
	i32 74, ; 387
	i32 91, ; 388
	i32 317, ; 389
	i32 135, ; 390
	i32 90, ; 391
	i32 303, ; 392
	i32 323, ; 393
	i32 262, ; 394
	i32 182, ; 395
	i32 325, ; 396
	i32 112, ; 397
	i32 42, ; 398
	i32 158, ; 399
	i32 4, ; 400
	i32 103, ; 401
	i32 202, ; 402
	i32 357, ; 403
	i32 70, ; 404
	i32 187, ; 405
	i32 60, ; 406
	i32 39, ; 407
	i32 252, ; 408
	i32 183, ; 409
	i32 152, ; 410
	i32 56, ; 411
	i32 34, ; 412
	i32 206, ; 413
	i32 222, ; 414
	i32 249, ; 415
	i32 21, ; 416
	i32 162, ; 417
	i32 226, ; 418
	i32 201, ; 419
	i32 315, ; 420
	i32 336, ; 421
	i32 313, ; 422
	i32 351, ; 423
	i32 332, ; 424
	i32 308, ; 425
	i32 139, ; 426
	i32 176, ; 427
	i32 339, ; 428
	i32 208, ; 429
	i32 89, ; 430
	i32 146, ; 431
	i32 264, ; 432
	i32 231, ; 433
	i32 161, ; 434
	i32 360, ; 435
	i32 293, ; 436
	i32 188, ; 437
	i32 6, ; 438
	i32 168, ; 439
	i32 31, ; 440
	i32 107, ; 441
	i32 274, ; 442
	i32 234, ; 443
	i32 212, ; 444
	i32 337, ; 445
	i32 308, ; 446
	i32 205, ; 447
	i32 247, ; 448
	i32 301, ; 449
	i32 166, ; 450
	i32 275, ; 451
	i32 139, ; 452
	i32 59, ; 453
	i32 143, ; 454
	i32 354, ; 455
	i32 81, ; 456
	i32 237, ; 457
	i32 74, ; 458
	i32 203, ; 459
	i32 204, ; 460
	i32 130, ; 461
	i32 25, ; 462
	i32 7, ; 463
	i32 93, ; 464
	i32 305, ; 465
	i32 239, ; 466
	i32 241, ; 467
	i32 216, ; 468
	i32 0, ; 469
	i32 113, ; 470
	i32 9, ; 471
	i32 230, ; 472
	i32 234, ; 473
	i32 104, ; 474
	i32 19, ; 475
	i32 213, ; 476
	i32 273, ; 477
	i32 287, ; 478
	i32 363, ; 479
	i32 267, ; 480
	i32 183, ; 481
	i32 33, ; 482
	i32 360, ; 483
	i32 255, ; 484
	i32 46, ; 485
	i32 30, ; 486
	i32 256, ; 487
	i32 57, ; 488
	i32 134, ; 489
	i32 114, ; 490
	i32 310, ; 491
	i32 321, ; 492
	i32 55, ; 493
	i32 209, ; 494
	i32 6, ; 495
	i32 77, ; 496
	i32 232, ; 497
	i32 266, ; 498
	i32 324, ; 499
	i32 180, ; 500
	i32 345, ; 501
	i32 111, ; 502
	i32 270, ; 503
	i32 238, ; 504
	i32 102, ; 505
	i32 359, ; 506
	i32 169, ; 507
	i32 115, ; 508
	i32 333, ; 509
	i32 305, ; 510
	i32 260, ; 511
	i32 76, ; 512
	i32 316, ; 513
	i32 85, ; 514
	i32 318, ; 515
	i32 253, ; 516
	i32 354, ; 517
	i32 200, ; 518
	i32 295, ; 519
	i32 159, ; 520
	i32 2, ; 521
	i32 266, ; 522
	i32 24, ; 523
	i32 246, ; 524
	i32 32, ; 525
	i32 117, ; 526
	i32 37, ; 527
	i32 16, ; 528
	i32 173, ; 529
	i32 52, ; 530
	i32 319, ; 531
	i32 20, ; 532
	i32 240, ; 533
	i32 123, ; 534
	i32 153, ; 535
	i32 199, ; 536
	i32 273, ; 537
	i32 131, ; 538
	i32 181, ; 539
	i32 255, ; 540
	i32 147, ; 541
	i32 185, ; 542
	i32 242, ; 543
	i32 120, ; 544
	i32 28, ; 545
	i32 132, ; 546
	i32 100, ; 547
	i32 134, ; 548
	i32 293, ; 549
	i32 152, ; 550
	i32 97, ; 551
	i32 125, ; 552
	i32 243, ; 553
	i32 0, ; 554
	i32 69, ; 555
	i32 347, ; 556
	i32 72, ; 557
	i32 348, ; 558
	i32 278, ; 559
	i32 356, ; 560
	i32 296, ; 561
	i32 136, ; 562
	i32 124, ; 563
	i32 71, ; 564
	i32 326, ; 565
	i32 111, ; 566
	i32 288, ; 567
	i32 173, ; 568
	i32 197, ; 569
	i32 151, ; 570
	i32 340, ; 571
	i32 339, ; 572
	i32 356, ; 573
	i32 316, ; 574
	i32 118, ; 575
	i32 264, ; 576
	i32 174, ; 577
	i32 324, ; 578
	i32 127, ; 579
	i32 133, ; 580
	i32 198, ; 581
	i32 77, ; 582
	i32 46, ; 583
	i32 267, ; 584
	i32 73, ; 585
	i32 63, ; 586
	i32 98, ; 587
	i32 84, ; 588
	i32 341, ; 589
	i32 43, ; 590
	i32 61, ; 591
	i32 212, ; 592
	i32 294, ; 593
	i32 346, ; 594
	i32 193, ; 595
	i32 37, ; 596
	i32 40, ; 597
	i32 257, ; 598
	i32 322, ; 599
	i32 159, ; 600
	i32 98, ; 601
	i32 262, ; 602
	i32 235, ; 603
	i32 198, ; 604
	i32 178, ; 605
	i32 201, ; 606
	i32 135, ; 607
	i32 20, ; 608
	i32 65, ; 609
	i32 328, ; 610
	i32 125, ; 611
	i32 75, ; 612
	i32 286, ; 613
	i32 175, ; 614
	i32 163, ; 615
	i32 199, ; 616
	i32 155, ; 617
	i32 5, ; 618
	i32 49, ; 619
	i32 300, ; 620
	i32 329, ; 621
	i32 143, ; 622
	i32 196, ; 623
	i32 138, ; 624
	i32 100, ; 625
	i32 219, ; 626
	i32 123, ; 627
	i32 120, ; 628
	i32 141, ; 629
	i32 39, ; 630
	i32 68, ; 631
	i32 41, ; 632
	i32 348, ; 633
	i32 163, ; 634
	i32 73, ; 635
	i32 342, ; 636
	i32 164, ; 637
	i32 206, ; 638
	i32 127, ; 639
	i32 272, ; 640
	i32 321, ; 641
	i32 68, ; 642
	i32 168, ; 643
	i32 285, ; 644
	i32 259, ; 645
	i32 224, ; 646
	i32 292, ; 647
	i32 150, ; 648
	i32 45, ; 649
	i32 108, ; 650
	i32 228, ; 651
	i32 48, ; 652
	i32 96, ; 653
	i32 31, ; 654
	i32 341, ; 655
	i32 23, ; 656
	i32 165, ; 657
	i32 22, ; 658
	i32 137, ; 659
	i32 78, ; 660
	i32 349, ; 661
	i32 172, ; 662
	i32 54, ; 663
	i32 285, ; 664
	i32 290, ; 665
	i32 10, ; 666
	i32 248, ; 667
	i32 289, ; 668
	i32 276, ; 669
	i32 195, ; 670
	i32 16, ; 671
	i32 361, ; 672
	i32 176, ; 673
	i32 138, ; 674
	i32 217, ; 675
	i32 13, ; 676
	i32 211, ; 677
	i32 15, ; 678
	i32 122, ; 679
	i32 344, ; 680
	i32 204, ; 681
	i32 87, ; 682
	i32 148, ; 683
	i32 22, ; 684
	i32 334, ; 685
	i32 34, ; 686
	i32 79, ; 687
	i32 334, ; 688
	i32 314, ; 689
	i32 236, ; 690
	i32 146, ; 691
	i32 80, ; 692
	i32 332, ; 693
	i32 174, ; 694
	i32 237, ; 695
	i32 241, ; 696
	i32 344, ; 697
	i32 42, ; 698
	i32 26, ; 699
	i32 287, ; 700
	i32 284, ; 701
	i32 107, ; 702
	i32 110, ; 703
	i32 214, ; 704
	i32 335, ; 705
	i32 7, ; 706
	i32 317, ; 707
	i32 44, ; 708
	i32 328, ; 709
	i32 160, ; 710
	i32 190, ; 711
	i32 147, ; 712
	i32 253, ; 713
	i32 289, ; 714
	i32 38, ; 715
	i32 15, ; 716
	i32 145, ; 717
	i32 8, ; 718
	i32 270, ; 719
	i32 291, ; 720
	i32 130, ; 721
	i32 338, ; 722
	i32 337, ; 723
	i32 333, ; 724
	i32 229, ; 725
	i32 307, ; 726
	i32 94 ; 727
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
