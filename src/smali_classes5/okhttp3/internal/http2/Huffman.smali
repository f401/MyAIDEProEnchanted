.class Lokhttp3/internal/http2/Huffman;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Huffman$Node;
    }
.end annotation


# static fields
.field private static final CODES:[I

.field private static final CODE_LENGTHS:[B

.field private static final INSTANCE:Lokhttp3/internal/http2/Huffman;


# instance fields
.field private final root:Lokhttp3/internal/http2/Huffman$Node;


# direct methods
.method private static $d2j$hex$8202215b$decode_B(Ljava/lang/String;)[B
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

.method private static $d2j$hex$8202215b$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lokhttp3/internal/http2/Huffman;->$d2j$hex$8202215b$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$8202215b$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lokhttp3/internal/http2/Huffman;->$d2j$hex$8202215b$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$8202215b$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lokhttp3/internal/http2/Huffman;->$d2j$hex$8202215b$decode_B(Ljava/lang/String;)[B

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
    .registers 1

    const-string v0, "f81f0000d8ff7f00e2ffff0fe3ffff0fe4ffff0fe5ffff0fe6ffff0fe7ffff0fe8ffff0feaffff00fcffff3fe9ffff0feaffff0ffdffff3febffff0fecffff0fedffff0feeffff0fefffff0ff0ffff0ff1ffff0ff2ffff0ffeffff3ff3ffff0ff4ffff0ff5ffff0ff6ffff0ff7ffff0ff8ffff0ff9ffff0ffaffff0ffbffff0f14000000f8030000f9030000fa0f0000f91f000015000000f8000000fa070000fa030000fb030000f9000000fb070000fa000000160000001700000018000000000000000100000002000000190000001a0000001b0000001c0000001d0000001e0000001f0000005c000000fb000000fc7f000020000000fb0f0000fc030000fa1f0000210000005d0000005e0000005f000000600000006100000062000000630000006400000065000000660000006700000068000000690000006a0000006b0000006c0000006d0000006e0000006f000000700000007100000072000000fc00000073000000fd000000fb1f0000f0ff0700fc1f0000fc3f000022000000fd7f0000030000002300000004000000240000000500000025000000260000002700000006000000740000007500000028000000290000002a000000070000002b000000760000002c00000008000000090000002d0000007700000078000000790000007a0000007b000000fe7f0000fc070000fd3f0000fd1f0000fcffff0fe6ff0f00d2ff3f00e7ff0f00e8ff0f00d3ff3f00d4ff3f00d5ff3f00d9ff7f00d6ff3f00daff7f00dbff7f00dcff7f00ddff7f00deff7f00ebffff00dfff7f00ecffff00edffff00d7ff3f00e0ff7f00eeffff00e1ff7f00e2ff7f00e3ff7f00e4ff7f00dcff1f00d8ff3f00e5ff7f00d9ff3f00e6ff7f00e7ff7f00efffff00daff3f00ddff1f00e9ff0f00dbff3f00dcff3f00e8ff7f00e9ff7f00deff1f00eaff7f00ddff3f00deff3f00f0ffff00dfff1f00dfff3f00ebff7f00ecff7f00e0ff1f00e1ff1f00e0ff3f00e2ff1f00edff7f00e1ff3f00eeff7f00efff7f00eaff0f00e2ff3f00e3ff3f00e4ff3f00f0ff7f00e5ff3f00e6ff3f00f1ff7f00e0ffff03e1ffff03ebff0f00f1ff0700e7ff3f00f2ff7f00e8ff3f00ecffff01e2ffff03e3ffff03e4ffff03deffff07dfffff07e5ffff03f1ffff00edffff01f2ff0700e3ff1f00e6ffff03e0ffff07e1ffff07e7ffff03e2ffff07f2ffff00e4ff1f00e5ff1f00e8ffff03e9ffff03fdffff0fe3ffff07e4ffff07e5ffff07ecff0f00f3ffff00edff0f00e6ff1f00e9ff3f00e7ff1f00e8ff1f00f3ff7f00eaff3f00ebff3f00eeffff01efffff01f4ffff00f5ffff00eaffff03f4ff7f00ebffff03e6ffff07ecffff03edffff03e7ffff07e8ffff07e9ffff07eaffff07ebffff07feffff0fecffff07edffff07eeffff07efffff07f0ffff07eeffff03"

    invoke-static {v0}, Lokhttp3/internal/http2/Huffman;->$d2j$hex$8202215b$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Huffman;->CODES:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    new-instance v0, Lokhttp3/internal/http2/Huffman;

    invoke-direct {v0}, Lokhttp3/internal/http2/Huffman;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    return-void

    nop

    :array_1a
    .array-data 1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/internal/http2/Huffman$Node;

    invoke-direct {v0}, Lokhttp3/internal/http2/Huffman$Node;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    invoke-direct {p0}, Lokhttp3/internal/http2/Huffman;->buildTree()V

    return-void
.end method

.method private addCode(IIB)V
    .registers 10

    new-instance v3, Lokhttp3/internal/http2/Huffman$Node;

    invoke-direct {v3, p1, p3}, Lokhttp3/internal/http2/Huffman$Node;-><init>(II)V

    iget-object v0, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    move-object v2, v0

    :goto_8
    const/16 v0, 0x8

    if-le p3, v0, :cond_34

    add-int/lit8 v0, p3, -0x8

    int-to-byte p3, v0

    ushr-int v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, v2, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    if-eqz v1, :cond_2c

    iget-object v1, v2, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    aget-object v1, v1, v0

    if-nez v1, :cond_26

    iget-object v1, v2, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    new-instance v4, Lokhttp3/internal/http2/Huffman$Node;

    invoke-direct {v4}, Lokhttp3/internal/http2/Huffman$Node;-><init>()V

    aput-object v4, v1, v0

    :cond_26
    iget-object v1, v2, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    aget-object v0, v1, v0

    move-object v2, v0

    goto :goto_8

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid dictionary: prefix not unique"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    rsub-int/lit8 v4, p3, 0x8

    shl-int v0, p2, v4

    and-int/lit16 v1, v0, 0xff

    move v0, v1

    :goto_3b
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    add-int/2addr v5, v1

    if-ge v0, v5, :cond_47

    iget-object v5, v2, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_47
    return-void
.end method

.method private buildTree()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    array-length v2, v1

    if-ge v0, v2, :cond_12

    sget-object v2, Lokhttp3/internal/http2/Huffman;->CODES:[I

    aget v2, v2, v0

    aget-byte v1, v1, v0

    invoke-direct {p0, v0, v2, v1}, Lokhttp3/internal/http2/Huffman;->addCode(IIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static get()Lokhttp3/internal/http2/Huffman;
    .registers 1

    sget-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    return-object v0
.end method


# virtual methods
.method decode([B)[B
    .registers 8

    const/4 v2, 0x0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_b
    array-length v2, p1

    if-ge v3, v2, :cond_45

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v4, v4, 0x8

    :goto_17
    const/16 v2, 0x8

    if-lt v4, v2, :cond_37

    iget-object v0, v0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    add-int/lit8 v2, v4, -0x8

    ushr-int v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v0, v0, v2

    iget-object v2, v0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    if-nez v2, :cond_34

    iget v2, v0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, v0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    sub-int/2addr v4, v0

    iget-object v0, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    goto :goto_17

    :cond_34
    add-int/lit8 v4, v4, -0x8

    goto :goto_17

    :cond_37
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    :cond_3b
    iget v2, v0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, v0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    sub-int/2addr v4, v0

    iget-object v0, p0, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    :cond_45
    if-lez v4, :cond_59

    iget-object v0, v0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    rsub-int/lit8 v2, v4, 0x8

    shl-int v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v0, v0, v2

    iget-object v2, v0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    if-nez v2, :cond_59

    iget v2, v0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    if-le v2, v4, :cond_3b

    :cond_59
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method encode(Lokio/ByteString;Lokio/BufferedSink;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    move v2, v3

    move v4, v3

    :goto_5
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sget-object v5, Lokhttp3/internal/http2/Huffman;->CODES:[I

    aget v5, v5, v3

    sget-object v6, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    aget-byte v3, v6, v3

    shl-long/2addr v0, v3

    int-to-long v6, v5

    or-long/2addr v0, v6

    add-int/2addr v3, v4

    :goto_1d
    const/16 v4, 0x8

    if-lt v3, v4, :cond_2a

    add-int/lit8 v3, v3, -0x8

    shr-long v4, v0, v3

    long-to-int v4, v4

    invoke-interface {p2, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_1d

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_5

    :cond_2e
    if-lez v4, :cond_3c

    rsub-int/lit8 v2, v4, 0x8

    shl-long/2addr v0, v2

    const/16 v2, 0xff

    ushr-int/2addr v2, v4

    int-to-long v2, v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :cond_3c
    return-void
.end method

.method encodedLength(Lokio/ByteString;)I
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    sget-object v4, Lokhttp3/internal/http2/Huffman;->CODE_LENGTHS:[B

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v4, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_18
    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const/4 v2, 0x3

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
