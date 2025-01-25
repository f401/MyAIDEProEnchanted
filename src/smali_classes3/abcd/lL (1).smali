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
.method private static $d2j$hex$5dbb3b04$decode_B(Ljava/lang/String;)[B
    .registers 13
    .param p0, "src"  # Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 44
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_6b

    .line 45
    mul-int/lit8 v3, v2, 0x2

    aget-char v3, v0, v3

    .line 46
    .local v3, "h":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v0, v4

    .line 48
    .local v4, "l":C
    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x41

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v3, v10, :cond_2d

    if-gt v3, v7, :cond_2d

    .line 49
    add-int/lit8 v11, v3, -0x30

    .local v11, "hh":I
    goto :goto_3e

    .line 50
    .end local v11  # "hh":I
    :cond_2d
    if-lt v3, v9, :cond_36

    if-gt v3, v6, :cond_36

    .line 51
    add-int/lit8 v11, v3, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11  # "hh":I
    goto :goto_3e

    .line 52
    .end local v11  # "hh":I
    :cond_36
    if-lt v3, v8, :cond_65

    if-gt v3, v5, :cond_65

    .line 53
    add-int/lit8 v11, v3, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 58
    .restart local v11  # "hh":I
    :goto_3e
    if-lt v4, v10, :cond_45

    if-gt v4, v7, :cond_45

    .line 59
    add-int/lit8 v5, v4, -0x30

    .local v5, "ll":I
    goto :goto_56

    .line 60
    .end local v5  # "ll":I
    :cond_45
    if-lt v4, v9, :cond_4e

    if-gt v4, v6, :cond_4e

    .line 61
    add-int/lit8 v5, v4, -0x61

    add-int/lit8 v5, v5, 0xa

    .restart local v5  # "ll":I
    goto :goto_56

    .line 62
    .end local v5  # "ll":I
    :cond_4e
    if-lt v4, v8, :cond_5f

    if-gt v4, v5, :cond_5f

    .line 63
    add-int/lit8 v5, v4, -0x41

    add-int/lit8 v5, v5, 0xa

    .line 67
    .restart local v5  # "ll":I
    :goto_56
    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 44
    .end local v3  # "h":C
    .end local v4  # "l":C
    .end local v5  # "ll":I
    .end local v11  # "hh":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    .restart local v3  # "h":C
    .restart local v4  # "l":C
    .restart local v11  # "hh":I
    :cond_5f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 55
    .end local v11  # "hh":I
    :cond_65
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 69
    .end local v2  # "i":I
    .end local v3  # "h":C
    .end local v4  # "l":C
    :cond_6b
    return-object v1
.end method

.method private static $d2j$hex$5dbb3b04$decode_I(Ljava/lang/String;)[I
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Labcd/lL;->$d2j$hex$5dbb3b04$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 26
    .local v2, "s":Ljava/nio/IntBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 27
    .local v3, "data":[I
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v3
.end method

.method private static $d2j$hex$5dbb3b04$decode_J(Ljava/lang/String;)[J
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Labcd/lL;->$d2j$hex$5dbb3b04$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 16
    .local v2, "s":Ljava/nio/LongBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [J

    .line 17
    .local v3, "data":[J
    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v3
.end method

.method private static $d2j$hex$5dbb3b04$decode_S(Ljava/lang/String;)[S
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Labcd/lL;->$d2j$hex$5dbb3b04$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 36
    .local v2, "s":Ljava/nio/ShortBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 37
    .local v3, "data":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v3
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v2

    sput-object v2, Labcd/lL;->j6:[I

    const-string v2, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\b\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\b\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\f\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016ﾂ\u0000"

    invoke-static {v2}, Labcd/lL;->j6(Ljava/lang/String;)[C

    move-result-object v2

    sput-object v2, Labcd/lL;->DW:[C

    invoke-static {}, Labcd/lL;->v5()[I

    move-result-object v2

    sput-object v2, Labcd/lL;->FH:[I

    invoke-static {}, Labcd/lL;->VH()[I

    move-result-object v2

    sput-object v2, Labcd/lL;->Hw:[I

    const-string v2, "0200000002000000030000000400000002000000020000000200000005000000020000000600000002000000020000000700000008000000020000000900000002000000020000000200000002000000020000000a0000000b0000000c0000000d0000000e0000000f000000100000001000000010000000100000001000000010000000100000001000000011000000120000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff04000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff040000001300000014000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff14000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff05000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff15000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff16000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff17000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1000000010000000100000001000000010000000100000001000000010000000ffffffffffffffff1000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff18000000190000001a0000001b0000001c0000001d0000001e0000001f00000020000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff21000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2200000023000000ffffffffffffffff22000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff24000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff25000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff26000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27000000ffffffff27000000ffffffff27000000ffffffffffffffffffffffffffffffffffffffff2700000027000000ffffffffffffffffffffffffffffffff2700000027000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff21000000ffffffff14000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff14000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff23000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff26000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff28000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff29000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2a000000ffffffff2a000000ffffffff2a000000ffffffffffffffffffffffffffffffffffffffff2a0000002a000000ffffffffffffffffffffffffffffffff2a0000002a000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2b000000ffffffff2b000000ffffffff2b000000ffffffffffffffffffffffffffffffffffffffff2b0000002b000000ffffffffffffffffffffffffffffffff2b0000002b000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff2c000000ffffffff2c000000ffffffff2c000000ffffffffffffffffffffffffffffffffffffffff2c0000002c000000ffffffffffffffffffffffffffffffff2c0000002c000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-static {v2}, Labcd/lL;->$d2j$hex$5dbb3b04$decode_I(Ljava/lang/String;)[I

    move-result-object v2

    sput-object v2, Labcd/lL;->v5:[I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unkown internal scanner error"

    aput-object v3, v2, v0

    const-string v0, "Error: could not match input"

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string v1, "Error: pushback value was too large"

    aput-object v1, v2, v0

    sput-object v2, Labcd/lL;->Zo:[Ljava/lang/String;

    invoke-static {}, Labcd/lL;->Zo()[I

    move-result-object v0

    sput-object v0, Labcd/lL;->VH:[I

    return-void
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
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_11
    add-int/lit8 v4, p1, 0x1

    aput v3, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1d

    add-int/lit8 v1, v2, 0x1

    move p1, v4

    goto :goto_5

    :cond_1d
    move p1, v4

    goto :goto_11

    :cond_1f
    return p1
.end method

.method private static FH(Ljava/lang/String;I[I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v2, 0x1

    goto :goto_5

    :cond_1b
    return p1
.end method

.method private FH(I)V
    .registers 3

    :try_start_0
    sget-object v0, Labcd/lL;->Zo:[Ljava/lang/String;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_b

    :catch_5
    move-exception p1

    sget-object p1, Labcd/lL;->Zo:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :goto_b
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Hw()Z
    .registers 6

    iget v0, p0, Labcd/lL;->J8:I

    const/4 v1, 0x0

    if-lez v0, :cond_20

    iget-object v2, p0, Labcd/lL;->EQ:[C

    iget v3, p0, Labcd/lL;->Ws:I

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/lL;->Ws:I

    iget v2, p0, Labcd/lL;->J8:I

    sub-int/2addr v0, v2

    iput v0, p0, Labcd/lL;->Ws:I

    iget v0, p0, Labcd/lL;->J0:I

    sub-int/2addr v0, v2

    iput v0, p0, Labcd/lL;->J0:I

    iget v0, p0, Labcd/lL;->we:I

    sub-int/2addr v0, v2

    iput v0, p0, Labcd/lL;->we:I

    iput v1, p0, Labcd/lL;->J8:I

    :cond_20
    iget v0, p0, Labcd/lL;->J0:I

    iget-object v2, p0, Labcd/lL;->EQ:[C

    array-length v3, v2

    if-lt v0, v3, :cond_31

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/lL;->EQ:[C

    :cond_31
    iget-object v0, p0, Labcd/lL;->gn:Ljava/io/Reader;

    iget-object v2, p0, Labcd/lL;->EQ:[C

    iget v3, p0, Labcd/lL;->Ws:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_45

    iget v2, p0, Labcd/lL;->Ws:I

    add-int/2addr v2, v0

    iput v2, p0, Labcd/lL;->Ws:I

    return v1

    :cond_45
    const/4 v2, 0x1

    if-nez v0, :cond_5e

    iget-object v0, p0, Labcd/lL;->gn:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_52

    return v2

    :cond_52
    iget-object v2, p0, Labcd/lL;->EQ:[C

    iget v3, p0, Labcd/lL;->Ws:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/lL;->Ws:I

    int-to-char v0, v0

    aput-char v0, v2, v3

    return v1

    :cond_5e
    return v2
.end method

.method private static VH()[I
    .registers 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const-string v1, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000¢\u0000½\u0000Ø\u00006\u00006\u00006\u00006\u00006\u00006\u0000ó\u0000Ď\u00006\u0000ĩ\u0000ń\u0000ş\u0000ź\u0000ƕ\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000ư\u0000ǋ\u0000Ǧ\u0000Ǧ\u0000ȁ\u0000Ȝ\u0000ȷ\u0000ɒ\u00006\u00006\u0000ɭ\u0000ʈ\u00006"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Labcd/lL;->FH(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static Zo()[I
    .registers 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const-string v1, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\b\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Labcd/lL;->DW(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static j6(Ljava/lang/String;I[I)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_11
    add-int/lit8 v4, p1, 0x1

    aput v3, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1d

    add-int/lit8 v1, v2, 0x1

    move p1, v4

    goto :goto_5

    :cond_1d
    move p1, v4

    goto :goto_11

    :cond_1f
    return p1
.end method

.method private static j6(Ljava/lang/String;)[C
    .registers 7

    const/high16 v0, 0x10000

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_22

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_14
    add-int/lit8 v5, v2, 0x1

    aput-char v4, v0, v2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_20

    add-int/lit8 v1, v3, 0x1

    move v2, v5

    goto :goto_6

    :cond_20
    move v2, v5

    goto :goto_14

    :cond_22
    return-object v0
.end method

.method private static v5()[I
    .registers 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const-string v1, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\b\u0001\t\u0001\n\u0001\u000b\u0001\f\u0001\r\u0005\u0000\u0001\f\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

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

    aget-char p1, v0, v1

    return p1
.end method

.method public DW()Labcd/mL;
    .registers 19

    move-object/from16 v1, p0

    iget v0, v1, Labcd/lL;->Ws:I

    iget-object v2, v1, Labcd/lL;->EQ:[C

    sget-object v3, Labcd/lL;->DW:[C

    sget-object v4, Labcd/lL;->v5:[I

    sget-object v5, Labcd/lL;->Hw:[I

    sget-object v6, Labcd/lL;->VH:[I

    :goto_e
    :pswitch_e  #0x3, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30
    iget v7, v1, Labcd/lL;->we:I

    iget v8, v1, Labcd/lL;->XL:I

    iget v9, v1, Labcd/lL;->J8:I

    sub-int v9, v7, v9

    add-int/2addr v8, v9

    iput v8, v1, Labcd/lL;->XL:I

    iput v7, v1, Labcd/lL;->J8:I

    iput v7, v1, Labcd/lL;->J0:I

    sget-object v8, Labcd/lL;->j6:[I

    iget v9, v1, Labcd/lL;->tp:I

    aget v8, v8, v9

    iput v8, v1, Labcd/lL;->u7:I

    const/4 v8, -0x1

    move v9, v7

    const/4 v10, -0x1

    :goto_28
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v7, v0, :cond_32

    aget-char v13, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_32
    iget-boolean v13, v1, Labcd/lL;->Mr:Z

    if-eqz v13, :cond_38

    :goto_36
    const/4 v13, -0x1

    goto :goto_74

    :cond_38
    iput v7, v1, Labcd/lL;->J0:I

    iput v9, v1, Labcd/lL;->we:I

    invoke-direct/range {p0 .. p0}, Labcd/lL;->Hw()Z

    move-result v0

    iget v2, v1, Labcd/lL;->J0:I

    iget v9, v1, Labcd/lL;->we:I

    iget-object v7, v1, Labcd/lL;->EQ:[C

    iget v13, v1, Labcd/lL;->Ws:I

    if-eqz v0, :cond_4d

    move-object v2, v7

    move v0, v13

    goto :goto_36

    :cond_4d
    aget-char v0, v7, v2

    add-int/2addr v2, v12

    move/from16 v16, v13

    move v13, v0

    move/from16 v0, v16

    move-object/from16 v17, v7

    move v7, v2

    move-object/from16 v2, v17

    :goto_5a
    iget v14, v1, Labcd/lL;->u7:I

    aget v14, v5, v14

    aget-char v15, v3, v13

    add-int/2addr v14, v15

    aget v14, v4, v14

    if-ne v14, v8, :cond_66

    goto :goto_74

    :cond_66
    iput v14, v1, Labcd/lL;->u7:I

    aget v15, v6, v14

    and-int/lit8 v8, v15, 0x1

    if-ne v8, v12, :cond_175

    and-int/lit8 v8, v15, 0x8

    if-ne v8, v11, :cond_171

    move v9, v7

    move v10, v14

    :goto_74
    iput v9, v1, Labcd/lL;->we:I

    if-gez v10, :cond_79

    goto :goto_7d

    :cond_79
    sget-object v7, Labcd/lL;->FH:[I

    aget v10, v7, v10

    :goto_7d
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v10, :pswitch_data_17a

    const/4 v11, -0x1

    if-ne v13, v11, :cond_16d

    iget v0, v1, Labcd/lL;->J8:I

    iget v2, v1, Labcd/lL;->J0:I

    if-ne v0, v2, :cond_16d

    iput-boolean v12, v1, Labcd/lL;->Mr:Z

    return-object v8

    :pswitch_8f  #0x18
    :try_start_8f
    invoke-virtual/range {p0 .. p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    int-to-char v8, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a3} :catch_a5

    goto/16 :goto_e

    :catch_a5
    move-exception v0

    new-instance v2, Labcd/kL;

    iget v3, v1, Labcd/lL;->XL:I

    invoke-direct {v2, v3, v7, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v2

    :pswitch_ae  #0x17
    new-instance v0, Labcd/mL;

    invoke-virtual/range {p0 .. p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_bc  #0x16
    new-instance v0, Labcd/mL;

    invoke-direct {v0, v9, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_c2  #0x15
    new-instance v0, Labcd/mL;

    invoke-virtual/range {p0 .. p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_d0  #0x14
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0x9

    goto :goto_108

    :pswitch_d5  #0x13
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0xd

    goto :goto_108

    :pswitch_da  #0x12
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0xa

    goto :goto_108

    :pswitch_df  #0x11
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0xc

    goto :goto_108

    :pswitch_e4  #0x10
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_eb  #0xf
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0x2f

    goto :goto_108

    :pswitch_f0  #0xe
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0x22

    goto :goto_108

    :pswitch_f5  #0xd
    invoke-virtual {v1, v9}, Labcd/lL;->j6(I)V

    new-instance v0, Labcd/mL;

    iget-object v2, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_104  #0xc
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    const/16 v8, 0x5c

    :goto_108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_10d  #0xb
    iget-object v7, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_118  #0xa
    new-instance v0, Labcd/mL;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_11f  #0x9
    new-instance v0, Labcd/mL;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_126  #0x8
    new-instance v0, Labcd/mL;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_12d  #0x7
    new-instance v0, Labcd/mL;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_134  #0x6
    new-instance v0, Labcd/mL;

    invoke-direct {v0, v7, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_13a  #0x5
    new-instance v0, Labcd/mL;

    invoke-direct {v0, v12, v8}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_140  #0x4
    iget-object v8, v1, Labcd/lL;->U2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Labcd/lL;->j6(I)V

    goto/16 :goto_e

    :pswitch_14e  #0x2
    new-instance v0, Labcd/mL;

    invoke-virtual/range {p0 .. p0}, Labcd/lL;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_15c  #0x1
    new-instance v0, Labcd/kL;

    iget v2, v1, Labcd/lL;->XL:I

    new-instance v3, Ljava/lang/Character;

    invoke-virtual {v1, v9}, Labcd/lL;->DW(I)C

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {v0, v2, v9, v3}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_16d
    invoke-direct {v1, v12}, Labcd/lL;->FH(I)V

    throw v8

    :cond_171
    const/4 v11, -0x1

    move v9, v7

    move v10, v14

    goto :goto_176

    :cond_175
    const/4 v11, -0x1

    :goto_176
    const/4 v8, -0x1

    goto/16 :goto_28

    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_15c  #00000001
        :pswitch_14e  #00000002
        :pswitch_e  #00000003
        :pswitch_140  #00000004
        :pswitch_13a  #00000005
        :pswitch_134  #00000006
        :pswitch_12d  #00000007
        :pswitch_126  #00000008
        :pswitch_11f  #00000009
        :pswitch_118  #0000000a
        :pswitch_10d  #0000000b
        :pswitch_104  #0000000c
        :pswitch_f5  #0000000d
        :pswitch_f0  #0000000e
        :pswitch_eb  #0000000f
        :pswitch_e4  #00000010
        :pswitch_df  #00000011
        :pswitch_da  #00000012
        :pswitch_d5  #00000013
        :pswitch_d0  #00000014
        :pswitch_c2  #00000015
        :pswitch_bc  #00000016
        :pswitch_ae  #00000017
        :pswitch_8f  #00000018
        :pswitch_e  #00000019
        :pswitch_e  #0000001a
        :pswitch_e  #0000001b
        :pswitch_e  #0000001c
        :pswitch_e  #0000001d
        :pswitch_e  #0000001e
        :pswitch_e  #0000001f
        :pswitch_e  #00000020
        :pswitch_e  #00000021
        :pswitch_e  #00000022
        :pswitch_e  #00000023
        :pswitch_e  #00000024
        :pswitch_e  #00000025
        :pswitch_e  #00000026
        :pswitch_e  #00000027
        :pswitch_e  #00000028
        :pswitch_e  #00000029
        :pswitch_e  #0000002a
        :pswitch_e  #0000002b
        :pswitch_e  #0000002c
        :pswitch_e  #0000002d
        :pswitch_e  #0000002e
        :pswitch_e  #0000002f
        :pswitch_e  #00000030
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
    .registers 2

    iput-object p1, p0, Labcd/lL;->gn:Ljava/io/Reader;

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/lL;->j3:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/lL;->Mr:Z

    iput p1, p0, Labcd/lL;->J8:I

    iput p1, p0, Labcd/lL;->Ws:I

    iput p1, p0, Labcd/lL;->we:I

    iput p1, p0, Labcd/lL;->J0:I

    iput p1, p0, Labcd/lL;->aM:I

    iput p1, p0, Labcd/lL;->XL:I

    iput p1, p0, Labcd/lL;->QX:I

    iput p1, p0, Labcd/lL;->tp:I

    return-void
.end method
