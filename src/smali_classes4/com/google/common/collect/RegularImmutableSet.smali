.class final Lcom/google/common/collect/RegularImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient elements:[Ljava/lang/Object;

.field private final transient hashCode:I

.field private final transient mask:I

.field private final transient size:I

.field final transient table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 45
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSet;->mask:I

    .line 46
    iput p2, p0, Lcom/google/common/collect/RegularImmutableSet;->hashCode:I

    .line 47
    iput p5, p0, Lcom/google/common/collect/RegularImmutableSet;->size:I

    .line 48
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 53
    if-eqz p1, :cond_7

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 62
    :goto_8
    return v0

    .line 56
    :cond_9
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 57
    :goto_d
    iget v3, p0, Lcom/google/common/collect/RegularImmutableSet;->mask:I

    and-int/2addr v0, v3

    .line 58
    aget-object v3, v2, v0

    .line 59
    if-nez v3, :cond_16

    move v0, v1

    .line 60
    goto :goto_8

    .line 61
    :cond_16
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 62
    const/4 v0, 0x1

    goto :goto_8

    .line 56
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSet;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSet;->size:I

    add-int/2addr v0, p2

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSet;->size:I

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method internalArray()[Ljava/lang/Object;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method internalArrayEnd()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSet;->size:I

    return v0
.end method

.method internalArrayStart()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSet;->size:I

    return v0
.end method
