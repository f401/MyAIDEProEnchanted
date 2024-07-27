.class public abstract Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;,
        Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
    }
.end annotation


# instance fields
.field final DW:I

.field protected final FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

.field final j6:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const/16 v5, 0x200

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, v1

    move v4, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v3, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v4, 0x20

    iput v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->DW:I

    add-int/lit8 v2, v3, -0x1

    iput v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6:I

    new-array v2, v3, [Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    iput-object v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    div-int v2, v5, v3

    mul-int/2addr v3, v2

    if-ge v3, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_2

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected static j6(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)I"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    iget v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->DW:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
.end method
