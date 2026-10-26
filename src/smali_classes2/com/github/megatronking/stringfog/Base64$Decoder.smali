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

.method private static $d2j$hex$52856ded$decode_I(Ljava/lang/String;)[I
    .locals 3

    .line 22
    invoke-static {p0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$52856ded$decode_J(Ljava/lang/String;)[J
    .locals 3

    .line 12
    invoke-static {p0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$52856ded$decode_S(Ljava/lang/String;)[S
    .locals 3

    .line 32
    invoke-static {p0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->$d2j$hex$52856ded$decode_B(Ljava/lang/String;)[B

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

.method static final constructor <clinit>()V
    .locals 1

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
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/megatronking/stringfog/Base64$Coder;-><init>()V

    iput-object p2, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Decoder;->DECODE:[I

    :goto_0
    iput-object v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->alphabet:[I

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iput v1, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->value:I

    return-void

    :cond_0
    sget-object v0, Lcom/github/megatronking/stringfog/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_0
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 9

    iget v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int v5, p3, p2

    iget v3, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iget v2, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->value:I

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    iget-object v7, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->alphabet:[I

    move v0, p2

    :goto_1
    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_2
    if-nez p4, :cond_12

    iput v3, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iput v2, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->value:I

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_4

    :goto_3
    add-int/lit8 v4, v0, 0x4

    if-gt v4, v5, :cond_2

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

    if-gez v2, :cond_3

    :cond_2
    if-lt v0, v5, :cond_4

    move v0, v1

    goto :goto_2

    :cond_3
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

    goto :goto_3

    :cond_4
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget v4, v7, v0

    packed-switch v3, :pswitch_data_0

    move v0, p2

    goto :goto_1

    :pswitch_0
    if-ltz v4, :cond_6

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v4

    :cond_5
    move v0, p2

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    if-ltz v4, :cond_8

    shl-int/lit8 v0, v2, 0x6

    or-int v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_7
    move v0, p2

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    if-eq v4, v0, :cond_7

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_2
    if-ltz v4, :cond_a

    shl-int/lit8 v0, v2, 0x6

    or-int v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_9
    :goto_4
    move v0, p2

    goto/16 :goto_1

    :cond_a
    const/4 v0, -0x2

    if-ne v4, v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    const/4 v3, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, -0x1

    if-eq v4, v0, :cond_9

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_3
    if-ltz v4, :cond_d

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

    :cond_c
    :goto_5
    move v0, p2

    goto/16 :goto_1

    :cond_d
    const/4 v0, -0x2

    if-ne v4, v0, :cond_e

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v3, v2, 0x2

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    shr-int/lit8 v0, v2, 0xa

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x5

    goto :goto_5

    :cond_e
    const/4 v0, -0x1

    if-eq v4, v0, :cond_c

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/4 v0, -0x2

    if-ne v4, v0, :cond_10

    add-int/lit8 v3, v3, 0x1

    :cond_f
    move v0, p2

    goto/16 :goto_1

    :cond_10
    const/4 v0, -0x1

    if-eq v4, v0, :cond_f

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_5
    const/4 v0, -0x1

    if-eq v4, v0, :cond_11

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    move v0, p2

    goto/16 :goto_1

    :cond_12
    packed-switch v3, :pswitch_data_1

    :goto_6
    :pswitch_6
    iput v3, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_7
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_8
    shr-int/lit8 v1, v2, 0x4

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    goto :goto_6

    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/stringfog/Base64$Decoder;->state:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
