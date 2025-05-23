.class Landroidj/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroidj/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    new-array v0, v1, [J

    sput-object v0, Landroidj/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroidj/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .registers 7

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_4
    if-gt v2, v1, :cond_18

    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    aget v3, p0, v0

    if-ge v3, p2, :cond_12

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_4

    :cond_12
    if-le v3, p2, :cond_1a

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_4

    :cond_18
    xor-int/lit8 v0, v2, -0x1

    :cond_1a
    return v0
.end method

.method static binarySearch([JIJ)I
    .registers 10

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_4
    if-gt v2, v1, :cond_1c

    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    aget-wide v4, p0, v0

    cmp-long v3, v4, p2

    if-gez v3, :cond_14

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_4

    :cond_14
    cmp-long v1, v4, p2

    if-lez v1, :cond_1e

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_4

    :cond_1c
    xor-int/lit8 v0, v2, -0x1

    :cond_1e
    return v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static idealByteArraySize(I)I
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    :cond_10
    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealIntArraySize(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroidj/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroidj/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
