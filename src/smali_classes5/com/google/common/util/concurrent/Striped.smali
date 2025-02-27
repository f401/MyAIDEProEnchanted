.class public abstract Lcom/google/common/util/concurrent/Striped;
.super Ljava/lang/Object;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$CompactStriped;,
        Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;,
        Lcom/google/common/util/concurrent/Striped$PaddedLock;,
        Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;,
        Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;,
        Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;,
        Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;,
        Lcom/google/common/util/concurrent/Striped$WeakSafeCondition;,
        Lcom/google/common/util/concurrent/Striped$WeakSafeLock;,
        Lcom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ALL_SET:I = -0x1

.field private static final LARGE_LAZY_CUTOFF:I = 0x400

.field private static final READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEAK_SAFE_READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 298
    new-instance v0, Lcom/google/common/util/concurrent/Striped$5;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$5;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Striped;->READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 306
    new-instance v0, Lcom/google/common/util/concurrent/Striped$6;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$6;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Striped;->WEAK_SAFE_READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Striped$1;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped;-><init>()V

    return-void
.end method

.method static synthetic access$200(I)I
    .registers 2

    .line 85
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->ceilToPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)I
    .registers 2

    .line 85
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->smear(I)I

    move-result v0

    return v0
.end method

.method private static ceilToPowerOfTwo(I)I
    .registers 3

    .line 543
    const/4 v0, 0x1

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method static custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/Striped",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/google/common/util/concurrent/Striped$CompactStriped;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V

    return-object v0
.end method

.method private static lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/Striped",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .line 233
    const/16 v0, 0x400

    if-ge p0, v0, :cond_a

    new-instance v0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    goto :goto_9
.end method

.method public static lazyWeakLock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/google/common/util/concurrent/Striped$2;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$2;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    move-result-object v0

    return-object v0
.end method

.method public static lazyWeakReadWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/google/common/util/concurrent/Striped;->WEAK_SAFE_READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    move-result-object v0

    return-object v0
.end method

.method public static lazyWeakSemaphore(II)Lcom/google/common/util/concurrent/Striped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/google/common/util/concurrent/Striped$4;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Striped$4;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    move-result-object v0

    return-object v0
.end method

.method public static lock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/google/common/util/concurrent/Striped$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    move-result-object v0

    return-object v0
.end method

.method public static readWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/common/util/concurrent/Striped;->READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    move-result-object v0

    return-object v0
.end method

.method public static semaphore(II)Lcom/google/common/util/concurrent/Striped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/google/common/util/concurrent/Striped$3;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Striped$3;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    move-result-object v0

    return-object v0
.end method

.method private static smear(I)I
    .registers 3

    .line 556
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    .line 557
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public bulkGet(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/Iterable",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 141
    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 142
    array-length v0, v3

    if-nez v0, :cond_f

    .line 143
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 181
    :goto_e
    return-object v0

    .line 145
    :cond_f
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 146
    :goto_13
    array-length v2, v3

    if-ge v0, v2, :cond_21

    .line 147
    aget-object v2, v3, v0

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Striped;->indexFor(Ljava/lang/Object;)I

    move-result v2

    aput v2, v4, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 149
    :cond_21
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 151
    aget v0, v4, v1

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 153
    const/4 v1, 0x1

    :goto_2d
    array-length v2, v3

    if-ge v1, v2, :cond_45

    .line 154
    aget v2, v4, v1

    .line 155
    if-ne v2, v0, :cond_3d

    .line 156
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v3, v2

    aput-object v2, v3, v1

    .line 153
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 158
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    move v0, v2

    .line 159
    goto :goto_3a

    .line 180
    :cond_45
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method abstract indexFor(Ljava/lang/Object;)I
.end method

.method public abstract size()I
.end method
