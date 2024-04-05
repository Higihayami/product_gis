; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [292 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 11
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 76
	i64 40218994123153105, ; 2: ExCSS.dll => 0x8ee2f649ef1ed1 => 8
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 23
	i64 184471870596806994, ; 4: Svg.Skia => 0x28f60305df97952 => 41
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 66
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 98
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 99
	i64 404665707914610830, ; 8: Svg.Custom => 0x59da9513d08488e => 39
	i64 559848537545527438, ; 9: Mapsui.Nts.dll => 0x7c4fb47586c508e => 18
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 85
	i64 687654259221141486, ; 11: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 117
	i64 702024105029695270, ; 12: System.Drawing.Common => 0x9be17343c0e7726 => 4
	i64 720058930071658100, ; 13: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 79
	i64 870603111519317375, ; 14: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 37
	i64 872800313462103108, ; 15: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 75
	i64 940822596282819491, ; 16: System.Transactions => 0xd0e792aa81923a3 => 122
	i64 996343623809489702, ; 17: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 113
	i64 1000557547492888992, ; 18: Mono.Security.dll => 0xde2b1c9cba651a0 => 144
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 115
	i64 1301485588176585670, ; 20: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 36
	i64 1315114680217950157, ; 21: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 61
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 6
	i64 1476839205573959279, ; 23: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 134
	i64 1518315023656898250, ; 24: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 38
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 59
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 87
	i64 1636321030536304333, ; 27: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 80
	i64 1731380447121279447, ; 28: Newtonsoft.Json => 0x18071957e9b889d7 => 28
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 45
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 60
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 98
	i64 1865037103900624886, ; 32: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 22
	i64 1875917498431009007, ; 33: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 57
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 86
	i64 1984538867944326539, ; 35: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 12
	i64 2040001226662520565, ; 36: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 145
	i64 2108673896768817157, ; 37: NetTopologySuite => 0x1d4383bca40b4805 => 25
	i64 2133195048986300728, ; 38: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 28
	i64 2136356949452311481, ; 39: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 91
	i64 2165725771938924357, ; 40: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 64
	i64 2188974421706709258, ; 41: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 31
	i64 2262844636196693701, ; 42: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 75
	i64 2284400282711631002, ; 43: System.Web.Services => 0x1fb3d1f42fd4249a => 127
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 83
	i64 2335503487726329082, ; 45: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 50
	i64 2337758774805907496, ; 46: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 48
	i64 2470498323731680442, ; 47: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 70
	i64 2479423007379663237, ; 48: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 103
	i64 2497223385847772520, ; 49: System.Runtime => 0x22a7eb7046413568 => 49
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 56
	i64 2592350477072141967, ; 51: System.Xml.dll => 0x23f9e10627330e8f => 52
	i64 2624866290265602282, ; 52: mscorlib.dll => 0x246d65fbde2db8ea => 24
	i64 2694427813909235223, ; 53: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 95
	i64 2783046991838674048, ; 54: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 48
	i64 2863324215353042462, ; 55: FFImageLoading.Forms => 0x27bc92340ce4661e => 10
	i64 2934153328772275960, ; 56: Mapsui.UI.Forms => 0x28b834e81e005ef8 => 21
	i64 2960931600190307745, ; 57: Xamarin.Forms.Core => 0x2917579a49927da1 => 109
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 115
	i64 3289520064315143713, ; 59: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 82
	i64 3303437397778967116, ; 60: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 58
	i64 3311221304742556517, ; 61: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 47
	i64 3411255996856937470, ; 62: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 118
	i64 3461602852075779363, ; 63: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 31
	i64 3493805808809882663, ; 64: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 101
	i64 3522470458906976663, ; 65: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 100
	i64 3531994851595924923, ; 66: System.Numerics => 0x31042a9aade235bb => 46
	i64 3571415421602489686, ; 67: System.Runtime.dll => 0x319037675df7e556 => 49
	i64 3658489898830683555, ; 68: Svg.Skia.dll => 0x32c5912df2285da3 => 41
	i64 3696698938527704835, ; 69: Mapsui.Rendering.Skia.dll => 0x334d50194081e703 => 19
	i64 3716579019761409177, ; 70: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 71: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 97
	i64 3772598417116884899, ; 72: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 76
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 45
	i64 4009997192427317104, ; 74: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 142
	i64 4134815263174608974, ; 75: WB.dll => 0x3961d0931d62c84e => 55
	i64 4247996603072512073, ; 76: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 120
	i64 4337444564132831293, ; 77: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 35
	i64 4525561845656915374, ; 78: System.ServiceModel.Internals => 0x3ece06856b710dae => 128
	i64 4636684751163556186, ; 79: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 105
	i64 4782108999019072045, ; 80: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 63
	i64 4794310189461587505, ; 81: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 56
	i64 4795410492532947900, ; 82: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 100
	i64 5040854987801998111, ; 83: Mapsui.Tiling => 0x45f4b6e76031b31f => 20
	i64 5081566143765835342, ; 84: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 5
	i64 5099468265966638712, ; 85: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 5
	i64 5142919913060024034, ; 86: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 112
	i64 5203618020066742981, ; 87: Xamarin.Essentials => 0x4836f704f0e652c5 => 108
	i64 5205316157927637098, ; 88: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 89
	i64 5256995213548036366, ; 89: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 110
	i64 5306356071055648198, ; 90: Svg.Model.dll => 0x49a3f6bb7b0265c6 => 40
	i64 5348796042099802469, ; 91: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 90
	i64 5376510917114486089, ; 92: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 103
	i64 5408338804355907810, ; 93: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 102
	i64 5446034149219586269, ; 94: System.Diagnostics.Debug => 0x4b94333452e150dd => 133
	i64 5451019430259338467, ; 95: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 69
	i64 5507995362134886206, ; 96: System.Core.dll => 0x4c705499688c873e => 43
	i64 5554232792235392498, ; 97: WB => 0x4d14994c05043df2 => 55
	i64 5591065770682330022, ; 98: WB.Android.dll => 0x4d9774b2195daba6 => 0
	i64 5692067934154308417, ; 99: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 107
	i64 5757522595884336624, ; 100: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 67
	i64 5814345312393086621, ; 101: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 95
	i64 5896680224035167651, ; 102: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 84
	i64 6085203216496545422, ; 103: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 113
	i64 6086316965293125504, ; 104: FormsViewGroup.dll => 0x5476f10882baef80 => 14
	i64 6183170893902868313, ; 105: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 35
	i64 6218967553231149354, ; 106: Firebase.Auth.dll => 0x564e360a4805d92a => 13
	i64 6222399776351216807, ; 107: System.Text.Json.dll => 0x565a67a0ffe264a7 => 51
	i64 6319713645133255417, ; 108: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 85
	i64 6354612700029906737, ; 109: ShimSkiaSharp.dll => 0x58301e951e77ef31 => 29
	i64 6363787360044722189, ; 110: ShimSkiaSharp => 0x5850b6e31d96280d => 29
	i64 6401687960814735282, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 83
	i64 6504860066809920875, ; 112: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 64
	i64 6548213210057960872, ; 113: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 73
	i64 6591024623626361694, ; 114: System.Web.Services.dll => 0x5b7805f9751a1b5e => 127
	i64 6617685658146568858, ; 115: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 143
	i64 6659513131007730089, ; 116: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 79
	i64 6671798237668743565, ; 117: SkiaSharp => 0x5c96fd260152998d => 30
	i64 6876862101832370452, ; 118: System.Xml.Linq => 0x5f6f85a57d108914 => 53
	i64 6894844156784520562, ; 119: System.Numerics.Vectors => 0x5faf683aead1ad72 => 47
	i64 7036436454368433159, ; 120: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 81
	i64 7103753931438454322, ; 121: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 78
	i64 7141281584637745974, ; 122: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 119
	i64 7270811800166795866, ; 123: System.Linq => 0x64e71ccf51a90a5a => 139
	i64 7338192458477945005, ; 124: System.Reflection => 0x65d67f295d0740ad => 130
	i64 7488575175965059935, ; 125: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 53
	i64 7489048572193775167, ; 126: System.ObjectModel => 0x67ee71ff6b419e3f => 140
	i64 7635363394907363464, ; 127: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 109
	i64 7637365915383206639, ; 128: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 108
	i64 7654504624184590948, ; 129: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7792632648484821929, ; 130: Topten.RichTextKit.dll => 0x6c24fe1b4e0c9ba9 => 54
	i64 7820441508502274321, ; 131: System.Data => 0x6c87ca1e14ff8111 => 121
	i64 7836164640616011524, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 59
	i64 7927939710195668715, ; 133: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 32
	i64 8044118961405839122, ; 134: System.ComponentModel.Composition => 0x6fa2739369944712 => 126
	i64 8064050204834738623, ; 135: System.Collections.dll => 0x6fe942efa61731bf => 129
	i64 8083354569033831015, ; 136: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 82
	i64 8103644804370223335, ; 137: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 123
	i64 8113615946733131500, ; 138: System.Reflection.Extensions => 0x70995ab73cf916ec => 3
	i64 8167236081217502503, ; 139: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 16
	i64 8185542183669246576, ; 140: System.Collections => 0x7198e33f4794aa70 => 129
	i64 8187102936927221770, ; 141: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 33
	i64 8290740647658429042, ; 142: System.Runtime.Extensions => 0x730ea0b15c929a72 => 136
	i64 8357409459873968396, ; 143: Mapsui.Nts => 0x73fb7b9fd246f10c => 18
	i64 8398329775253868912, ; 144: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 68
	i64 8400357532724379117, ; 145: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 94
	i64 8601935802264776013, ; 146: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 102
	i64 8626175481042262068, ; 147: Java.Interop => 0x77b654e585b55834 => 16
	i64 8639588376636138208, ; 148: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 93
	i64 8684531736582871431, ; 149: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 125
	i64 8834232125107082525, ; 150: ExCSS => 0x7a997f4fe05a151d => 8
	i64 9018325420426354176, ; 151: Topten.RichTextKit => 0x7d27873051635e00 => 54
	i64 9114191852432800567, ; 152: FFImageLoading.dll => 0x7e7c1d3363043b37 => 9
	i64 9119672718617465806, ; 153: Mapsui.Rendering.Skia => 0x7e8f9604fd03d3ce => 19
	i64 9238306115887712111, ; 154: FFImageLoading.Forms.dll => 0x80350e773bce476f => 10
	i64 9248940107580716988, ; 155: Svg.Custom.dll => 0x805ad6065d3637bc => 39
	i64 9312692141327339315, ; 156: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 107
	i64 9324707631942237306, ; 157: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 60
	i64 9324884822702401407, ; 158: NetTopologySuite.IO.GeoJSON4STJ.dll => 0x8168a557449ba77f => 27
	i64 9584643793929893533, ; 159: System.IO.dll => 0x85037ebfbbd7f69d => 132
	i64 9659729154652888475, ; 160: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 161: System.Numerics.dll => 0x8617827802b0cfc3 => 46
	i64 9678050649315576968, ; 162: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 70
	i64 9711637524876806384, ; 163: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 90
	i64 9808709177481450983, ; 164: Mono.Android.dll => 0x881f890734e555e7 => 23
	i64 9825649861376906464, ; 165: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 67
	i64 9834056768316610435, ; 166: System.Transactions.dll => 0x8879968718899783 => 122
	i64 9875200773399460291, ; 167: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 117
	i64 9998632235833408227, ; 168: Mono.Security => 0x8ac2470b209ebae3 => 144
	i64 10038780035334861115, ; 169: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10077284195238799794, ; 170: BruTile.dll => 0x8bd9b49575dde9b2 => 7
	i64 10229024438826829339, ; 171: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 73
	i64 10298993431124104701, ; 172: Mapsui.UI.Forms.dll => 0x8eed5ff58e3bd5fd => 21
	i64 10360651442923773544, ; 173: System.Text.Encoding => 0x8fc86d98211c1e68 => 137
	i64 10376576884623852283, ; 174: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 101
	i64 10430153318873392755, ; 175: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 71
	i64 10447083246144586668, ; 176: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 22
	i64 10566960649245365243, ; 177: System.Globalization.dll => 0x92a562b96dcd13fb => 141
	i64 10714184849103829812, ; 178: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 136
	i64 10775409704848971057, ; 179: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 111
	i64 10785150219063592792, ; 180: System.Net.Primitives => 0x95ac8cfb68830758 => 134
	i64 10847732767863316357, ; 181: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 61
	i64 11023048688141570732, ; 182: System.Core => 0x98f9bc61168392ac => 43
	i64 11037814507248023548, ; 183: System.Xml => 0x992e31d0412bf7fc => 52
	i64 11162124722117608902, ; 184: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 106
	i64 11216600183782743182, ; 185: Svg.Model => 0x9ba95e7065f39c8e => 40
	i64 11340910727871153756, ; 186: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 72
	i64 11392833485892708388, ; 187: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 96
	i64 11444370155346000636, ; 188: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 110
	i64 11478254788954680069, ; 189: NetTopologySuite.Features => 0x9f4af3ea8911eb05 => 26
	i64 11529969570048099689, ; 190: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 106
	i64 11578238080964724296, ; 191: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 81
	i64 11580057168383206117, ; 192: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 57
	i64 11597940890313164233, ; 193: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 194: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 78
	i64 11739066727115742305, ; 195: SQLite-net.dll => 0xa2e98afdf8575c61 => 34
	i64 11743665907891708234, ; 196: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 131
	i64 11806260347154423189, ; 197: SQLite-net => 0xa3d8433bc5eb5d95 => 34
	i64 12102847907131387746, ; 198: System.Buffers => 0xa7f5f40c43256f62 => 42
	i64 12123043025855404482, ; 199: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 3
	i64 12137774235383566651, ; 200: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 104
	i64 12145679461940342714, ; 201: System.Text.Json => 0xa88e1f1ebcb62fba => 51
	i64 12201331334810686224, ; 202: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 142
	i64 12247834191021032507, ; 203: NetTopologySuite.Features.dll => 0xa9f90c4e0fb1443b => 26
	i64 12279246230491828964, ; 204: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 38
	i64 12444627590449432998, ; 205: WB.Android => 0xacb432dbeac389a6 => 0
	i64 12451044538927396471, ; 206: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 77
	i64 12466513435562512481, ; 207: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 88
	i64 12487638416075308985, ; 208: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 74
	i64 12528155905152483962, ; 209: Firebase.Auth => 0xaddcf36b3153827a => 13
	i64 12538491095302438457, ; 210: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 65
	i64 12550732019250633519, ; 211: System.IO.Compression => 0xae2d28465e8e1b2f => 124
	i64 12700543734426720211, ; 212: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 66
	i64 12708238894395270091, ; 213: System.IO => 0xb05cbbf17d3ba3cb => 132
	i64 12963446364377008305, ; 214: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 4
	i64 13106026140046202731, ; 215: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 15
	i64 13370592475155966277, ; 216: System.Runtime.Serialization => 0xb98de304062ea945 => 6
	i64 13401370062847626945, ; 217: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 104
	i64 13404347523447273790, ; 218: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 68
	i64 13454009404024712428, ; 219: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 116
	i64 13491513212026656886, ; 220: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 62
	i64 13492263892638604996, ; 221: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 33
	i64 13572454107664307259, ; 222: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 97
	i64 13646648927693774012, ; 223: BruTile => 0xbd62a2e58da71cbc => 7
	i64 13647894001087880694, ; 224: System.Data.dll => 0xbd670f48cb071df6 => 121
	i64 13959074834287824816, ; 225: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 77
	i64 13967638549803255703, ; 226: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 112
	i64 14124974489674258913, ; 227: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 65
	i64 14125464355221830302, ; 228: System.Threading.dll => 0xc407bafdbc707a9e => 135
	i64 14172845254133543601, ; 229: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 91
	i64 14261073672896646636, ; 230: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 96
	i64 14327695147300244862, ; 231: System.Reflection.dll => 0xc6d632d338eb4d7e => 130
	i64 14486659737292545672, ; 232: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 84
	i64 14551742072151931844, ; 233: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 50
	i64 14641944974530824122, ; 234: Mapsui => 0xcb32a360c3b9c7ba => 17
	i64 14644440854989303794, ; 235: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 89
	i64 14792063746108907174, ; 236: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 116
	i64 14852515768018889994, ; 237: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 72
	i64 14931407803744742450, ; 238: HarfBuzzSharp => 0xcf3704499ab36c32 => 15
	i64 14935719434541007538, ; 239: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 143
	i64 14987728460634540364, ; 240: System.IO.Compression.dll => 0xcfff1ba06622494c => 124
	i64 14988210264188246988, ; 241: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 74
	i64 15076659072870671916, ; 242: System.ObjectModel.dll => 0xd13b0d8c1620662c => 140
	i64 15133485256822086103, ; 243: System.Linq.dll => 0xd204f0a9127dd9d7 => 139
	i64 15370334346939861994, ; 244: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 71
	i64 15398511348637731642, ; 245: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 11
	i64 15526743539506359484, ; 246: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 137
	i64 15582737692548360875, ; 247: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 87
	i64 15609085926864131306, ; 248: System.dll => 0xd89e9cf3334914ea => 44
	i64 15777549416145007739, ; 249: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 99
	i64 15810740023422282496, ; 250: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 114
	i64 15817206913877585035, ; 251: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 131
	i64 15930129725311349754, ; 252: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 120
	i64 15963349826457351533, ; 253: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 145
	i64 16154507427712707110, ; 254: System => 0xe03056ea4e39aa26 => 44
	i64 16324796876805858114, ; 255: SkiaSharp.dll => 0xe28d5444586b6342 => 30
	i64 16565028646146589191, ; 256: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 126
	i64 16621146507174665210, ; 257: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 69
	i64 16677317093839702854, ; 258: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 94
	i64 16755018182064898362, ; 259: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 36
	i64 16822611501064131242, ; 260: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 123
	i64 16833383113903931215, ; 261: mscorlib => 0xe99c30c1484d7f4f => 24
	i64 16890310621557459193, ; 262: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 17024911836938395553, ; 263: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 58
	i64 17031351772568316411, ; 264: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 92
	i64 17037200463775726619, ; 265: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 80
	i64 17084484735261948889, ; 266: NetTopologySuite.IO.GeoJSON4STJ => 0xed18485967df3bd9 => 27
	i64 17452310354824359952, ; 267: Mapsui.Tiling.dll => 0xf2330fcd292d7010 => 20
	i64 17544493274320527064, ; 268: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 63
	i64 17627500474728259406, ; 269: System.Globalization => 0xf4a176498a351f4e => 141
	i64 17643123953373031521, ; 270: FFImageLoading => 0xf4d8f7c220fc2c61 => 9
	i64 17671790519499593115, ; 271: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 32
	i64 17685921127322830888, ; 272: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 133
	i64 17704177640604968747, ; 273: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 88
	i64 17710060891934109755, ; 274: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 86
	i64 17816041456001989629, ; 275: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 111
	i64 17838668724098252521, ; 276: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 42
	i64 17882897186074144999, ; 277: FormsViewGroup => 0xf82cd03e3ac830e7 => 14
	i64 17892495832318972303, ; 278: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 114
	i64 17928294245072900555, ; 279: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 125
	i64 17947624217716767869, ; 280: FFImageLoading.Platform => 0xf912c522ab34bc7d => 12
	i64 17969331831154222830, ; 281: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 119
	i64 17986907704309214542, ; 282: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 118
	i64 18025913125965088385, ; 283: System.Threading => 0xfa28e87b91334681 => 135
	i64 18096531542100961995, ; 284: NetTopologySuite.dll => 0xfb23cb8ed9946acb => 25
	i64 18116111925905154859, ; 285: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 62
	i64 18121036031235206392, ; 286: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 92
	i64 18129453464017766560, ; 287: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 128
	i64 18305135509493619199, ; 288: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 93
	i64 18370042311372477656, ; 289: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 37
	i64 18380184030268848184, ; 290: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 105
	i64 18421022575907732603 ; 291: Mapsui.dll => 0xffa49e6f1c6e7c7b => 17
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [292 x i32] [
	i32 11, i32 76, i32 8, i32 23, i32 41, i32 66, i32 98, i32 99, ; 0..7
	i32 39, i32 18, i32 85, i32 117, i32 4, i32 79, i32 37, i32 75, ; 8..15
	i32 122, i32 113, i32 144, i32 115, i32 36, i32 61, i32 6, i32 134, ; 16..23
	i32 38, i32 59, i32 87, i32 80, i32 28, i32 45, i32 60, i32 98, ; 24..31
	i32 22, i32 57, i32 86, i32 12, i32 145, i32 25, i32 28, i32 91, ; 32..39
	i32 64, i32 31, i32 75, i32 127, i32 83, i32 50, i32 48, i32 70, ; 40..47
	i32 103, i32 49, i32 56, i32 52, i32 24, i32 95, i32 48, i32 10, ; 48..55
	i32 21, i32 109, i32 115, i32 82, i32 58, i32 47, i32 118, i32 31, ; 56..63
	i32 101, i32 100, i32 46, i32 49, i32 41, i32 19, i32 1, i32 97, ; 64..71
	i32 76, i32 45, i32 142, i32 55, i32 120, i32 35, i32 128, i32 105, ; 72..79
	i32 63, i32 56, i32 100, i32 20, i32 5, i32 5, i32 112, i32 108, ; 80..87
	i32 89, i32 110, i32 40, i32 90, i32 103, i32 102, i32 133, i32 69, ; 88..95
	i32 43, i32 55, i32 0, i32 107, i32 67, i32 95, i32 84, i32 113, ; 96..103
	i32 14, i32 35, i32 13, i32 51, i32 85, i32 29, i32 29, i32 83, ; 104..111
	i32 64, i32 73, i32 127, i32 143, i32 79, i32 30, i32 53, i32 47, ; 112..119
	i32 81, i32 78, i32 119, i32 139, i32 130, i32 53, i32 140, i32 109, ; 120..127
	i32 108, i32 2, i32 54, i32 121, i32 59, i32 32, i32 126, i32 129, ; 128..135
	i32 82, i32 123, i32 3, i32 16, i32 129, i32 33, i32 136, i32 18, ; 136..143
	i32 68, i32 94, i32 102, i32 16, i32 93, i32 125, i32 8, i32 54, ; 144..151
	i32 9, i32 19, i32 10, i32 39, i32 107, i32 60, i32 27, i32 132, ; 152..159
	i32 138, i32 46, i32 70, i32 90, i32 23, i32 67, i32 122, i32 117, ; 160..167
	i32 144, i32 2, i32 7, i32 73, i32 21, i32 137, i32 101, i32 71, ; 168..175
	i32 22, i32 141, i32 136, i32 111, i32 134, i32 61, i32 43, i32 52, ; 176..183
	i32 106, i32 40, i32 72, i32 96, i32 110, i32 26, i32 106, i32 81, ; 184..191
	i32 57, i32 1, i32 78, i32 34, i32 131, i32 34, i32 42, i32 3, ; 192..199
	i32 104, i32 51, i32 142, i32 26, i32 38, i32 0, i32 77, i32 88, ; 200..207
	i32 74, i32 13, i32 65, i32 124, i32 66, i32 132, i32 4, i32 15, ; 208..215
	i32 6, i32 104, i32 68, i32 116, i32 62, i32 33, i32 97, i32 7, ; 216..223
	i32 121, i32 77, i32 112, i32 65, i32 135, i32 91, i32 96, i32 130, ; 224..231
	i32 84, i32 50, i32 17, i32 89, i32 116, i32 72, i32 15, i32 143, ; 232..239
	i32 124, i32 74, i32 140, i32 139, i32 71, i32 11, i32 137, i32 87, ; 240..247
	i32 44, i32 99, i32 114, i32 131, i32 120, i32 145, i32 44, i32 30, ; 248..255
	i32 126, i32 69, i32 94, i32 36, i32 123, i32 24, i32 138, i32 58, ; 256..263
	i32 92, i32 80, i32 27, i32 20, i32 63, i32 141, i32 9, i32 32, ; 264..271
	i32 133, i32 88, i32 86, i32 111, i32 42, i32 14, i32 114, i32 125, ; 272..279
	i32 12, i32 119, i32 118, i32 135, i32 25, i32 62, i32 92, i32 128, ; 280..287
	i32 93, i32 37, i32 105, i32 17 ; 288..291
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
