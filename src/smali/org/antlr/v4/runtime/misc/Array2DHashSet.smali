.class public Lorg/antlr/v4/runtime/misc/Array2DHashSet;
.super Ljava/lang/Object;
.source "Array2DHashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
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
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected currentPrime:I

.field protected initialBucketCapacity:I

.field protected n:I

.field protected threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 35
    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    .line 29
    const-wide/high16 v0, 0x4028000000000000L  # 12.0

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

    if-nez p1, :cond_1a

    .line 44
    sget-object p1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    .line 47
    :cond_1a
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    .line 48
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBuckets(I)[[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    .line 49
    iput p3, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_17
    return v0
.end method

.method protected asElementType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
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
    .registers 3

    .line 384
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBuckets(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    .line 386
    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    .line 202
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 302
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 303
    check-cast p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    .line 304
    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_45

    aget-object v3, p1, v2

    if-nez v3, :cond_12

    goto :goto_29

    .line 306
    :cond_12
    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_29

    aget-object v6, v3, v5

    if-nez v6, :cond_1b

    goto :goto_29

    .line 308
    :cond_1b
    invoke-virtual {p0, v6}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    return v1

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 313
    :cond_2c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    :cond_45
    const/4 p1, 0x1

    return p1
.end method

.method public containsFast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 210
    :cond_4
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method protected createBucket(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 466
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method protected createBuckets(I)[[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[TT;"
        }
    .end annotation

    .line 455
    new-array p1, p1, [[Ljava/lang/Object;

    check-cast p1, [[Ljava/lang/Object;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_4
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 132
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    .line 133
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v2

    if-eq v0, v2, :cond_17

    return v1

    .line 134
    :cond_17
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected expand()V
    .registers 15

    .line 139
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    .line 140
    iget v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->currentPrime:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->currentPrime:I

    .line 141
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 142
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBuckets(I)[[Ljava/lang/Object;

    move-result-object v2

    .line 143
    array-length v3, v2

    new-array v3, v3, [I

    .line 144
    iput-object v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe8000000000000L  # 0.75

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    .line 145
    iput v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    .line 148
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    .line 149
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v1, :cond_62

    aget-object v6, v0, v5

    if-nez v6, :cond_2c

    goto :goto_5f

    .line 154
    :cond_2c
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2e
    if-ge v8, v7, :cond_5f

    aget-object v9, v6, v8

    if-nez v9, :cond_35

    goto :goto_5f

    .line 159
    :cond_35
    invoke-virtual {p0, v9}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v10

    .line 160
    aget v11, v3, v10

    if-nez v11, :cond_46

    .line 164
    iget v12, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    invoke-virtual {p0, v12}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBucket(I)[Ljava/lang/Object;

    move-result-object v12

    .line 165
    aput-object v12, v2, v10

    goto :goto_54

    .line 168
    :cond_46
    aget-object v12, v2, v10

    .line 169
    array-length v13, v12

    if-ne v11, v13, :cond_54

    .line 171
    array-length v13, v12

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    .line 172
    aput-object v12, v2, v10

    .line 176
    :cond_54
    :goto_54
    aput-object v9, v12, v11

    .line 177
    aget v9, v3, v10

    add-int/lit8 v9, v9, 0x1

    aput v9, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_5f
    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_62
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p1

    .line 97
    :cond_3
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    .line 100
    :cond_f
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    if-nez v4, :cond_18

    return-object v1

    .line 102
    :cond_18
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v5, v4, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_24
    return-object v1
.end method

.method protected final getBucket(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result p1

    .line 109
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public final getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 58
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->threshold:I

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->expand()V

    .line 59
    :cond_9
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getOrAddImpl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getOrAddImpl(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 68
    iget v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->initialBucketCapacity:I

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBucket(I)[Ljava/lang/Object;

    move-result-object v1

    .line 69
    aput-object p1, v1, v2

    .line 70
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 71
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return-object p1

    .line 76
    :cond_1e
    :goto_1e
    array-length v3, v1

    if-ge v2, v3, :cond_3a

    .line 77
    aget-object v3, v1, v2

    if-nez v3, :cond_2e

    .line 79
    aput-object p1, v1, v2

    .line 80
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return-object p1

    .line 83
    :cond_2e
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v4, v3, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    return-object v3

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 87
    :cond_3a
    array-length v2, v1

    .line 88
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 90
    aput-object p1, v1, v2

    .line 91
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return-object p1
.end method

.method public hashCode()I
    .registers 11

    .line 115
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 116
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_29

    aget-object v5, v1, v4

    if-nez v5, :cond_10

    goto :goto_26

    .line 118
    :cond_10
    array-length v6, v5

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v6, :cond_26

    aget-object v8, v5, v7

    if-nez v8, :cond_19

    goto :goto_26

    .line 120
    :cond_19
    iget-object v9, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v9, v8}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v0, v8}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_26
    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 124
    :cond_29
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 197
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
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
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->removeFast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 375
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 376
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->asElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->removeFast(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_19
    return v0
.end method

.method public removeFast(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 274
    :cond_4
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->getBucket(Ljava/lang/Object;)I

    move-result v1

    .line 275
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    const/4 v2, 0x0

    .line 281
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_37

    .line 282
    aget-object v3, v1, v2

    if-nez v3, :cond_18

    return v0

    .line 288
    :cond_18
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v4, v3, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 290
    add-int/lit8 p1, v2, 0x1

    array-length v0, v1

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    array-length p1, v1

    sub-int/2addr p1, v3

    const/4 v0, 0x0

    aput-object v0, v1, p1

    .line 292
    iget p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return v3

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_37
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v1, :cond_37

    aget-object v5, v0, v3

    if-nez v5, :cond_d

    goto :goto_34

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 340
    :goto_f
    array-length v8, v5

    if-ge v6, v8, :cond_2b

    .line 341
    aget-object v8, v5, v6

    if-nez v8, :cond_17

    goto :goto_2b

    .line 345
    :cond_17
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    goto :goto_28

    :cond_1e
    if-eq v6, v7, :cond_24

    .line 352
    aget-object v8, v5, v6

    aput-object v8, v5, v7

    :cond_24
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_2b
    :goto_2b
    add-int/2addr v4, v7

    :goto_2c
    if-ge v7, v6, :cond_34

    .line 362
    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 367
    :cond_37
    iget p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    if-eq v4, p1, :cond_3c

    const/4 v2, 0x1

    .line 368
    :cond_3c
    iput v4, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return v2
.end method

.method public final size()I
    .registers 2

    .line 192
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->n:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->createBucket(I)[Ljava/lang/Object;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v4, v2, :cond_28

    aget-object v6, v1, v4

    if-nez v6, :cond_15

    goto :goto_25

    .line 227
    :cond_15
    array-length v7, v6

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_25

    aget-object v9, v6, v8

    if-nez v9, :cond_1e

    goto :goto_25

    .line 232
    :cond_1e
    aput-object v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_28
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    .line 241
    array-length v0, p1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 242
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 246
    :cond_f
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v3, v1, :cond_2f

    aget-object v5, v0, v3

    if-nez v5, :cond_1c

    goto :goto_2c

    .line 251
    :cond_1c
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v6, :cond_2c

    aget-object v8, v5, v7

    if-nez v8, :cond_25

    goto :goto_2c

    .line 258
    :cond_25
    aput-object v8, p1, v4

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2f
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 391
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "{}"

    return-object v0

    .line 393
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v2, :cond_3c

    aget-object v6, v1, v5

    if-nez v6, :cond_1d

    goto :goto_39

    .line 398
    :cond_1d
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v7, :cond_39

    aget-object v9, v6, v8

    if-nez v9, :cond_26

    goto :goto_39

    :cond_26
    if-eqz v4, :cond_2a

    const/4 v4, 0x0

    goto :goto_2f

    .line 401
    :cond_2a
    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_2f
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 405
    :cond_3c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTableString()Ljava/lang/String;
    .registers 12

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->buckets:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_45

    aget-object v5, v1, v4

    if-nez v5, :cond_16

    .line 413
    const-string v5, "null\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 416
    :cond_16
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    array-length v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v6, :cond_3d

    aget-object v9, v5, v8

    if-eqz v7, :cond_26

    const/4 v7, 0x0

    goto :goto_2b

    .line 420
    :cond_26
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    if-nez v9, :cond_33

    .line 421
    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 422
    :cond_33
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 424
    :cond_3d
    const-string v5, "]\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 426
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
