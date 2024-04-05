; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [292 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 85
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 116
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 28
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 109
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 99
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 99
	i32 146013796, ; 6: Mapsui.UI.Forms.dll => 0x8b3fe64 => 21
	i32 149764678, ; 7: Svg.Skia.dll => 0x8ed3a46 => 41
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 66
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 100
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 64
	i32 212497893, ; 11: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 110
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 133
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 80
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 141
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 127
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 69
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 84
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 78
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 56
	i32 319314094, ; 20: Xamarin.Forms.Maps => 0x130858ae => 111
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 46
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 82
	i32 347068432, ; 23: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 37
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 45
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 68
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 108
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 129
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 77
	i32 459347974, ; 29: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 142
	i32 465658307, ; 30: ExCSS => 0x1bc161c3 => 8
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 24
	i32 469710990, ; 32: System.dll => 0x1bff388e => 44
	i32 469965489, ; 33: Svg.Model => 0x1c031ab1 => 40
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 78
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 89
	i32 498788369, ; 36: System.ObjectModel => 0x1dbae811 => 140
	i32 520798577, ; 37: FFImageLoading.Platform => 0x1f0ac171 => 12
	i32 525008092, ; 38: SkiaSharp.dll => 0x1f4afcdc => 30
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 122
	i32 545304856, ; 40: System.Runtime.Extensions => 0x2080b118 => 136
	i32 548916678, ; 41: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 22
	i32 605376203, ; 42: System.IO.Compression.FileSystem => 0x24154ecb => 125
	i32 627609679, ; 43: Xamarin.AndroidX.CustomView => 0x2568904f => 73
	i32 662205335, ; 44: System.Text.Encodings.Web.dll => 0x27787397 => 50
	i32 663517072, ; 45: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 105
	i32 666292255, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 61
	i32 680049820, ; 47: Mapsui.Rendering.Skia.dll => 0x2888bc9c => 19
	i32 690569205, ; 48: System.Xml.Linq.dll => 0x29293ff5 => 53
	i32 748832960, ; 49: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 35
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 124
	i32 778756650, ; 51: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 31
	i32 809851609, ; 52: System.Drawing.Common.dll => 0x30455ad9 => 4
	i32 843511501, ; 53: Xamarin.AndroidX.Print => 0x3246f6cd => 96
	i32 877678880, ; 54: System.Globalization.dll => 0x34505120 => 141
	i32 888630949, ; 55: WB.Android.dll => 0x34f76ea5 => 0
	i32 899130691, ; 56: NetTopologySuite.dll => 0x3597a543 => 25
	i32 928116545, ; 57: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 116
	i32 955402788, ; 58: Newtonsoft.Json => 0x38f24a24 => 28
	i32 967690846, ; 59: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 82
	i32 974778368, ; 60: FormsViewGroup.dll => 0x3a19f000 => 14
	i32 992768348, ; 61: System.Collections.dll => 0x3b2c715c => 129
	i32 1012816738, ; 62: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 98
	i32 1035644815, ; 63: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 60
	i32 1042160112, ; 64: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 113
	i32 1052210849, ; 65: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 86
	i32 1098259244, ; 66: System => 0x41761b2c => 44
	i32 1175144683, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 103
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 93
	i32 1204270330, ; 69: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 61
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 104
	i32 1292207520, ; 71: SQLitePCLRaw.core.dll => 0x4d0585a0 => 36
	i32 1293217323, ; 72: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 75
	i32 1313028017, ; 73: Topten.RichTextKit => 0x4e4337b1 => 54
	i32 1324164729, ; 74: System.Linq => 0x4eed2679 => 139
	i32 1345881328, ; 75: WB.dll => 0x503884f0 => 55
	i32 1350187636, ; 76: Mapsui.UI.Forms => 0x507a3a74 => 21
	i32 1364015309, ; 77: System.IO => 0x514d38cd => 132
	i32 1365406463, ; 78: System.ServiceModel.Internals.dll => 0x516272ff => 128
	i32 1376866003, ; 79: Xamarin.AndroidX.SavedState => 0x52114ed3 => 98
	i32 1379779777, ; 80: System.Resources.ResourceManager => 0x523dc4c1 => 5
	i32 1388087747, ; 81: Mapsui.dll => 0x52bc89c3 => 17
	i32 1395857551, ; 82: Xamarin.AndroidX.Media.dll => 0x5333188f => 90
	i32 1406073936, ; 83: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 70
	i32 1411638395, ; 84: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 48
	i32 1422967952, ; 85: Mapsui.Tiling.dll => 0x54d0c490 => 20
	i32 1443938015, ; 86: NetTopologySuite => 0x5610bedf => 25
	i32 1457743152, ; 87: System.Runtime.Extensions.dll => 0x56e36530 => 136
	i32 1460219004, ; 88: Xamarin.Forms.Xaml => 0x57092c7c => 114
	i32 1462112819, ; 89: System.IO.Compression.dll => 0x57261233 => 124
	i32 1469204771, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 59
	i32 1520856217, ; 91: WB => 0x5aa66c99 => 55
	i32 1530663695, ; 92: Xamarin.Forms.Maps.dll => 0x5b3c130f => 111
	i32 1530772511, ; 93: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 11
	i32 1543031311, ; 94: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1550322496, ; 95: System.Reflection.Extensions.dll => 0x5c680b40 => 3
	i32 1582372066, ; 96: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 74
	i32 1592978981, ; 97: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1600541741, ; 98: ShimSkiaSharp => 0x5f66542d => 29
	i32 1622152042, ; 99: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 88
	i32 1624863272, ; 100: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 107
	i32 1636350590, ; 101: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 72
	i32 1639515021, ; 102: System.Net.Http.dll => 0x61b9038d => 2
	i32 1639986890, ; 103: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1657153582, ; 104: System.Runtime => 0x62c6282e => 49
	i32 1658241508, ; 105: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 101
	i32 1658251792, ; 106: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 115
	i32 1670060433, ; 107: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 69
	i32 1672364457, ; 108: NetTopologySuite.IO.GeoJSON4STJ.dll => 0x63ae41a9 => 27
	i32 1677501392, ; 109: System.Net.Primitives.dll => 0x63fca3d0 => 134
	i32 1701541528, ; 110: System.Diagnostics.Debug.dll => 0x656b7698 => 133
	i32 1711441057, ; 111: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 37
	i32 1722051300, ; 112: SkiaSharp.Views.Forms => 0x66a46ae4 => 33
	i32 1726116996, ; 113: System.Reflection.dll => 0x66e27484 => 130
	i32 1729485958, ; 114: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 65
	i32 1765942094, ; 115: System.Reflection.Extensions => 0x6942234e => 3
	i32 1766324549, ; 116: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 100
	i32 1776026572, ; 117: System.Core.dll => 0x69dc03cc => 43
	i32 1788241197, ; 118: Xamarin.AndroidX.Fragment => 0x6a96652d => 77
	i32 1793089559, ; 119: FFImageLoading.Forms.dll => 0x6ae06017 => 10
	i32 1796167890, ; 120: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 22
	i32 1808609942, ; 121: Xamarin.AndroidX.Loader => 0x6bcd3296 => 88
	i32 1813201214, ; 122: Xamarin.Google.Android.Material => 0x6c13413e => 115
	i32 1818569960, ; 123: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 94
	i32 1839733746, ; 124: Mapsui.Nts.dll => 0x6da81bf2 => 18
	i32 1840964413, ; 125: FFImageLoading.Forms => 0x6dbae33d => 10
	i32 1867746548, ; 126: Xamarin.Essentials.dll => 0x6f538cf4 => 108
	i32 1878053835, ; 127: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 114
	i32 1881862856, ; 128: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 110
	i32 1885316902, ; 129: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 62
	i32 1900610850, ; 130: System.Resources.ResourceManager.dll => 0x71490522 => 5
	i32 1908813208, ; 131: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 118
	i32 1919157823, ; 132: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 91
	i32 2011961780, ; 133: System.Buffers.dll => 0x77ec19b4 => 42
	i32 2019465201, ; 134: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 86
	i32 2055257422, ; 135: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 83
	i32 2079903147, ; 136: System.Runtime.dll => 0x7bf8cdab => 49
	i32 2090596640, ; 137: System.Numerics.Vectors => 0x7c9bf920 => 47
	i32 2097448633, ; 138: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 79
	i32 2103459038, ; 139: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 38
	i32 2126786730, ; 140: Xamarin.Forms.Platform.Android => 0x7ec430aa => 112
	i32 2129483829, ; 141: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 117
	i32 2193016926, ; 142: System.ObjectModel.dll => 0x82b6c85e => 140
	i32 2201231467, ; 143: System.Net.Http => 0x8334206b => 2
	i32 2216717168, ; 144: Firebase.Auth.dll => 0x84206b70 => 13
	i32 2217644978, ; 145: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 103
	i32 2244775296, ; 146: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 89
	i32 2256548716, ; 147: Xamarin.AndroidX.MultiDex => 0x8680336c => 91
	i32 2261435625, ; 148: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 81
	i32 2279755925, ; 149: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 97
	i32 2315684594, ; 150: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 57
	i32 2327893114, ; 151: ExCSS.dll => 0x8ac0d47a => 8
	i32 2340826669, ; 152: FFImageLoading.dll => 0x8b862e2d => 9
	i32 2353062107, ; 153: System.Net.Primitives => 0x8c40e0db => 134
	i32 2409053734, ; 154: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 95
	i32 2454642406, ; 155: System.Text.Encoding.dll => 0x924edee6 => 137
	i32 2465273461, ; 156: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 35
	i32 2465532216, ; 157: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 68
	i32 2471841756, ; 158: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 159: Java.Interop.dll => 0x93918882 => 16
	i32 2501346920, ; 160: System.Data.DataSetExtensions => 0x95178668 => 123
	i32 2505896520, ; 161: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 85
	i32 2523023297, ; 162: Svg.Custom.dll => 0x966247c1 => 39
	i32 2570120770, ; 163: System.Text.Encodings.Web => 0x9930ee42 => 50
	i32 2577414832, ; 164: Mapsui.Nts => 0x99a03ab0 => 18
	i32 2581819634, ; 165: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 104
	i32 2585887371, ; 166: WB.Android => 0x9a21828b => 0
	i32 2602257211, ; 167: Svg.Model.dll => 0x9b1b4b3b => 40
	i32 2609324236, ; 168: Svg.Custom => 0x9b8720cc => 39
	i32 2620871830, ; 169: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 72
	i32 2624644809, ; 170: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 76
	i32 2633051222, ; 171: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 84
	i32 2693849962, ; 172: System.IO.dll => 0xa090e36a => 132
	i32 2701096212, ; 173: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 101
	i32 2715334215, ; 174: System.Threading.Tasks.dll => 0xa1d8b647 => 131
	i32 2732626843, ; 175: Xamarin.AndroidX.Activity => 0xa2e0939b => 56
	i32 2737747696, ; 176: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 59
	i32 2756874198, ; 177: NetTopologySuite.IO.GeoJSON4STJ => 0xa4528fd6 => 27
	i32 2765824710, ; 178: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 143
	i32 2766581644, ; 179: Xamarin.Forms.Core => 0xa4e6af8c => 109
	i32 2778768386, ; 180: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 106
	i32 2795602088, ; 181: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 32
	i32 2810250172, ; 182: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 70
	i32 2819470561, ; 183: System.Xml.dll => 0xa80db4e1 => 52
	i32 2842369275, ; 184: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 11
	i32 2847418871, ; 185: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 117
	i32 2853208004, ; 186: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 106
	i32 2855708567, ; 187: Xamarin.AndroidX.Transition => 0xaa36a797 => 102
	i32 2873222696, ; 188: FFImageLoading => 0xab41e628 => 9
	i32 2901442782, ; 189: System.Reflection => 0xacf080de => 130
	i32 2903344695, ; 190: System.ComponentModel.Composition => 0xad0d8637 => 126
	i32 2905242038, ; 191: mscorlib.dll => 0xad2a79b6 => 24
	i32 2912489636, ; 192: SkiaSharp.Views.Android => 0xad9910a4 => 32
	i32 2916838712, ; 193: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 107
	i32 2919462931, ; 194: System.Numerics.Vectors.dll => 0xae037813 => 47
	i32 2921128767, ; 195: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 58
	i32 2974793899, ; 196: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 33
	i32 2978675010, ; 197: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 75
	i32 3017076677, ; 198: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 119
	i32 3024354802, ; 199: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 80
	i32 3044182254, ; 200: FormsViewGroup => 0xb57288ee => 14
	i32 3057625584, ; 201: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 92
	i32 3058099980, ; 202: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 120
	i32 3075834255, ; 203: System.Threading.Tasks => 0xb755818f => 131
	i32 3111772706, ; 204: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3124832203, ; 205: System.Threading.Tasks.Extensions => 0xba4127cb => 145
	i32 3134694676, ; 206: ShimSkiaSharp.dll => 0xbad7a514 => 29
	i32 3204380047, ; 207: System.Data.dll => 0xbefef58f => 121
	i32 3211777861, ; 208: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 74
	i32 3220365878, ; 209: System.Threading => 0xbff2e236 => 135
	i32 3230466174, ; 210: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 118
	i32 3247949154, ; 211: Mono.Security => 0xc197c562 => 144
	i32 3258312781, ; 212: Xamarin.AndroidX.CardView => 0xc235e84d => 65
	i32 3265893370, ; 213: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 145
	i32 3267021929, ; 214: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 63
	i32 3278552754, ; 215: Mapsui => 0xc36abeb2 => 17
	i32 3286872994, ; 216: SQLite-net.dll => 0xc3e9b3a2 => 34
	i32 3299363146, ; 217: System.Text.Encoding => 0xc4a8494a => 137
	i32 3317135071, ; 218: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 73
	i32 3317144872, ; 219: System.Data => 0xc5b79d28 => 121
	i32 3340387945, ; 220: SkiaSharp => 0xc71a4669 => 30
	i32 3340431453, ; 221: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 62
	i32 3346324047, ; 222: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 93
	i32 3353484488, ; 223: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 79
	i32 3358260929, ; 224: System.Text.Json => 0xc82afec1 => 51
	i32 3360279109, ; 225: SQLitePCLRaw.core => 0xc849ca45 => 36
	i32 3362522851, ; 226: Xamarin.AndroidX.Core => 0xc86c06e3 => 71
	i32 3366347497, ; 227: Java.Interop => 0xc8a662e9 => 16
	i32 3374999561, ; 228: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 97
	i32 3395150330, ; 229: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 48
	i32 3404865022, ; 230: System.ServiceModel.Internals => 0xcaf21dfe => 128
	i32 3429136800, ; 231: System.Xml => 0xcc6479a0 => 52
	i32 3430777524, ; 232: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 233: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 76
	i32 3459815001, ; 234: Mapsui.Rendering.Skia => 0xce389659 => 19
	i32 3476120550, ; 235: Mono.Android => 0xcf3163e6 => 23
	i32 3485117614, ; 236: System.Text.Json.dll => 0xcfbaacae => 51
	i32 3486566296, ; 237: System.Transactions => 0xcfd0c798 => 122
	i32 3493954962, ; 238: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 67
	i32 3501239056, ; 239: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 63
	i32 3509114376, ; 240: System.Xml.Linq => 0xd128d608 => 53
	i32 3536029504, ; 241: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 112
	i32 3567349600, ; 242: System.ComponentModel.Composition.dll => 0xd4a16f60 => 126
	i32 3608519521, ; 243: System.Linq.dll => 0xd715a361 => 139
	i32 3618140916, ; 244: Xamarin.AndroidX.Preference => 0xd7a872f4 => 95
	i32 3627220390, ; 245: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 96
	i32 3632359727, ; 246: Xamarin.Forms.Platform => 0xd881692f => 113
	i32 3633644679, ; 247: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 58
	i32 3641597786, ; 248: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 83
	i32 3672681054, ; 249: Mono.Android.dll => 0xdae8aa5e => 23
	i32 3676310014, ; 250: System.Web.Services.dll => 0xdb2009fe => 127
	i32 3682565725, ; 251: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 64
	i32 3684561358, ; 252: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 67
	i32 3689375977, ; 253: System.Drawing.Common => 0xdbe768e9 => 4
	i32 3718780102, ; 254: Xamarin.AndroidX.Annotation => 0xdda814c6 => 57
	i32 3724971120, ; 255: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 92
	i32 3754567612, ; 256: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 38
	i32 3758932259, ; 257: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 81
	i32 3786282454, ; 258: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 66
	i32 3792835768, ; 259: HarfBuzzSharp => 0xe21214b8 => 15
	i32 3798102808, ; 260: BruTile => 0xe2627318 => 7
	i32 3822602673, ; 261: Xamarin.AndroidX.Media => 0xe3d849b1 => 90
	i32 3829621856, ; 262: System.Numerics.dll => 0xe4436460 => 46
	i32 3876362041, ; 263: SQLite-net => 0xe70c9739 => 34
	i32 3885922214, ; 264: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 102
	i32 3896760992, ; 265: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 71
	i32 3920810846, ; 266: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 125
	i32 3921031405, ; 267: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 105
	i32 3931092270, ; 268: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 94
	i32 3934069706, ; 269: Topten.RichTextKit.dll => 0xea7d23ca => 54
	i32 3945713374, ; 270: System.Data.DataSetExtensions.dll => 0xeb2ecede => 123
	i32 3952289091, ; 271: NetTopologySuite.Features.dll => 0xeb932543 => 26
	i32 3953583589, ; 272: Svg.Skia => 0xeba6e5e5 => 41
	i32 3953953790, ; 273: System.Text.Encoding.CodePages => 0xebac8bfe => 143
	i32 3955647286, ; 274: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 60
	i32 3970018735, ; 275: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 120
	i32 4003906742, ; 276: HarfBuzzSharp.dll => 0xeea6c4b6 => 15
	i32 4013003792, ; 277: BruTile.dll => 0xef319410 => 7
	i32 4022681963, ; 278: Mapsui.Tiling => 0xefc5416b => 20
	i32 4024013275, ; 279: Firebase.Auth => 0xefd991db => 13
	i32 4025784931, ; 280: System.Memory => 0xeff49a63 => 45
	i32 4066802364, ; 281: SkiaSharp.HarfBuzz => 0xf2667abc => 31
	i32 4073602200, ; 282: System.Threading.dll => 0xf2ce3c98 => 135
	i32 4105002889, ; 283: Mono.Security.dll => 0xf4ad5f89 => 144
	i32 4144557198, ; 284: NetTopologySuite.Features => 0xf708ec8e => 26
	i32 4151237749, ; 285: System.Core => 0xf76edc75 => 43
	i32 4181436372, ; 286: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 142
	i32 4182413190, ; 287: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 87
	i32 4184283386, ; 288: FFImageLoading.Platform.dll => 0xf96718fa => 12
	i32 4260525087, ; 289: System.Buffers => 0xfdf2741f => 42
	i32 4278134329, ; 290: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 119
	i32 4292120959 ; 291: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 87
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [292 x i32] [
	i32 85, i32 116, i32 28, i32 109, i32 99, i32 99, i32 21, i32 41, ; 0..7
	i32 66, i32 100, i32 64, i32 110, i32 133, i32 80, i32 141, i32 127, ; 8..15
	i32 69, i32 84, i32 78, i32 56, i32 111, i32 46, i32 82, i32 37, ; 16..23
	i32 45, i32 68, i32 108, i32 129, i32 77, i32 142, i32 8, i32 24, ; 24..31
	i32 44, i32 40, i32 78, i32 89, i32 140, i32 12, i32 30, i32 122, ; 32..39
	i32 136, i32 22, i32 125, i32 73, i32 50, i32 105, i32 61, i32 19, ; 40..47
	i32 53, i32 35, i32 124, i32 31, i32 4, i32 96, i32 141, i32 0, ; 48..55
	i32 25, i32 116, i32 28, i32 82, i32 14, i32 129, i32 98, i32 60, ; 56..63
	i32 113, i32 86, i32 44, i32 103, i32 93, i32 61, i32 104, i32 36, ; 64..71
	i32 75, i32 54, i32 139, i32 55, i32 21, i32 132, i32 128, i32 98, ; 72..79
	i32 5, i32 17, i32 90, i32 70, i32 48, i32 20, i32 25, i32 136, ; 80..87
	i32 114, i32 124, i32 59, i32 55, i32 111, i32 11, i32 138, i32 3, ; 88..95
	i32 74, i32 6, i32 29, i32 88, i32 107, i32 72, i32 2, i32 138, ; 96..103
	i32 49, i32 101, i32 115, i32 69, i32 27, i32 134, i32 133, i32 37, ; 104..111
	i32 33, i32 130, i32 65, i32 3, i32 100, i32 43, i32 77, i32 10, ; 112..119
	i32 22, i32 88, i32 115, i32 94, i32 18, i32 10, i32 108, i32 114, ; 120..127
	i32 110, i32 62, i32 5, i32 118, i32 91, i32 42, i32 86, i32 83, ; 128..135
	i32 49, i32 47, i32 79, i32 38, i32 112, i32 117, i32 140, i32 2, ; 136..143
	i32 13, i32 103, i32 89, i32 91, i32 81, i32 97, i32 57, i32 8, ; 144..151
	i32 9, i32 134, i32 95, i32 137, i32 35, i32 68, i32 1, i32 16, ; 152..159
	i32 123, i32 85, i32 39, i32 50, i32 18, i32 104, i32 0, i32 40, ; 160..167
	i32 39, i32 72, i32 76, i32 84, i32 132, i32 101, i32 131, i32 56, ; 168..175
	i32 59, i32 27, i32 143, i32 109, i32 106, i32 32, i32 70, i32 52, ; 176..183
	i32 11, i32 117, i32 106, i32 102, i32 9, i32 130, i32 126, i32 24, ; 184..191
	i32 32, i32 107, i32 47, i32 58, i32 33, i32 75, i32 119, i32 80, ; 192..199
	i32 14, i32 92, i32 120, i32 131, i32 6, i32 145, i32 29, i32 121, ; 200..207
	i32 74, i32 135, i32 118, i32 144, i32 65, i32 145, i32 63, i32 17, ; 208..215
	i32 34, i32 137, i32 73, i32 121, i32 30, i32 62, i32 93, i32 79, ; 216..223
	i32 51, i32 36, i32 71, i32 16, i32 97, i32 48, i32 128, i32 52, ; 224..231
	i32 1, i32 76, i32 19, i32 23, i32 51, i32 122, i32 67, i32 63, ; 232..239
	i32 53, i32 112, i32 126, i32 139, i32 95, i32 96, i32 113, i32 58, ; 240..247
	i32 83, i32 23, i32 127, i32 64, i32 67, i32 4, i32 57, i32 92, ; 248..255
	i32 38, i32 81, i32 66, i32 15, i32 7, i32 90, i32 46, i32 34, ; 256..263
	i32 102, i32 71, i32 125, i32 105, i32 94, i32 54, i32 123, i32 26, ; 264..271
	i32 41, i32 143, i32 60, i32 120, i32 15, i32 7, i32 20, i32 13, ; 272..279
	i32 45, i32 31, i32 135, i32 144, i32 26, i32 43, i32 142, i32 87, ; 280..287
	i32 12, i32 42, i32 119, i32 87 ; 288..291
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
