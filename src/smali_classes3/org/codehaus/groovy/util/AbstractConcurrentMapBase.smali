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
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x10

    if-ge v2, v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->DW:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6:I

    new-array v3, v2, [Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    iput-object v3, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    const/16 v3, 0x200

    div-int v4, v3, v2

    mul-int v2, v2, v4

    if-ge v2, v3, :cond_26

    add-int/lit8 v4, v4, 0x1

    :cond_26
    :goto_26
    if-ge v1, v4, :cond_2b

    shl-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_39

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_39
    return-void
.end method

.method protected static j6(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)I"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    shl-int/lit8 v0, p0, 0x9

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xe

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x4

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public j6(I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->FH:[Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;

    iget v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->DW:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;->j6:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected abstract j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
.end method
