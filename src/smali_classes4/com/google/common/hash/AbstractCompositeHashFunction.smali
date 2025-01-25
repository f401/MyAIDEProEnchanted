.class abstract Lcom/google/common/hash/AbstractCompositeHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "AbstractCompositeHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final functions:[Lcom/google/common/hash/HashFunction;


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 38
    array-length v1, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_f

    aget-object v2, p1, v0

    .line 39
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 41
    :cond_f
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 42
    return-void
.end method

.method private fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;
    .registers 3

    .line 72
    new-instance v0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;-><init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V

    return-object v0
.end method


# virtual methods
.method abstract makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/common/hash/Hasher;

    .line 55
    const/4 v0, 0x0

    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 56
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 58
    :cond_16
    invoke-direct {p0, v1}, Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .registers 5

    const/4 v1, 0x0

    .line 63
    if-ltz p1, :cond_1c

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 64
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/common/hash/Hasher;

    .line 65
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 66
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/google/common/hash/HashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    move v0, v1

    .line 63
    goto :goto_4

    .line 68
    :cond_1e
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
