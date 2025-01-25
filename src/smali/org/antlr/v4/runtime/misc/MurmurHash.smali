.class public final Lorg/antlr/v4/runtime/misc/MurmurHash;
.super Ljava/lang/Object;
.source "MurmurHash.java"


# static fields
.field private static final DEFAULT_SEED:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finish(II)I
    .registers 2

    mul-int/lit8 p1, p1, 0x4

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method public static hashCode([Ljava/lang/Object;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)I"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result p1

    .line 103
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 104
    invoke-static {p1, v2}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 107
    :cond_11
    array-length p0, p0

    invoke-static {p1, p0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result p0

    return p0
.end method

.method public static initialize()I
    .registers 1

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    return v0
.end method

.method public static initialize(I)I
    .registers 1

    return p0
.end method

.method public static update(II)I
    .registers 3

    const v0, -0x3361d2af  # -8.2930312E7f

    mul-int p1, p1, v0

    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v0

    const v0, 0x1b873593

    mul-int p1, p1, v0

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x13

    shl-int/lit8 p0, p0, 0xd

    or-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x5

    const p1, 0x19ab949c

    sub-int/2addr p0, p1

    return p0
.end method

.method public static update(ILjava/lang/Object;)I
    .registers 2

    if-eqz p1, :cond_7

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result p0

    return p0
.end method
