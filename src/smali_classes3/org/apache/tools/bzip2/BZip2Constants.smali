.class public interface abstract Lorg/apache/tools/bzip2/BZip2Constants;
.super Ljava/lang/Object;
.source "BZip2Constants.java"


# static fields
.field public static final G_SIZE:I = 0x32

.field public static final MAX_ALPHA_SIZE:I = 0x102

.field public static final MAX_CODE_LEN:I = 0x17

.field public static final MAX_SELECTORS:I = 0x4652

.field public static final NUM_OVERSHOOT_BYTES:I = 0x14

.field public static final N_GROUPS:I = 0x6

.field public static final N_ITERS:I = 0x4

.field public static final RUNA:I = 0x0

.field public static final RUNB:I = 0x1

.field public static final baseBlockSize:I = 0x186a0

.field public static final rNums:[I


# direct methods
.method private static $d2j$hex$2dd3a53b$decode_B(Ljava/lang/String;)[B
    .locals 11

    const/16 v10, 0x61

    const/16 v9, 0x46

    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_6

    .line 45
    mul-int/lit8 v1, v0, 0x2

    aget-char v1, v3, v1

    .line 46
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v5, v3, v2

    .line 48
    if-lt v1, v6, :cond_0

    if-gt v1, v7, :cond_0

    .line 49
    add-int/lit8 v1, v1, -0x30

    move v2, v1

    .line 58
    :goto_1
    if-lt v5, v6, :cond_3

    if-gt v5, v7, :cond_3

    .line 59
    add-int/lit8 v1, v5, -0x30

    .line 67
    :goto_2
    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    if-lt v1, v10, :cond_1

    const/16 v2, 0x66

    if-gt v1, v2, :cond_1

    .line 51
    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0xa

    move v2, v1

    goto :goto_1

    .line 52
    :cond_1
    if-lt v1, v8, :cond_2

    if-gt v1, v9, :cond_2

    .line 53
    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0xa

    move v2, v1

    goto :goto_1

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60
    :cond_3
    if-lt v5, v10, :cond_4

    const/16 v1, 0x66

    if-gt v5, v1, :cond_4

    .line 61
    add-int/lit8 v1, v5, -0x61

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    .line 62
    :cond_4
    if-lt v5, v8, :cond_5

    if-gt v5, v9, :cond_5

    .line 63
    add-int/lit8 v1, v5, -0x41

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69
    :cond_6
    return-object v4
.end method

.method private static $d2j$hex$2dd3a53b$decode_I(Ljava/lang/String;)[I
    .locals 3

    .line 22
    invoke-static {p0}, Lorg/apache/tools/bzip2/BZip2Constants;->$d2j$hex$2dd3a53b$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 26
    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 27
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v0
.end method

.method private static $d2j$hex$2dd3a53b$decode_J(Ljava/lang/String;)[J
    .locals 3

    .line 12
    invoke-static {p0}, Lorg/apache/tools/bzip2/BZip2Constants;->$d2j$hex$2dd3a53b$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    .line 16
    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    .line 17
    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v0
.end method

.method private static $d2j$hex$2dd3a53b$decode_S(Ljava/lang/String;)[S
    .locals 3

    .line 32
    invoke-static {p0}, Lorg/apache/tools/bzip2/BZip2Constants;->$d2j$hex$2dd3a53b$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 36
    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 37
    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "6b020000d00200007f000000e1010000a3030000300300002d030000e900000036020000f7000000d9030000d4020000cd000000c60100005f030000eb010000e5020000f2000000b5030000d6000000dd0200005b0300004f010000c40200006d0200003e020000490000008e020000da020000d8010000a3010000b401000016010000f001000063030000d20000008f010000a8020000e0010000330000006e030000d10100002b030000a900000065030000a302000063020000b902000063030000310200005e030000af020000fb0100001b010000e201000081000000270300004f020000dd0200006f02000096000000ee0000003b0000007b010000ac0200006d03000071020000a90000008302000069000000aa0000005f02000008020000a4030000d7020000dc010000b5020000a9010000ae00000087020000490000007a0000004f01000012020000ba01000055030000b7020000f9000000bd010000030200008d03000021020000bf020000970300006a030000da01000072030000f401000052020000640200008102000021030000dc000000a200000033030000d80300004d02000001020000ef0100001f030000a10000005c020000be03000015020000dd000000900100008201000063030000580200000e0300007e010000540200009e010000ab0000000402000077010000aa020000e50100008f030000140100006200000029020000a3000000620100009a020000a5030000a8010000550100001502000066030000e3000000da020000db010000ba000000070100008702000019020000ae02000058020000e0000000d5010000440000000203000097030000be00000075010000260100003603000028030000ce000000b8000000af0300001b030000800100007f010000cd01000094010000f60200004703000077030000cb020000430000006a02000014010000cc0000009603000069030000090300005c02000030020000b7030000a000000042020000d20200004f000000240300006000000099010000c9020000ac0300008c020000a6030000ca030000bf0100003e010000610100005b030000a00200007000000011030000850200005f030000230300005e0100008b0000005d0000006201000063000000340300008c03000061020000040300009a0000001201000044020000b80000004f0000007202000076020000e60200008d0200001a010000fa0200006f020000a8020000510000009f03000072020000150300007d0000009b01000009020000aa0300002c010000350300004e00000057010000af00000080000000fa000000aa00000006030000cc03000013010000e70300007f020000ef0100004e000000600100007e00000059030000bc030000660100006b020000440200007c000000e102000052020000bd020000640200009d0200007000000086000000b60200006b010000e003000029030000e7020000a8000000ce030000b003000077010000ec0200003400000058020000eb02000082020000b60000005e030000510000005801000025030000dc030000e3020000ff0100008f0200002e0300004e010000f90000000302000081030000bb03000098020000d50300008902000071000000ce030000cb0100007d030000e4000000b101000045030000290200000c0100009e030000f0000000660000008e020000cb01000033000000ae020000f202000026030000f8020000ed010000930100009f0100008a010000af020000bc020000b20300009e0200009002000062020000e202000088010000f80200001f030000770300008d020000d203000041010000400200006902000072020000f60100007e030000a7020000f3000000b8010000a80200006f030000c20000003c02000080020000d40200009e03000038000000cc000000bc020000c302000097000000c9010000c10100001d030000c3000000170300002e020000b1030000a7020000290100003b0000005700000038030000c9020000970200009c010000b5020000560100005e020000860000006c0000003b0200006c01000077020000d4000000ae0000008302000030010000490100005701000061000000ae010000ef020000f10100003a010000d70300007601000036030000a00300008c000000ce0000004900000007010000d4030000e00200006c030000de010000ae01000031010000aa000000020200006c010000b40200003d0300005200000057030000b9030000a4020000f600000071010000ca03000026010000ee020000270300003b0300009600000016030000200100009b030000240300007a010000d70000003c0300005002000019010000350200002b020000c602000052000000800300003f03000023020000050100000c020000ce01000025010000d1010000f6010000380000009502000035030000d0030000df030000920200006503000089030000f6020000e9020000c1000000000300002602000060020000a50300007a0100001e010000d7000000d303000018030000c10300003d000000b00200001903000084020000da030000930100006a0000006e01000089030000840200007401000037020000d2010000b201000085020000d2000000850100002602000097030000870000000c030000050300007b02000085010000c30200006400000072020000be030000a5000000f801000098030000b0000000c1000000c90200005903000009010000cb000000320000009c0200006c00000085020000de03000072020000c5000000fe0100006501000066010000520300005a0300006c010000a80300007e020000"

    invoke-static {v0}, Lorg/apache/tools/bzip2/BZip2Constants;->$d2j$hex$2dd3a53b$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lorg/apache/tools/bzip2/BZip2Constants;->rNums:[I

    return-void
.end method
