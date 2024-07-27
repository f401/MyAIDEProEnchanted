.class Labcd/lL;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[C

.field private static final FH:[I

.field private static final Hw:[I

.field private static final VH:[I

.field private static final Zo:[Ljava/lang/String;

.field private static final j6:[I

.field private static final v5:[I


# instance fields
.field private EQ:[C

.field private J0:I

.field private J8:I

.field private Mr:Z

.field private QX:I

.field private U2:Ljava/lang/StringBuffer;

.field private Ws:I

.field private XL:I

.field private aM:I

.field private gn:Ljava/io/Reader;

.field private j3:Z

.field private tp:I

.field private u7:I

.field private we:I


# direct methods
.method private static $d2j$hex$f6d2ea70$decode_B(Ljava/lang/String;)[B
    .registers 14
    .param p0, "src"    # Ljava/lang/String;

    const/16 v12, 0x61

    const/16 v11, 0x46

    const/16 v10, 0x41

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 44
    .local v6, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_6

    .line 45
    mul-int/lit8 v7, v3, 0x2

    aget-char v1, v0, v7

    .line 46
    .local v1, "h":C
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-char v4, v0, v7

    .line 48
    .local v4, "l":C
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 49
    add-int/lit8 v2, v1, -0x30

    .line 58
    .local v2, "hh":I
    :goto_1
    if-lt v4, v8, :cond_3

    if-gt v4, v9, :cond_3

    .line 59
    add-int/lit8 v5, v4, -0x30

    .line 67
    .local v5, "ll":I
    :goto_2
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "hh":I
    .end local v5    # "ll":I
    :cond_0
    if-lt v1, v12, :cond_1

    const/16 v7, 0x66

    if-gt v1, v7, :cond_1

    .line 51
    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 52
    .end local v2    # "hh":I
    :cond_1
    if-lt v1, v10, :cond_2

    if-gt v1, v11, :cond_2

    .line 53
    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 55
    .end local v2    # "hh":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 60
    .restart local v2    # "hh":I
    :cond_3
    if-lt v4, v12, :cond_4

    const/16 v7, 0x66

    if-gt v4, v7, :cond_4

    .line 61
    add-int/lit8 v7, v4, -0x61

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 62
    .end local v5    # "ll":I
    :cond_4
    if-lt v4, v10, :cond_5

    if-gt v4, v11, :cond_5

    .line 63
    add-int/lit8 v7, v4, -0x41

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 65
    .end local v5    # "ll":I
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 69
    .end local v1    # "h":C
    .end local v2    # "hh":I
    .end local v4    # "l":C
    :cond_6
    return-object v6
.end method

.method private static $d2j$hex$f6d2ea70$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Labcd/lL;->$d2j$hex$f6d2ea70$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 23
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 26
    .local v3, "s":Ljava/nio/IntBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x4

    new-array v2, v4, [I

    .line 27
    .local v2, "data":[I
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v2
.end method

.method private static $d2j$hex$f6d2ea70$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Labcd/lL;->$d2j$hex$f6d2ea70$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 16
    .local v3, "s":Ljava/nio/LongBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [J

    .line 17
    .local v2, "data":[J
    invoke-virtual {v3, v2}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v2
.end method

.method private static $d2j$hex$f6d2ea70$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Labcd/lL;->$d2j$hex$f6d2ea70$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 36
    .local v3, "s":Ljava/nio/ShortBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [S

    .line 37
    .local v2, "data":[S
    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v2
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/lL;->j6:[I

    const-string v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    invoke-static {v0}, Labcd/lL;->j6(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Labcd/lL;->DW:[C

    invoke-static {}, Labcd/lL;->v5()[I

    move-result-object v0

    sput-object v0, Labcd/lL;->FH:[I

    invoke-static {}, Labcd/lL;->VH()[I

    move-result-object v0

    sput-object v0, Labcd/lL;->Hw:[I

    const-string v0, "0200000002000000030000000400000002000000020000000200000005000000020000000600000002000000020000000700000008000000020000000900000002000000020000000200000002000000020000000a0000000b0000000c0000000d0000000e0000000f000000100000001000000010000000100000001000000010000000100000001000000011000000120000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff04000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff040000001300000014000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff14000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff05000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff15000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff16000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff17000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1000000010000000100000001000000010000000100000001000000010000000ffffffffffffffff1000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff18000000190000001a0000001b0000001c0000001d0000001e0000001f00000020000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff21000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2200000023000000ffffffffffffffff22000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff24000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff25000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff26000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27000000ffffffff27000000ffffffff27000000ffffffffffffffffffffffffffffffffffffffff2700000027000000ffffffffffffffffffffffffffffffff2700000027000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff21000000ffffffff14000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff14000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff23000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff26000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff28000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff29000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2a000000ffffffff2a000000ffffffff2a000000ffffffffffffffffffffffffffffffffffffffff2a0000002a000000ffffffffffffffffffffffffffffffff2a0000002a000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2b000000ffffffff2b000000ffffffff2b000000ffffffffffffffffffffffffffffffffffffffff2b0000002b000000ffffffffffffffffffffffffffffffff2b0000002b000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2c000000ffffffff2c000000ffffffff2c000000ffffffffffffffffffffffffffffffffffffffff2c0000002c000000ffffffffffffffffffffffffffffffff2c0000002c000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-static {v0}, Labcd/lL;->$d2j$hex$f6d2ea70$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Labcd/lL;->v5:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unkown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Error: pushback value was too large"

    aput-object v2, v0, v1

    sput-object v0, Labcd/lL;->Zo:[Ljava/lang/String;

    invoke-static {}, Labcd/lL;->Zo()[I

    move-result-object v0

    sput-object v0, Labcd/lL;->VH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/lL;->tp:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/lL;->EQ:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lL;->j3:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    iput-object p1, p0, Labcd/lL;->gn:Ljava/io/Reader;

    return-void
.end method

.method private static DW(Ljava/lang/String;I[I)I
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    move v0, p1

    :goto_0
    if-ge v2, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    add-int/lit8 v2, v4, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private static FH(Ljava/lang/String;I[I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v0, v3

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private FH(I)V
    .registers 4

    :try_start_0
    sget-object v0, Labcd/lL;->Zo:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    sget-object v0, Labcd/lL;->Zo:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private Hw()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Labcd/lL;->J8:I

    if-lez v2, :cond_0

    iget-object v3, p0, Labcd/lL;->EQ:[C

    iget v4, p0, Labcd/lL;->Ws:I

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/lL;->Ws:I

    iget v3, p0, Labcd/lL;->J8:I

    sub-int/2addr v2, v3

    iput v2, p0, Labcd/lL;->Ws:I

    iget v2, p0, Labcd/lL;->J0:I

    sub-int/2addr v2, v3

    iput v2, p0, Labcd/lL;->J0:I

    iget v2, p0, Labcd/lL;->we:I

    sub-int/2addr v2, v3

    iput v2, p0, Labcd/lL;->we:I

    iput v0, p0, Labcd/lL;->J8:I

    :cond_0
    iget v2, p0, Labcd/lL;->J0:I

    iget-object v3, p0, Labcd/lL;->EQ:[C

    array-length v4, v3

    if-lt v2, v4, :cond_1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    array-length v4, v3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/lL;->EQ:[C

    :cond_1
    iget-object v2, p0, Labcd/lL;->gn:Ljava/io/Reader;

    iget-object v3, p0, Labcd/lL;->EQ:[C

    iget v4, p0, Labcd/lL;->Ws:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-lez v2, :cond_2

    iget v1, p0, Labcd/lL;->Ws:I

    add-int/2addr v1, v2

    iput v1, p0, Labcd/lL;->Ws:I

    :goto_0
    return v0

    :cond_2
    if-nez v2, :cond_4

    iget-object v2, p0, Labcd/lL;->gn:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Labcd/lL;->EQ:[C

    iget v3, p0, Labcd/lL;->Ws:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/lL;->Ws:I

    int-to-char v2, v2

    aput-char v2, v1, v3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static VH()[I
    .registers 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const-string v1, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Labcd/lL;->FH(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static Zo()[I
    .registers 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const-string v1, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Labcd/lL;->DW(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static j6(Ljava/lang/String;I[I)I
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, v3, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    add-int/lit8 v2, v1, 0x1

    aput v5, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method private static j6(Ljava/lang/String;)[C
    .registers 7

    const/4 v1, 0x0

    const/high16 v0, 0x10000

    new-array v3, v0, [C

    move v2, v1

    move v0, v1

    :goto_0
    const/16 v1, 0x5a

    if-ge v2, v1, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    aput-char v5, v3, v0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    add-int/lit8 v2, v4, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private static v5()[I
    .registers 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const-string v1, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Labcd/lL;->j6(Ljava/lang/String;I[I)I

    return-object v0
.end method


# virtual methods
.method public final DW(I)C
    .registers 4

    iget-object v0, p0, Labcd/lL;->EQ:[C

    iget v1, p0, Labcd/lL;->J8:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public DW()Labcd/mL;
    .registers 15

    iget v1, p0, Labcd/lL;->Ws:I

    iget-object v0, p0, Labcd/lL;->EQ:[C

    sget-object v8, Labcd/lL;->DW:[C

    sget-object v9, Labcd/lL;->v5:[I

    sget-object v10, Labcd/lL;->Hw:[I

    sget-object v11, Labcd/lL;->VH:[I

    :goto_0
    :pswitch_0
    iget v2, p0, Labcd/lL;->we:I

    iget v3, p0, Labcd/lL;->XL:I

    iget v4, p0, Labcd/lL;->J8:I

    sub-int v4, v2, v4

    add-int/2addr v3, v4

    iput v3, p0, Labcd/lL;->XL:I

    iput v2, p0, Labcd/lL;->J8:I

    iput v2, p0, Labcd/lL;->J0:I

    sget-object v3, Labcd/lL;->j6:[I

    iget v4, p0, Labcd/lL;->tp:I

    aget v3, v3, v4

    iput v3, p0, Labcd/lL;->u7:I

    const/4 v6, -0x1

    move v5, v2

    move v3, v1

    move v4, v2

    :goto_1
    if-ge v5, v3, :cond_0

    aget-char v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    move v2, v1

    :goto_2
    iget v1, p0, Labcd/lL;->u7:I

    aget v1, v10, v1

    aget-char v7, v8, v2

    add-int/2addr v1, v7

    aget v1, v9, v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    move v1, v3

    :goto_3
    iput v4, p0, Labcd/lL;->we:I

    if-gez v6, :cond_4

    :goto_4
    packed-switch v6, :pswitch_data_0

    const/4 v0, -0x1

    if-ne v2, v0, :cond_5

    iget v0, p0, Labcd/lL;->J8:I

    iget v1, p0, Labcd/lL;->J0:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lL;->Mr:Z

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_0
    iget-boolean v1, p0, Labcd/lL;->Mr:Z

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    move v1, v3

    goto :goto_3

    :cond_1
    iput v5, p0, Labcd/lL;->J0:I

    iput v4, p0, Labcd/lL;->we:I

    invoke-direct {p0}, Labcd/lL;->Hw()Z

    move-result v1

    iget v2, p0, Labcd/lL;->J0:I

    iget v4, p0, Labcd/lL;->we:I

    iget-object v0, p0, Labcd/lL;->EQ:[C

    iget v3, p0, Labcd/lL;->Ws:I

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    move v1, v3

    goto :goto_3

    :cond_2
    aget-char v1, v0, v2

    add-int/lit8 v5, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_3
    iput v1, p0, Labcd/lL;->u7:I

    iget v7, p0, Labcd/lL;->u7:I

    aget v1, v11, v7

    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_6

    move v6, v7

    move v4, v5

    move v1, v3

    goto :goto_3

    :cond_4
    sget-object v3, Labcd/lL;->FH:[I

    aget v6, v3, v6

    goto :goto_4

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/kL;

    iget v2, p0, Labcd/lL;->XL:I

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v1

    :pswitch_2
    new-instance v0, Labcd/mL;

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto :goto_5

    :pswitch_3
    new-instance v0, Labcd/mL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    new-instance v0, Labcd/mL;

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0x9

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    goto :goto_6

    :pswitch_7
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    goto :goto_6

    :pswitch_8
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0xc

    goto :goto_6

    :pswitch_9
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0x2f

    goto :goto_6

    :pswitch_b
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0x22

    goto :goto_6

    :pswitch_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/lL;->j6(I)V

    new-instance v0, Labcd/mL;

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_d
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v3, 0x5c

    goto :goto_6

    :pswitch_e
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Labcd/mL;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_10
    new-instance v0, Labcd/mL;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_11
    new-instance v0, Labcd/mL;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_12
    new-instance v0, Labcd/mL;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_13
    new-instance v0, Labcd/mL;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_14
    new-instance v0, Labcd/mL;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_15
    iget-object v2, p0, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Labcd/lL;->j6(I)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Labcd/mL;

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_17
    new-instance v0, Labcd/kL;

    iget v1, p0, Labcd/lL;->XL:I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Character;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Labcd/lL;->DW(I)C

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {v0, v1, v2, v3}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labcd/lL;->FH(I)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move v4, v5

    :goto_7
    move v6, v7

    goto/16 :goto_1

    :cond_7
    move v7, v6

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final FH()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/lL;->EQ:[C

    iget v1, p0, Labcd/lL;->J8:I

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Labcd/lL;->we:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method j6()I
    .registers 2

    iget v0, p0, Labcd/lL;->XL:I

    return v0
.end method

.method public final j6(I)V
    .registers 2

    iput p1, p0, Labcd/lL;->tp:I

    return-void
.end method

.method public final j6(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Labcd/lL;->gn:Ljava/io/Reader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lL;->j3:Z

    iput-boolean v1, p0, Labcd/lL;->Mr:Z

    iput v1, p0, Labcd/lL;->J8:I

    iput v1, p0, Labcd/lL;->Ws:I

    iput v1, p0, Labcd/lL;->we:I

    iput v1, p0, Labcd/lL;->J0:I

    iput v1, p0, Labcd/lL;->aM:I

    iput v1, p0, Labcd/lL;->XL:I

    iput v1, p0, Labcd/lL;->QX:I

    iput v1, p0, Labcd/lL;->tp:I

    return-void
.end method
