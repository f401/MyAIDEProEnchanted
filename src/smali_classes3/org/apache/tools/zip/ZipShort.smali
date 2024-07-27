.class public final Lorg/apache/tools/zip/ZipShort;
.super Ljava/lang/Object;
.source "ZipShort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    .line 50
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    .line 60
    return-void
.end method

.method public static getBytes(I)[B
    .registers 5

    .line 101
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    .line 103
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 104
    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    return-object v2
.end method

.method public static getValue([B)I
    .registers 2

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v0

    return v0
.end method

.method public static getValue([BI)I
    .registers 5

    .line 114
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .line 115
    aget-byte v1, p0, p1

    .line 116
    shl-int/lit8 v0, v0, 0x8

    const v2, 0xff00

    and-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static putShort(I[BI)V
    .registers 5

    .line 82
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 83
    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 84
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 152
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 136
    instance-of v0, p1, Lorg/apache/tools/zip/ZipShort;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    check-cast p1, Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .registers 4

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 69
    iget v1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 70
    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 92
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 146
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipShort value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
