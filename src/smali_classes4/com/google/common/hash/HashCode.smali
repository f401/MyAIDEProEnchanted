.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/HashCode$BytesHashCode;,
        Lcom/google/common/hash/HashCode$IntHashCode;,
        Lcom/google/common/hash/HashCode$LongHashCode;
    }
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 422
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .registers 3

    .line 355
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 356
    add-int/lit8 v0, p0, -0x30

    .line 359
    :goto_a
    return v0

    .line 358
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 359
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 361
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal hexadecimal character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromBytes([B)Lcom/google/common/hash/HashCode;
    .registers 3

    const/4 v0, 0x1

    .line 240
    array-length v1, p0

    if-lt v1, v0, :cond_14

    :goto_4
    const-string v1, "A HashCode must contain at least 1 byte."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    .line 240
    :cond_14
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;
    .registers 2

    .line 249
    new-instance v0, Lcom/google/common/hash/HashCode$BytesHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$BytesHashCode;-><init>([B)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/common/hash/HashCode;
    .registers 2

    .line 117
    new-instance v0, Lcom/google/common/hash/HashCode$IntHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$IntHashCode;-><init>(I)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/google/common/hash/HashCode;
    .registers 4

    .line 174
    new-instance v0, Lcom/google/common/hash/HashCode$LongHashCode;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/HashCode$LongHashCode;-><init>(J)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/hash/HashCode;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_47

    move v0, v1

    :goto_a
    const-string v3, "input string (%s) must have at least 2 characters"

    invoke-static {v0, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4e

    :goto_17
    const-string v0, "input string (%s) must have an even number of characters"

    invoke-static {v1, v0, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 346
    :goto_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_49

    .line 347
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/hash/HashCode;->decode(C)I

    move-result v1

    .line 348
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/hash/HashCode;->decode(C)I

    move-result v3

    .line 349
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 346
    add-int/lit8 v2, v2, 0x2

    goto :goto_24

    :cond_47
    move v0, v2

    .line 338
    goto :goto_a

    .line 351
    :cond_49
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    :cond_4e
    move v1, v2

    goto :goto_17
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public abstract asLong()J
.end method

.method public abstract bits()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 373
    instance-of v1, p1, Lcom/google/common/hash/HashCode;

    if-eqz v1, :cond_18

    .line 374
    check-cast p1, Lcom/google/common/hash/HashCode;

    .line 375
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v2

    if-ne v1, v2, :cond_18

    invoke-virtual {p0, p1}, Lcom/google/common/hash/HashCode;->equalsSameBits(Lcom/google/common/hash/HashCode;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 377
    :cond_18
    return v0
.end method

.method abstract equalsSameBits(Lcom/google/common/hash/HashCode;)Z
.end method

.method getBytesInternal()[B
    .registers 2

    .line 101
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 6

    .line 389
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_d

    .line 390
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    .line 398
    :cond_c
    return v0

    .line 393
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v2

    .line 394
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 395
    const/4 v1, 0x1

    :goto_17
    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 396
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public abstract padToLong()J
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 414
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v1

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    array-length v3, v1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_29

    aget-byte v4, v1, v0

    .line 417
    sget-object v5, Lcom/google/common/hash/HashCode;->hexDigits:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/google/common/hash/HashCode;->hexDigits:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 419
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBytesTo([BII)I
    .registers 7

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result v0

    .line 88
    add-int v1, p2, v0

    array-length v2, p1

    invoke-static {p2, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/hash/HashCode;->writeBytesToImpl([BII)V

    .line 90
    return v0
.end method

.method abstract writeBytesToImpl([BII)V
.end method
