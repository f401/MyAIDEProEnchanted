.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_11

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    :goto_d
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-void

    :cond_11
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    goto :goto_d
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_41

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_a
    sget-object v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_2e

    sget-object v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_3c

    aput-object v2, v1, v4

    aput-object v2, v1, v3

    :try_start_24
    sget v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    :goto_2d
    return-void

    :cond_2e
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3c

    :cond_31
    :goto_31
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_2d

    :catchall_3c
    move-exception v0

    :try_start_3d
    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3c

    throw v0

    :cond_41
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_47
    sget-object v0, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_70

    sget-object v1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_6b

    aput-object v2, v1, v4

    aput-object v2, v1, v3

    :try_start_61
    sget v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    goto :goto_2d

    :catchall_6b
    move-exception v0

    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_6b

    throw v0

    :cond_70
    :try_start_70
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6b

    goto :goto_31
.end method

.method private static binarySearchHashes([III)I
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 9

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_d
    sget v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v0, v5, :cond_2b

    const/4 v0, 0x0

    sget-object v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2f

    aput-object p0, p1, v3

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-lt v0, v4, :cond_23

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_23
    :try_start_23
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    :cond_2b
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_2f

    throw v0

    :cond_34
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_3b
    sget v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v0, v5, :cond_59

    const/4 v0, 0x0

    sget-object v1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_5d

    aput-object p0, p1, v3

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_4a
    if-lt v0, v4, :cond_51

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4a

    :cond_51
    :try_start_51
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    :cond_59
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    goto :goto_2e

    :catchall_5d
    move-exception v0

    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_5d

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v0, :cond_16

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_16
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ensureCapacity(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v2, v1

    if-ge v2, p1, :cond_20

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_1d

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_20
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v1, v0, :cond_25

    return-void

    :cond_25
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Landroidx/collection/SimpleArrayMap;

    if-eqz v2, :cond_42

    check-cast p1, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    move v2, v1

    :goto_18
    :try_start_18
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_34

    if-nez v5, :cond_32

    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    :cond_32
    move v0, v1

    goto :goto_4

    :cond_34
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_37} :catch_81
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_37} :catch_3f

    move-result v3

    if-nez v3, :cond_3c

    move v0, v1

    goto :goto_4

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_3f
    move-exception v0

    :goto_40
    move v0, v1

    goto :goto_4

    :cond_42
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_7d

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_54

    move v0, v1

    goto :goto_4

    :cond_54
    move v2, v1

    :goto_55
    :try_start_55
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_71

    if-nez v5, :cond_6f

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    :cond_6f
    move v0, v1

    goto :goto_4

    :cond_71
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_74} :catch_7f
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_74} :catch_7c

    move-result v3

    if-nez v3, :cond_79

    move v0, v1

    goto :goto_4

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :catch_7c
    move-exception v0

    :cond_7d
    :goto_7d
    move v0, v1

    goto :goto_4

    :catch_7f
    move-exception v0

    goto :goto_7d

    :catch_81
    move-exception v0

    goto :goto_40
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object p2, v1, v0

    :cond_e
    return-object p2
.end method

.method public hashCode()I
    .registers 10

    const/4 v1, 0x0

    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v7, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v0, 0x1

    move v2, v1

    move v3, v0

    move v4, v1

    :goto_b
    if-ge v2, v7, :cond_21

    aget-object v0, v6, v3

    aget v8, v5, v2

    if-nez v0, :cond_1c

    move v0, v1

    :goto_14
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    move v2, v0

    goto :goto_b

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    :cond_21
    return v4
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 8

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v0, v2, p2}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    :goto_1c
    if-ge v1, v2, :cond_35

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_35

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v0, v1

    goto :goto_5

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_35
    add-int/lit8 v0, v0, -0x1

    :goto_37
    if-ltz v0, :cond_4e

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4e

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_4e
    xor-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method indexOfNull()I
    .registers 6

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    :goto_19
    if-ge v1, v2, :cond_2e

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v1

    if-nez v3, :cond_2e

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2b

    move v0, v1

    goto :goto_5

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    :goto_30
    if-ltz v0, :cond_43

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v2, v2, v0

    if-nez v2, :cond_43

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_43
    xor-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    if-nez p1, :cond_17

    :goto_9
    if-ge v0, v1, :cond_24

    aget-object v3, v2, v0

    if-nez v3, :cond_12

    shr-int/lit8 v0, v0, 0x1

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_15
    add-int/lit8 v0, v0, 0x2

    :cond_17
    if-ge v0, v1, :cond_24

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    shr-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v3, 0x0

    iget v5, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v4

    move v2, v3

    :goto_d
    if-ltz v4, :cond_23

    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v2, v1

    aput-object p2, v2, v1

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v4

    goto :goto_d

    :cond_23
    xor-int/lit8 v4, v4, -0x1

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4c

    if-lt v5, v0, :cond_80

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    :cond_2f
    :goto_2f
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v5, v0, :cond_84

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v7, v0

    if-lez v7, :cond_49

    array-length v7, v1

    invoke-static {v1, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49
    invoke-static {v1, v6, v5}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_4c
    if-ge v4, v5, :cond_65

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v1, v4, 0x1

    sub-int v3, v5, v4

    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v4, 0x1

    shl-int/lit8 v1, v1, 0x1

    iget v6, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, v4

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_65
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v5, v0, :cond_8a

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v3, v1

    if-ge v4, v3, :cond_8a

    aput v2, v1, v4

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v4, 0x1

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v0, 0x0

    goto :goto_19

    :cond_80
    if-ge v5, v1, :cond_2f

    move v0, v1

    goto :goto_2f

    :cond_84
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_8a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public putAll(Landroidx/collection/SimpleArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_22

    if-lez v1, :cond_21

    iget-object v2, p1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    :cond_21
    return-void

    :cond_22
    :goto_22
    if-ge v0, v1, :cond_21

    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_19

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_14

    if-eqz p2, :cond_19

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_14
    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v2, v4

    iget v5, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_26

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v0, v2, v5}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v0, v1

    :goto_1f
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v5, v1, :cond_89

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-object v4

    :cond_26
    add-int/lit8 v2, v5, -0x1

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v7, v6

    if-le v7, v0, :cond_6a

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_6a

    if-le v5, v0, :cond_37

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    :cond_37
    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v5, v0, :cond_64

    if-lez p1, :cond_4e

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v6, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v7, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    if-ge p1, v2, :cond_62

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sub-int v8, v2, p1

    invoke-static {v6, v0, v1, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, v8, 0x1

    invoke-static {v7, v0, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_62
    :goto_62
    move v0, v2

    goto :goto_1f

    :cond_64
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_6a
    if-ge p1, v2, :cond_7e

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v1, p1, 0x1

    sub-int v6, v2, p1

    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v1, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7e
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object v8, v0, v1

    goto :goto_62

    :cond_89
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_19

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_14

    if-eqz p2, :cond_19

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_14
    invoke-virtual {p0, v0, p3}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p2, v1, v0

    return-object v2
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v0, v2, :cond_49

    if-lez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_43

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3d
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_43
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_49
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
