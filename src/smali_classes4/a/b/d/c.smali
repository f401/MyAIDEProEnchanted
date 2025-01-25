.class public abstract La/b/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Z

.field private static final b:[Z

.field private static final d:[I

.field private static final e:[I


# instance fields
.field public c:B


# direct methods
.method private static $d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B
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

.method private static $d2j$hex$1aa166e0$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$1aa166e0$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$1aa166e0$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B

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
    .registers 2

    const/16 v1, 0xca

    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    sput-object v0, La/b/d/c;->a:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_8c

    sput-object v0, La/b/d/c;->b:[Z

    const-string v0, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000002000000020000000200000002000000020000000200000001000000020000000100000002000000010000000100000001000000010000000100000002000000020000000200000002000000010000000100000001000000010000000200000002000000020000000200000001000000010000000100000001000000030000000400000003000000040000000300000003000000030000000300000001000000020000000100000002000000030000000200000003000000040000000200000002000000040000000200000004000000020000000400000002000000040000000200000004000000020000000400000002000000040000000200000004000000020000000400000002000000040000000100000002000000010000000200000002000000030000000200000003000000020000000300000002000000040000000200000004000000020000000400000000000000010000000100000001000000020000000200000002000000010000000100000001000000020000000200000002000000010000000100000001000000040000000200000002000000040000000400000001000000010000000100000001000000010000000100000002000000020000000200000002000000020000000200000002000000020000000000000000000000000000000100000001000000010000000200000001000000020000000100000000000000000000000000000001000000010000000100000001000000000000000100000000000000000000000100000001000000010000000100000001000000010000000100000001000000000000000000000001000000010000000000000000000000"

    invoke-static {v0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, La/b/d/c;->d:[I

    const-string v0, "00000000010000000100000001000000010000000100000001000000010000000100000002000000020000000100000001000000010000000200000002000000010000000100000001000000010000000200000001000000020000000100000002000000010000000100000001000000010000000100000002000000020000000200000002000000010000000100000001000000010000000200000002000000020000000200000001000000010000000100000001000000010000000200000001000000020000000100000001000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000003000000040000000400000005000000060000000200000001000000020000000100000002000000010000000200000001000000020000000100000002000000010000000200000001000000020000000100000002000000010000000200000001000000020000000100000002000000010000000200000001000000020000000100000002000000010000000200000001000000020000000100000002000000010000000200000000000000020000000100000002000000010000000100000002000000010000000200000002000000010000000200000001000000010000000100000001000000010000000100000001000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000010000000000000001000000010000000000000000000000000000000100000000000000000000000000000001000000"

    invoke-static {v0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, La/b/d/c;->e:[I

    return-void

    nop

    :array_22
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([BII)I
    .registers 6

    packed-switch p2, :pswitch_data_34

    :pswitch_3  #0x3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x0
    const/4 v0, 0x0

    :goto_23
    return v0

    :pswitch_24  #0x1
    invoke-static {p0, p1}, La/b/d/c;->d([BI)I

    move-result v0

    goto :goto_23

    :pswitch_29  #0x2
    invoke-static {p0, p1}, La/b/d/c;->e([BI)I

    move-result v0

    goto :goto_23

    :pswitch_2e  #0x4
    invoke-static {p0, p1}, La/b/d/c;->f([BI)I

    move-result v0

    goto :goto_23

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_24  #00000001
        :pswitch_29  #00000002
        :pswitch_3  #00000003
        :pswitch_2e  #00000004
    .end packed-switch
.end method

.method protected static a([BIII)V
    .registers 7

    packed-switch p3, :pswitch_data_2e

    :pswitch_3  #0x3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x1
    invoke-static {p0, p1, p2}, La/b/d/c;->c([BII)V

    :goto_25
    :pswitch_25  #0x0
    return-void

    :pswitch_26  #0x2
    invoke-static {p0, p1, p2}, La/b/d/c;->d([BII)V

    goto :goto_25

    :pswitch_2a  #0x4
    invoke-static {p0, p1, p2}, La/b/d/c;->e([BII)V

    goto :goto_25

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_22  #00000001
        :pswitch_26  #00000002
        :pswitch_3  #00000003
        :pswitch_2a  #00000004
    .end packed-switch
.end method

.method protected static b([BII)I
    .registers 6

    packed-switch p2, :pswitch_data_34

    :pswitch_3  #0x3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x0
    const/4 v0, 0x0

    :goto_23
    return v0

    :pswitch_24  #0x1
    invoke-static {p0, p1}, La/b/d/c;->g([BI)I

    move-result v0

    goto :goto_23

    :pswitch_29  #0x2
    invoke-static {p0, p1}, La/b/d/c;->h([BI)I

    move-result v0

    goto :goto_23

    :pswitch_2e  #0x4
    invoke-static {p0, p1}, La/b/d/c;->f([BI)I

    move-result v0

    goto :goto_23

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_24  #00000001
        :pswitch_29  #00000002
        :pswitch_3  #00000003
        :pswitch_2e  #00000004
    .end packed-switch
.end method

.method protected static b([BIII)V
    .registers 7

    packed-switch p3, :pswitch_data_2e

    :pswitch_3  #0x3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x1
    invoke-static {p0, p1, p2}, La/b/d/c;->f([BII)V

    :goto_25
    :pswitch_25  #0x0
    return-void

    :pswitch_26  #0x2
    invoke-static {p0, p1, p2}, La/b/d/c;->g([BII)V

    goto :goto_25

    :pswitch_2a  #0x4
    invoke-static {p0, p1, p2}, La/b/d/c;->e([BII)V

    goto :goto_25

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_22  #00000001
        :pswitch_26  #00000002
        :pswitch_3  #00000003
        :pswitch_2a  #00000004
    .end packed-switch
.end method

.method protected static c([BII)V
    .registers 6

    const/16 v0, 0xff

    if-le p2, v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsigned byte value larger than 0xff ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    return-void
.end method

.method protected static d([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected static d([BII)V
    .registers 6

    const v0, 0xffff

    if-le p2, v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsigned short value larger than 0xffff ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static e([BI)I
    .registers 4

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected static e([BII)V
    .registers 6

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static f([BI)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method protected static f([BII)V
    .registers 6

    int-to-byte v0, p2

    if-eq v0, p2, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed byte value out of range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    return-void
.end method

.method protected static g([BI)I
    .registers 3

    aget-byte v0, p0, p1

    return v0
.end method

.method protected static g([BII)V
    .registers 6

    int-to-short v0, p2

    if-eq v0, p2, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed short value out of range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static h([BI)I
    .registers 4

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public a(La/b/c;)I
    .registers 4

    sget-object v0, La/b/d/c;->d:[I

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method public abstract a()La/b/d/c;
.end method

.method public final a(La/b/a/d;I)V
    .registers 4

    iget-object v0, p1, La/b/a/d;->f:[B

    invoke-virtual {p0, v0, p2}, La/b/d/c;->a([BI)V

    return-void
.end method

.method public abstract a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
.end method

.method public a([BI)V
    .registers 4

    invoke-virtual {p0}, La/b/d/c;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, -0x3c

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    :cond_c
    iget-byte v0, p0, La/b/d/c;->c:B

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, La/b/d/c;->c([BI)V

    return-void
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, La/b/d/c;->c:B

    return v0
.end method

.method public b(La/b/c;)I
    .registers 4

    sget-object v0, La/b/d/c;->e:[I

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b([BI)V
.end method

.method protected abstract c([BI)V
.end method

.method protected c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    sget-object v0, La/b/d/d;->a:[Ljava/lang/String;

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Z
    .registers 3

    sget-object v0, La/b/d/c;->a:[Z

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget-boolean v0, v0, v1

    return v0
.end method

.method public f()Z
    .registers 3

    sget-object v0, La/b/d/c;->b:[Z

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget-boolean v0, v0, v1

    return v0
.end method
