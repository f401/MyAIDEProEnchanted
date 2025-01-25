.class final Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedLongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseOverflowDetection"
.end annotation


# static fields
.field static final maxSafeDigits:[I

.field static final maxValueDivs:[J

.field static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-wide/16 v6, -0x1

    const/16 v1, 0x25

    .line 400
    new-array v0, v1, [J

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    .line 401
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 402
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    .line 405
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 406
    const/4 v0, 0x2

    :goto_1a
    const/16 v2, 0x24

    if-gt v0, v2, :cond_42

    .line 407
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 408
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v2, v0

    .line 409
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 411
    :cond_42
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static overflowInParse(JII)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 420
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_11

    .line 421
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    aget-wide v4, v2, p3

    cmp-long v3, p0, v4

    if-gez v3, :cond_12

    move v0, v1

    .line 432
    :cond_11
    :goto_11
    return v0

    .line 424
    :cond_12
    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gtz v2, :cond_11

    .line 428
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    aget v2, v2, p3

    if-gt p2, v2, :cond_11

    move v0, v1

    goto :goto_11
.end method
