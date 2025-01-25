.class public final Landroidj/support/v4/util/ArraySet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroidj/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroidj/support/v4/util/ArraySet;->INT:[I

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroidj/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidj/support/v4/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidj/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-nez p1, :cond_13

    sget-object v0, Landroidj/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    sget-object v0, Landroidj/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    :goto_f
    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    return-void

    :cond_13
    invoke-direct {p0, p1}, Landroidj/support/v4/util/ArraySet;->allocArrays(I)V

    goto :goto_f
.end method

.method public constructor <init>(Landroidj/support/v4/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidj/support/v4/util/ArraySet;->addAll(Landroidj/support/v4/util/ArraySet;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidj/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3f

    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-enter v0

    :try_start_a
    sget-object v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_2e

    sget-object v1, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    iput-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_3a

    aput-object v2, v1, v4

    aput-object v2, v1, v3

    :try_start_24
    sget v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-exit v0

    :goto_2d
    return-void

    :cond_2e
    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3a

    :cond_31
    :goto_31
    new-array v0, p1, [I

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_2d

    :catchall_3a
    move-exception v0

    :try_start_3b
    const-class v1, Landroidj/support/v4/util/ArraySet;

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3a

    throw v0

    :cond_3f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-enter v0

    :try_start_45
    sget-object v0, Landroidj/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_6e

    sget-object v1, Landroidj/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    iput-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidj/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_69

    aput-object v2, v1, v4

    aput-object v2, v1, v3

    :try_start_5f
    sget v0, Landroidj/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidj/support/v4/util/ArraySet;->sBaseCacheSize:I

    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-exit v0

    goto :goto_2d

    :catchall_69
    move-exception v0

    const-class v1, Landroidj/support/v4/util/ArraySet;

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_69

    throw v0

    :cond_6e
    :try_start_6e
    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_69

    goto :goto_31
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 9

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_32

    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-enter v0

    :try_start_d
    sget v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v0, v5, :cond_29

    const/4 v0, 0x0

    sget-object v1, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2d

    aput-object p0, p1, v3

    add-int/lit8 v0, p2, -0x1

    :goto_1a
    if-lt v0, v4, :cond_21

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_21
    :try_start_21
    sput-object p1, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    sget v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidj/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    :cond_29
    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-exit v0

    :cond_2c
    :goto_2c
    return-void

    :catchall_2d
    move-exception v0

    const-class v1, Landroidj/support/v4/util/ArraySet;

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_2d

    throw v0

    :cond_32
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-enter v0

    :try_start_39
    sget v0, Landroidj/support/v4/util/ArraySet;->sBaseCacheSize:I

    if-ge v0, v5, :cond_55

    const/4 v0, 0x0

    sget-object v1, Landroidj/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_59

    aput-object p0, p1, v3

    add-int/lit8 v0, p2, -0x1

    :goto_46
    if-lt v0, v4, :cond_4d

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_4d
    :try_start_4d
    sput-object p1, Landroidj/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    sget v0, Landroidj/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidj/support/v4/util/ArraySet;->sBaseCacheSize:I

    :cond_55
    const-class v0, Landroidj/support/v4/util/ArraySet;

    monitor-exit v0

    goto :goto_2c

    :catchall_59
    move-exception v0

    const-class v1, Landroidj/support/v4/util/ArraySet;

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_59

    throw v0
.end method

.method private getCollection()Landroidj/support/v4/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidj/support/v4/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mCollections:Landroidj/support/v4/util/MapCollections;

    if-nez v0, :cond_b

    new-instance v0, Landroidj/support/v4/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/util/ArraySet$1;-><init>(Landroidj/support/v4/util/ArraySet;)V

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mCollections:Landroidj/support/v4/util/MapCollections;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mCollections:Landroidj/support/v4/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 7

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-nez v2, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v0, v2, p2}, Landroidj/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-ltz v1, :cond_49

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    add-int/lit8 v0, v1, 0x1

    :goto_1a
    if-ge v0, v2, :cond_2f

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v0

    if-ne v3, p2, :cond_2f

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_46

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_46

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_46
    xor-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_49
    move v0, v1

    goto :goto_5
.end method

.method private indexOfNull()I
    .registers 5

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-nez v2, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidj/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-ltz v1, :cond_3e

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3e

    add-int/lit8 v0, v1, 0x1

    :goto_17
    if-ge v0, v2, :cond_28

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v0

    if-nez v3, :cond_28

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    add-int/lit8 v1, v1, -0x1

    :goto_2a
    if-ltz v1, :cond_3b

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    aget v2, v2, v1

    if-nez v2, :cond_3b

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3e

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_3b
    xor-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_3e
    move v0, v1

    goto :goto_5
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_f

    invoke-direct {p0}, Landroidj/support/v4/util/ArraySet;->indexOfNull()I

    move-result v1

    move v4, v0

    move v5, v1

    :goto_c
    if-ltz v5, :cond_22

    :goto_e
    return v0

    :cond_f
    iget-boolean v1, p0, Landroidj/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_1d

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :goto_17
    invoke-direct {p0, p1, v1}, Landroidj/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v5

    move v4, v1

    goto :goto_c

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_22
    xor-int/lit8 v5, v5, -0x1

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget-object v6, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v6, v6

    if-lt v1, v6, :cond_53

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-lt v1, v2, :cond_7f

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :goto_36
    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidj/support/v4/util/ArraySet;->allocArrays(I)V

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v1, v1

    if-lez v1, :cond_4e

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v6, v2

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v2, v3, v0}, Landroidj/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_53
    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-ge v5, v0, :cond_6f

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v2, v5, 0x1

    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v3, v5

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, v5, 0x1

    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v3, v5

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6f
    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    aput v4, v0, v5

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v0, v5

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    const/4 v0, 0x1

    goto :goto_e

    :cond_7f
    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-lt v1, v3, :cond_85

    move v1, v2

    goto :goto_36

    :cond_85
    move v1, v3

    goto :goto_36
.end method

.method public addAll(Landroidj/support/v4/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidj/support/v4/util/ArraySet;->ensureCapacity(I)V

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-nez v2, :cond_20

    if-lez v1, :cond_1f

    iget-object v2, p1, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    :cond_1f
    return-void

    :cond_20
    :goto_20
    if-ge v0, v1, :cond_1f

    invoke-virtual {p1, v0}, Landroidj/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidj/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArraySet;->ensureCapacity(I)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidj/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-nez p1, :cond_12

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-boolean v0, p0, Landroidj/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1b

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_20
    if-lez v1, :cond_2e

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-le v2, v0, :cond_2e

    invoke-virtual {p0, p1}, Landroidj/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-void

    :cond_2e
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    aput v0, v2, v1

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v0, v1

    goto :goto_2d
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroidj/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Landroidj/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    sget-object v0, Landroidj/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    :cond_18
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public ensureCapacity(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_24

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidj/support/v4/util/ArraySet;->allocArrays(I)V

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-lez v2, :cond_1f

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroidj/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_31

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, Landroidj/support/v4/util/ArraySet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    move v2, v1

    :goto_18
    :try_start_18
    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroidj/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_23} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_23} :catch_2e

    move-result v3

    if-nez v3, :cond_28

    move v0, v1

    goto :goto_4

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_2b
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_2e
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    move v0, v1

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_10

    aget v1, v3, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_10
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-direct {p0}, Landroidj/support/v4/util/ArraySet;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    iget-boolean v0, p0, Landroidj/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_f
    invoke-direct {p0, p1, v0}, Landroidj/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_f
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/util/ArraySet;->getCollection()Landroidj/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public removeAll(Landroidj/support/v4/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget v2, p1, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_12

    invoke-virtual {p1, v1}, Landroidj/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidj/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-eq v3, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidj/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_20

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v2, v3}, Landroidj/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Landroidj/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    sget-object v0, Landroidj/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iput v4, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    :cond_1f
    :goto_1f
    return-object v1

    :cond_20
    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-le v2, v0, :cond_6b

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_6b

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-le v2, v0, :cond_39

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_39
    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidj/support/v4/util/ArraySet;->allocArrays(I)V

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-lez p1, :cond_52

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_52
    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v0, :cond_1f

    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget v5, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v3, v0, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_6b
    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v0, :cond_8d

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8d
    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_1f
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_18

    iget-object v2, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, v1}, Landroidj/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_18
    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v0, p1

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_28

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_16
    iget-object v1, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-le v1, v2, :cond_27

    iget v1, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_27
    return-object v0

    :cond_28
    move-object v0, p1

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidj/support/v4/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    mul-int/lit8 v0, v0, 0xe

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Landroidj/support/v4/util/ArraySet;->mSize:I

    if-ge v0, v2, :cond_35

    if-lez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2f
    const-string v2, "(this Set)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_35
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
