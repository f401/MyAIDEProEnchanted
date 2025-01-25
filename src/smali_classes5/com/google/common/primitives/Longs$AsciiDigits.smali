.class final Lcom/google/common/primitives/Longs$AsciiDigits;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsciiDigits"
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    .line 329
    const/16 v1, 0x80

    new-array v2, v1, [B

    .line 330
    const/4 v1, -0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 331
    :goto_a
    const/16 v3, 0x9

    if-gt v1, v3, :cond_16

    .line 332
    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 334
    :cond_16
    :goto_16
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_2b

    .line 335
    add-int/lit8 v1, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 336
    add-int/lit8 v1, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 338
    :cond_2b
    sput-object v2, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    .line 339
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static digit(C)I
    .registers 2

    .line 342
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    sget-object v0, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method
