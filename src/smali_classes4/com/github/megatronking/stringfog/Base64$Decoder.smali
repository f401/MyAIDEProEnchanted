.class Lcom/github/megatronking/stringfog/Base64$Decoder;
.super Lcom/github/megatronking/stringfog/Base64$Coder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/megatronking/stringfog/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method private static $d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B
    .registers 14
    .param p0, "src"  # Ljava/lang/String;

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
    :goto_17
    array-length v7, v6

    if-ge v3, v7, :cond_6d

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
    if-lt v1, v8, :cond_39

    if-gt v1, v9, :cond_39

    .line 49
    add-int/lit8 v2, v1, -0x30

    .line 58
    .local v2, "hh":I
    :goto_2a
    if-lt v4, v8, :cond_53

    if-gt v4, v9, :cond_53

    .line 59
    add-int/lit8 v5, v4, -0x30

    .line 67
    .local v5, "ll":I
    :goto_30
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 50
    .end local v2  # "hh":I
    .end local v5  # "ll":I
    :cond_39
    if-lt v1, v12, :cond_44

    const/16 v7, 0x66

    if-gt v1, v7, :cond_44

    .line 51
    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v2, v7, 0xa

    .restart local v2  # "hh":I
    goto :goto_2a

    .line 52
    .end local v2  # "hh":I
    :cond_44
    if-lt v1, v10, :cond_4d

    if-gt v1, v11, :cond_4d

    .line 53
    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v2, v7, 0xa

    .restart local v2  # "hh":I
    goto :goto_2a

    .line 55
    .end local v2  # "hh":I
    :cond_4d
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 60
    .restart local v2  # "hh":I
    :cond_53
    if-lt v4, v12, :cond_5e

    const/16 v7, 0x66

    if-gt v4, v7, :cond_5e

    .line 61
    add-int/lit8 v7, v4, -0x61

    add-int/lit8 v5, v7, 0xa

    .restart local v5  # "ll":I
    goto :goto_30

    .line 62
    .end local v5  # "ll":I
    :cond_5e
    if-lt v4, v10, :cond_67

    if-gt v4, v11, :cond_67

    .line 63
    add-int/lit8 v7, v4, -0x41

    add-int/lit8 v5, v7, 0xa

    .restart local v5  # "ll":I
    goto :goto_30

    .line 65
    .end local v5  # "ll":I
    :cond_67
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 69
    .end local v1  # "h":C
    .end local v2  # "hh":I
    .end local v4  # "l":C
    :cond_6d
    return-object v6
.end method

.method private static $d2j$hex$52856ded$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$52856ded$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$52856ded$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B

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

.method static final constructor <clinit>()V
    .registers 1

    const-string v0, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3e000000ffffffffffffffffffffffff3f0000003400000035000000360000003700000038000000390000003a0000003b0000003c0000003d000000fffffffffffffffffffffffffeffffffffffffffffffffffffffffff000000000100000002000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f00000010000000110000001200000013000000140000001500000016000000170000001800000019000000ffffffffffffffffffffffffffffffffffffffffffffffff1a0000001b0000001c0000001d0000001e0000001f000000200000002100000022000000230000002400000025000000260000002700000028000000290000002a0000002b0000002c0000002d0000002e0000002f00000030000000310000003200000033000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/github/megatronking/stringfog/Base64$Decoder;->DECODE:[I

    const-string v0, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3e000000ffffffffffffffff3400000035000000360000003700000038000000390000003a0000003b0000003c0000003d000000fffffffffffffffffffffffffeffffffffffffffffffffffffffffff000000000100000002000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f00000010000000110000001200000013000000140000001500000016000000170000001800000019000000ffffffffffffffffffffffffffffffff3f000000ffffffff1a0000001b0000001c0000001d0000001e0000001f000000200000002100000022000000230000002400000025000000260000002700000028000000290000002a0000002b0000002c0000002d0000002e0000002f00000030000000310000003200000033000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/github/megatronking/stringfog/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/megatronking/stringfog/Base64$Coder;-><init>()V

    iput-object p2, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Decoder;->DECODE:[I

    :goto_c
    iput-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->alphabet:[I

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->value:I

    return-void

    :cond_13
    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_c
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 14

    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    add-int v5, p3, p2

    iget v3, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iget v2, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->value:I

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    iget-object v7, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->alphabet:[I

    move v0, p2

    :goto_13
    if-lt v0, v5, :cond_20

    move v0, v1

    :goto_16
    if-nez p4, :cond_10f

    iput v3, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->value:I

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    const/4 v0, 0x1

    goto :goto_6

    :cond_20
    if-nez v3, :cond_69

    :goto_22
    add-int/lit8 v4, v0, 0x4

    if-gt v4, v5, :cond_4f

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget v2, v7, v2

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    or-int/2addr v2, v4

    if-gez v2, :cond_53

    :cond_4f
    if-lt v0, v5, :cond_69

    move v0, v1

    goto :goto_16

    :cond_53
    add-int/lit8 v4, v1, 0x2

    int-to-byte v8, v2

    aput-byte v8, v6, v4

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v6, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_22

    :cond_69
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget v4, v7, v0

    packed-switch v3, :pswitch_data_13c

    move v0, p2

    goto :goto_13

    :pswitch_76  #0x0
    if-ltz v4, :cond_7e

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v4

    :cond_7c
    move v0, p2

    goto :goto_13

    :cond_7e
    const/4 v0, -0x1

    if-eq v4, v0, :cond_7c

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_86  #0x1
    if-ltz v4, :cond_90

    shl-int/lit8 v0, v2, 0x6

    or-int v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_8e
    move v0, p2

    goto :goto_13

    :cond_90
    const/4 v0, -0x1

    if-eq v4, v0, :cond_8e

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_99  #0x2
    if-ltz v4, :cond_a4

    shl-int/lit8 v0, v2, 0x6

    or-int v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_a1
    :goto_a1
    move v0, p2

    goto/16 :goto_13

    :cond_a4
    const/4 v0, -0x2

    if-ne v4, v0, :cond_b0

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    const/4 v3, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    :cond_b0
    const/4 v0, -0x1

    if-eq v4, v0, :cond_a1

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_b9  #0x3
    if-ltz v4, :cond_d6

    shl-int/lit8 v0, v2, 0x6

    or-int v2, v0, v4

    add-int/lit8 v0, v1, 0x2

    int-to-byte v3, v2

    aput-byte v3, v6, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    shr-int/lit8 v0, v2, 0x10

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    add-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    :cond_d3
    :goto_d3
    move v0, p2

    goto/16 :goto_13

    :cond_d6
    const/4 v0, -0x2

    if-ne v4, v0, :cond_e9

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v3, v2, 0x2

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    shr-int/lit8 v0, v2, 0xa

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x5

    goto :goto_d3

    :cond_e9
    const/4 v0, -0x1

    if-eq v4, v0, :cond_d3

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_f2  #0x4
    const/4 v0, -0x2

    if-ne v4, v0, :cond_fa

    add-int/lit8 v3, v3, 0x1

    :cond_f7
    move v0, p2

    goto/16 :goto_13

    :cond_fa
    const/4 v0, -0x1

    if-eq v4, v0, :cond_f7

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_103  #0x5
    const/4 v0, -0x1

    if-eq v4, v0, :cond_10c

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_10c
    move v0, p2

    goto/16 :goto_13

    :cond_10f
    packed-switch v3, :pswitch_data_14c

    :goto_112
    :pswitch_112  #0x0, 0x5
    iput v3, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    const/4 v0, 0x1

    goto/16 :goto_6

    :pswitch_119  #0x1
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_11f  #0x2
    shr-int/lit8 v1, v2, 0x4

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_112

    :pswitch_127  #0x3
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    goto :goto_112

    :pswitch_136  #0x4
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_76  #00000000
        :pswitch_86  #00000001
        :pswitch_99  #00000002
        :pswitch_b9  #00000003
        :pswitch_f2  #00000004
        :pswitch_103  #00000005
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_112  #00000000
        :pswitch_119  #00000001
        :pswitch_11f  #00000002
        :pswitch_127  #00000003
        :pswitch_136  #00000004
        :pswitch_112  #00000005
    .end packed-switch
.end method
