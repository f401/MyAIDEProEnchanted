.class public final Lorg/apache/tools/zip/ZipEightByteInteger;
.super Ljava/lang/Object;
.source "ZipEightByteInteger.java"


# static fields
.field private static final BYTE_1:I = 0x1

.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_2:I = 0x2

.field private static final BYTE_2_MASK:I = 0xff0000

.field private static final BYTE_2_SHIFT:I = 0x10

.field private static final BYTE_3:I = 0x3

.field private static final BYTE_3_MASK:J = 0xff000000L

.field private static final BYTE_3_SHIFT:I = 0x18

.field private static final BYTE_4:I = 0x4

.field private static final BYTE_4_MASK:J = 0xff00000000L

.field private static final BYTE_4_SHIFT:I = 0x20

.field private static final BYTE_5:I = 0x5

.field private static final BYTE_5_MASK:J = 0xff0000000000L

.field private static final BYTE_5_SHIFT:I = 0x28

.field private static final BYTE_6:I = 0x6

.field private static final BYTE_6_MASK:J = 0xff000000000000L

.field private static final BYTE_6_SHIFT:I = 0x30

.field private static final BYTE_7:I = 0x7

.field private static final BYTE_7_MASK:J = 0x7f00000000000000L

.field private static final BYTE_7_SHIFT:I = 0x38

.field private static final LEFTMOST_BIT:B = -0x80t

.field private static final LEFTMOST_BIT_SHIFT:I = 0x3f

.field public static final ZERO:Lorg/apache/tools/zip/ZipEightByteInteger;


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 63
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    sput-object v0, Lorg/apache/tools/zip/ZipEightByteInteger;->ZERO:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 70
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(Ljava/math/BigInteger;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    .line 87
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    .line 96
    return-void
.end method

.method public static getBytes(J)[B
    .registers 4

    .line 128
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Ljava/math/BigInteger;)[B
    .registers 9

    const/16 v6, 0x8

    const/4 v7, 0x7

    .line 137
    new-array v0, v6, [B

    .line 138
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 139
    const/4 v1, 0x0

    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 140
    const/4 v1, 0x1

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v2

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 141
    const/4 v1, 0x2

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 142
    const/4 v1, 0x3

    const-wide v4, 0xff000000L

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 143
    const/4 v1, 0x4

    const-wide v4, 0xff00000000L

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 144
    const/4 v1, 0x5

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 145
    const/4 v1, 0x6

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 146
    const-wide/high16 v4, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long/2addr v2, v4

    const/16 v1, 0x38

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 147
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    aget-byte v1, v0, v7

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 150
    :cond_0
    return-object v0
.end method

.method public static getLongValue([B)J
    .registers 3

    .line 191
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongValue([BI)J
    .registers 4

    .line 161
    invoke-static {p0, p1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([B)Ljava/math/BigInteger;
    .registers 2

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static getValue([BI)Ljava/math/BigInteger;
    .registers 20

    .line 172
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    .line 173
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    .line 174
    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    .line 175
    add-int/lit8 v6, p1, 0x4

    aget-byte v6, p0, v6

    int-to-long v6, v6

    .line 176
    add-int/lit8 v8, p1, 0x3

    aget-byte v8, p0, v8

    int-to-long v8, v8

    .line 177
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    int-to-long v10, v10

    .line 178
    add-int/lit8 v12, p1, 0x1

    aget-byte v12, p0, v12

    int-to-long v12, v12

    .line 179
    aget-byte v14, p0, p1

    int-to-long v14, v14

    .line 180
    const/16 v16, 0x38

    shl-long v0, v0, v16

    const-wide/high16 v16, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long v0, v0, v16

    const/16 v16, 0x30

    shl-long v2, v2, v16

    const-wide/high16 v16, 0xff000000000000L

    and-long v2, v2, v16

    add-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v4, v2

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v6, v2

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v8, v2

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v10, v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v12, v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, v14

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 181
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, -0x80

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    .line 182
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 181
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 210
    instance-of v0, p1, Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    check-cast p1, Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 211
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLongValue()J
    .registers 3

    .line 111
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 220
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipEightByteInteger value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
