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

.method private static $d2j$hex$1aa166e0$decode_I(Ljava/lang/String;)[I
    .locals 3

    .line 22
    invoke-static {p0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$1aa166e0$decode_J(Ljava/lang/String;)[J
    .locals 3

    .line 12
    invoke-static {p0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$1aa166e0$decode_S(Ljava/lang/String;)[S
    .locals 3

    .line 32
    invoke-static {p0}, La/b/d/c;->$d2j$hex$1aa166e0$decode_B(Ljava/lang/String;)[B

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
    .locals 2

    const/16 v1, 0xca

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, La/b/d/c;->a:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

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

    :array_0
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

    :array_1
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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([BII)I
    .locals 3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
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

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_2
    invoke-static {p0, p1}, La/b/d/c;->d([BI)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, La/b/d/c;->e([BI)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, La/b/d/c;->f([BI)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected static a([BIII)V
    .locals 3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
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

    :pswitch_1
    invoke-static {p0, p1, p2}, La/b/d/c;->c([BII)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-static {p0, p1, p2}, La/b/d/c;->d([BII)V

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2}, La/b/d/c;->e([BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected static b([BII)I
    .locals 3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
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

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_2
    invoke-static {p0, p1}, La/b/d/c;->g([BI)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, La/b/d/c;->h([BI)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, La/b/d/c;->f([BI)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected static b([BIII)V
    .locals 3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
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

    :pswitch_1
    invoke-static {p0, p1, p2}, La/b/d/c;->f([BII)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-static {p0, p1, p2}, La/b/d/c;->g([BII)V

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2}, La/b/d/c;->e([BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected static c([BII)V
    .locals 3

    const/16 v0, 0xff

    if-le p2, v0, :cond_0

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

    :cond_0
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    return-void
.end method

.method protected static d([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected static d([BII)V
    .locals 3

    const v0, 0xffff

    if-le p2, v0, :cond_0

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

    :cond_0
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static e([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method protected static e([BII)V
    .locals 3

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
    .locals 3

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
    .locals 3

    int-to-byte v0, p2

    if-eq v0, p2, :cond_0

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

    :cond_0
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    return-void
.end method

.method protected static g([BI)I
    .locals 1

    aget-byte v0, p0, p1

    return v0
.end method

.method protected static g([BII)V
    .locals 3

    int-to-short v0, p2

    if-eq v0, p2, :cond_0

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

    :cond_0
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static h([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public a(La/b/c;)I
    .locals 2

    sget-object v0, La/b/d/c;->d:[I

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method public abstract a()La/b/d/c;
.end method

.method public final a(La/b/a/d;I)V
    .locals 1

    iget-object v0, p1, La/b/a/d;->f:[B

    invoke-virtual {p0, v0, p2}, La/b/d/c;->a([BI)V

    return-void
.end method

.method public abstract a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
.end method

.method public a([BI)V
    .locals 1

    invoke-virtual {p0}, La/b/d/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x3c

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    :cond_0
    iget-byte v0, p0, La/b/d/c;->c:B

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, La/b/d/c;->c([BI)V

    return-void
.end method

.method public b()B
    .locals 1

    iget-byte v0, p0, La/b/d/c;->c:B

    return v0
.end method

.method public b(La/b/c;)I
    .locals 2

    sget-object v0, La/b/d/c;->e:[I

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    sget-object v0, La/b/d/d;->a:[Ljava/lang/String;

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Z
    .locals 2

    sget-object v0, La/b/d/c;->a:[Z

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget-boolean v0, v0, v1

    return v0
.end method

.method public f()Z
    .locals 2

    sget-object v0, La/b/d/c;->b:[Z

    iget-byte v1, p0, La/b/d/c;->c:B

    and-int/lit16 v1, v1, 0xff

    aget-boolean v0, v0, v1

    return v0
.end method
