.class public final Lorg/apache/tools/zip/ZipLong;
.super Ljava/lang/Object;
.source "ZipLong.java"

# interfaces
.implements Ljava/lang/Cloneable;


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

.field public static final CFH_SIG:Lorg/apache/tools/zip/ZipLong;

.field public static final DD_SIG:Lorg/apache/tools/zip/ZipLong;

.field public static final LFH_SIG:Lorg/apache/tools/zip/ZipLong;

.field static final ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 48
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v2, 0x2014b50  # 1.6619997E-316

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/zip/ZipLong;->CFH_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 51
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v2, 0x4034b50

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/zip/ZipLong;->LFH_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 56
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v2, 0x8074b50

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/zip/ZipLong;->DD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 62
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    .line 71
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    .line 80
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    .line 90
    return-void
.end method

.method public static getBytes(J)[B
    .registers 4

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 117
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 118
    return-object v0
.end method

.method public static getValue([B)J
    .registers 3

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([BI)J
    .registers 12

    .line 147
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    .line 148
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 149
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 150
    aget-byte v6, p0, p1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    .line 151
    const-wide v8, 0xff000000L

    and-long/2addr v0, v8

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v6

    return-wide v0
.end method

.method public static putLong(J[BI)V
    .registers 10

    .line 130
    add-int/lit8 v0, p3, 0x1

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 131
    add-int/lit8 v1, v0, 0x1

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 132
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    const/16 v0, 0x10

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 133
    add-int/lit8 v0, v1, 0x1

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    const/16 v1, 0x18

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 134
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 187
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 188
    :catch_5
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 171
    instance-of v0, p1, Lorg/apache/tools/zip/ZipLong;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    check-cast p1, Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipLong;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getBytes()[B
    .registers 3

    .line 98
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 181
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public putLong([BI)V
    .registers 5

    .line 137
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    invoke-static {v0, v1, p1, p2}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipLong value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/tools/zip/ZipLong;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
