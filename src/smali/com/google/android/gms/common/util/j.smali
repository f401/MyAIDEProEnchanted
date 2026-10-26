.class public Lcom/google/android/gms/common/util/j;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[C

.field private static final j6:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/common/util/j;->j6:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/common/util/j;->DW:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static j6([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_0

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/google/android/gms/common/util/j;->DW:[C

    ushr-int/lit8 v6, v1, 0x4

    aget-char v6, v5, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v5, v1

    aput-char v1, v3, v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
