.class public final Lorg/antlr/v4/runtime/misc/MurmurHash;
.super Ljava/lang/Object;
.source "MurmurHash.java"


# static fields
.field private static final DEFAULT_SEED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finish(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x4

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method public static hashCode([Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)I"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v1

    .line 103
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 104
    invoke-static {v1, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    array-length v0, p0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public static initialize()I
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    return v0
.end method

.method public static initialize(I)I
    .locals 0

    return p0
.end method

.method public static update(II)I
    .locals 2

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, p1

    shl-int/lit8 v1, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    const v1, 0x1b873593

    mul-int/2addr v0, v1

    xor-int/2addr v0, p0

    shl-int/lit8 v1, v0, 0xd

    ushr-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    const v1, 0x19ab949c

    sub-int/2addr v0, v1

    return v0
.end method

.method public static update(ILjava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
