.class public Lorg/antlr/v4/runtime/misc/Array2DHashSet;
.super Ljava/lang/Object;
.source "Array2DHashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field public static final INITAL_BUCKET_CAPACITY:I = 0x8

.field public static final INITAL_CAPACITY:I = 0x10

.field public static final LOAD_FACTOR:D = 0.75


# instance fields
.field protected buckets:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field protected final comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field protected currentPrime:I

.field protected initialBucketCapacity:I

.field protected n:I

.field protected threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-TT;>;)V"
        }
    .end annotation

    .line 39
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-TT;>;II)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    .line 29
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->currentPrime:I

    .line 32
    const/16 v0, 0x8

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    if-nez p1, :cond_0

    .line 44
    sget-object p1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    .line 48
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBuckets(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    .line 49
    iput p3, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 324
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected asElementType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 384
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBuckets(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    .line 386
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 202
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 302
    instance-of v1, p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    if-eqz v1, :cond_3

    .line 303
    check-cast p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    .line 304
    iget-object v3, p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    if-nez v5, :cond_1

    .line 308
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 306
    :cond_1
    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    if-eqz v7, :cond_0

    .line 308
    invoke-virtual {p0, v7}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 314
    :goto_2
    return v0

    .line 308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 314
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public containsFast(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createBucket(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 466
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method protected createBuckets(I)[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[TT;"
        }
    .end annotation

    .line 455
    new-array v0, p1, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    instance-of v1, p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    .line 133
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method protected expand()V
    .locals 14

    const/4 v2, 0x0

    .line 139
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    .line 140
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->currentPrime:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->currentPrime:I

    .line 141
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 142
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBuckets(I)[[Ljava/lang/Object;

    move-result-object v5

    .line 143
    array-length v1, v5

    new-array v6, v1, [I

    .line 144
    iput-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v8

    double-to-int v0, v0

    .line 145
    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    .line 148
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    .line 149
    array-length v7, v4

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_4

    aget-object v8, v4, v3

    if-nez v8, :cond_1

    .line 177
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 154
    :cond_1
    array-length v9, v8

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_0

    aget-object v10, v8, v1

    if-eqz v10, :cond_0

    .line 159
    invoke-virtual {p0, v10}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v11

    .line 160
    aget v12, v6, v11

    if-nez v12, :cond_3

    .line 164
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBucket(I)[Ljava/lang/Object;

    move-result-object v0

    .line 165
    aput-object v0, v5, v11

    .line 176
    :cond_2
    :goto_2
    aput-object v10, v0, v12

    .line 177
    aget v0, v6, v11

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v11

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 168
    :cond_3
    aget-object v0, v5, v11

    .line 169
    array-length v13, v0

    if-ne v12, v13, :cond_2

    .line 171
    array-length v13, v0

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 172
    aput-object v0, v5, v11

    goto :goto_2

    .line 177
    :cond_4
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v1

    .line 98
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 100
    :cond_1
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    if-nez v1, :cond_2

    move-object p1, v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v5, v1, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p1, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move-object p1, v0

    goto :goto_0
.end method

.method protected final getBucket(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 109
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public final getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 58
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->expand()V

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getOrAddImpl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrAddImpl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v2

    .line 64
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    .line 68
    iget v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBucket(I)[Ljava/lang/Object;

    move-result-object v1

    .line 69
    aput-object p1, v1, v0

    .line 70
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 71
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    .line 91
    :goto_0
    return-object p1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_1
    array-length v1, v3

    if-ge v0, v1, :cond_3

    .line 77
    aget-object v1, v3, v0

    if-nez v1, :cond_2

    .line 79
    aput-object p1, v3, v0

    .line 80
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    goto :goto_0

    .line 83
    :cond_2
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v4, v1, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 87
    :cond_3
    array-length v0, v3

    .line 88
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 90
    aput-object p1, v1, v0

    .line 91
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    const/4 v2, 0x0

    .line 115
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 116
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    if-nez v6, :cond_1

    .line 120
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 118
    :cond_1
    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v8, v6, v1

    if-eqz v8, :cond_0

    .line 120
    iget-object v9, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v9, v8}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v0, v8}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 197
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;-><init>(Lorg/antlr/v4/runtime/misc/Array2DHashSet;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 266
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->removeFast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 375
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 376
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->removeFast(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeFast(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v0

    .line 275
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    move v0, v1

    .line 281
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 282
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 288
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v4, v3, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    add-int/lit8 v1, v0, 0x1

    array-length v3, v2

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-object v1, v2, v0

    .line 292
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 333
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v6, v5

    move v4, v1

    move v2, v1

    :goto_0
    if-ge v4, v6, :cond_6

    aget-object v7, v5, v4

    if-nez v7, :cond_1

    .line 362
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v1

    .line 340
    :goto_1
    array-length v8, v7

    if-ge v0, v8, :cond_2

    .line 341
    aget-object v8, v7, v0

    if-nez v8, :cond_3

    .line 352
    :cond_2
    add-int/2addr v2, v3

    :goto_2
    if-ge v3, v0, :cond_0

    .line 362
    const/4 v8, 0x0

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 345
    :cond_3
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 352
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_4
    if-eq v0, v3, :cond_5

    .line 352
    aget-object v8, v7, v0

    aput-object v8, v7, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 367
    :cond_6
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    if-eq v2, v0, :cond_7

    const/4 v1, 0x1

    .line 368
    :cond_7
    iput v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return v1
.end method

.method public final size()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBucket(I)[Ljava/lang/Object;

    move-result-object v4

    .line 222
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    if-nez v7, :cond_1

    .line 232
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 227
    :cond_1
    array-length v8, v7

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_0

    aget-object v9, v7, v1

    if-eqz v9, :cond_0

    .line 232
    aput-object v9, v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 241
    array-length v0, p1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 246
    :cond_0
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    if-nez v6, :cond_2

    .line 258
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 251
    :cond_2
    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    if-eqz v8, :cond_1

    .line 258
    aput-object v8, p1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    .line 391
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    .line 406
    :goto_0
    return-object v0

    .line 393
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v6, v5

    const/4 v0, 0x1

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    if-nez v7, :cond_2

    .line 402
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 398
    :cond_2
    array-length v8, v7

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_1

    aget-object v9, v7, v2

    if-eqz v9, :cond_1

    if-eqz v0, :cond_3

    move v0, v1

    .line 402
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 401
    :cond_3
    const-string v10, ", "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 405
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toTableString()Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    if-nez v7, :cond_0

    .line 413
    const-string v0, "null\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 416
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    array-length v8, v7

    const/4 v0, 0x1

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    if-eqz v0, :cond_1

    move v0, v1

    .line 420
    :goto_3
    if-nez v9, :cond_2

    .line 421
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 420
    :cond_1
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 422
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 424
    :cond_3
    const-string v0, "]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
