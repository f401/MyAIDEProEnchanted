.class public final Lcom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilder$NullListener;,
        Lcom/google/common/cache/CacheBuilder$OneWeigher;
    }
.end annotation

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
.field static final CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_REFRESH_NANOS:I = 0x0

.field static final EMPTY_STATS:Lcom/google/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lcom/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field keyStrength:Lcom/google/common/cache/LocalCache$Strength;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field statsCounterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lcom/google/common/base/Ticker;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field valueStrength:Lcom/google/common/cache/LocalCache$Strength;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher",
            "<-TK;-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-wide/16 v2, 0x0

    .line 162
    new-instance v0, Lcom/google/common/cache/CacheBuilder$1;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$1;-><init>()V

    .line 163
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 185
    new-instance v1, Lcom/google/common/cache/CacheStats;

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v2

    move-wide v12, v2

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v1, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    .line 187
    new-instance v0, Lcom/google/common/cache/CacheBuilder$2;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 211
    new-instance v0, Lcom/google/common/cache/CacheBuilder$3;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    .line 219
    const-class v0, Lcom/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 225
    iput v1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 226
    iput v1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 227
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 228
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 234
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 235
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 236
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 244
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 246
    return-void
.end method

.method private checkNonLoadingCache()V
    .registers 5

    .line 859
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 860
    return-void

    .line 859
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private checkWeightWithWeigher()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 863
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v2, :cond_16

    .line 864
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    :goto_e
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 874
    :cond_13
    :goto_13
    return-void

    :cond_14
    move v0, v1

    .line 864
    goto :goto_e

    .line 866
    :cond_16
    iget-boolean v2, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v2, :cond_28

    .line 867
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    :goto_20
    const-string v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_13

    :cond_26
    move v0, v1

    goto :goto_20

    .line 869
    :cond_28
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    .line 870
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static from(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilderSpec;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->toCacheBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->lenientParsing()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/cache/CacheBuilder;->from(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/common/cache/CacheBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/common/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Cache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .line 853
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 854
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 855
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK1;TV1;>;)",
            "Lcom/google/common/cache/LoadingCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .line 836
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 837
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_8
    const-string v3, "concurrency level was already set to %s"

    iget v4, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 393
    if-lez p1, :cond_19

    :goto_11
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 394
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 395
    return-object p0

    :cond_17
    move v0, v2

    .line 389
    goto :goto_8

    :cond_19
    move v1, v2

    .line 393
    goto :goto_11
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_24

    move v0, v1

    :goto_b
    const-string v3, "expireAfterAccess was already set to %s ns"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 686
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_26

    :goto_18
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v1, v0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 687
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 688
    return-object p0

    :cond_24
    move v0, v2

    .line 682
    goto :goto_b

    :cond_26
    move v1, v2

    .line 686
    goto :goto_18
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 645
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_24

    move v0, v1

    :goto_b
    const-string v3, "expireAfterWrite was already set to %s ns"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 649
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_26

    :goto_18
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v1, v0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 650
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 651
    return-object p0

    :cond_24
    move v0, v2

    .line 645
    goto :goto_b

    :cond_26
    move v1, v2

    .line 649
    goto :goto_18
.end method

.method getConcurrencyLevel()I
    .registers 3

    .line 399
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x4

    :cond_6
    return v0
.end method

.method getExpireAfterAccessNanos()J
    .registers 5

    .line 692
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const-wide/16 v0, 0x0

    :cond_a
    return-wide v0
.end method

.method getExpireAfterWriteNanos()J
    .registers 5

    .line 655
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const-wide/16 v0, 0x0

    :cond_a
    return-wide v0
.end method

.method getInitialCapacity()I
    .registers 3

    .line 354
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x10

    :cond_7
    return v0
.end method

.method getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .registers 5

    const-wide/16 v0, 0x0

    .line 524
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_f

    .line 527
    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_16

    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    goto :goto_e

    :cond_16
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    goto :goto_e
.end method

.method getRefreshNanos()J
    .registers 5

    .line 734
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const-wide/16 v0, 0x0

    :cond_a
    return-wide v0
.end method

.method getRemovalListener()Lcom/google/common/cache/RemovalListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/RemovalListener",
            "<TK1;TV1;>;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    .line 797
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalListener;

    .line 796
    return-object v0
.end method

.method getStatsCounterSupplier()Lcom/google/common/base/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Lcom/google/common/base/Ticker;
    .registers 3

    .line 754
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    if-eqz v0, :cond_5

    .line 757
    :goto_4
    return-object v0

    :cond_5
    if-eqz p1, :cond_c

    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    goto :goto_4
.end method

.method getValueEquivalence()Lcom/google/common/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getValueStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/cache/LocalCache$Strength;
    .registers 3

    .line 621
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lcom/google/common/cache/Weigher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Weigher",
            "<TK1;TV1;>;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Weigher;

    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_8
    const-string v3, "initial capacity was already set to %s"

    iget v4, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 348
    if-ltz p1, :cond_19

    :goto_11
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 349
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 350
    return-object p0

    :cond_17
    move v0, v2

    .line 344
    goto :goto_8

    :cond_19
    move v1, v2

    .line 348
    goto :goto_11
.end method

.method isRecordingStats()Z
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    sget-object v1, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "key equivalence was already set to %s"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 303
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 304
    return-object p0

    .line 302
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method

.method lenientParsing()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 289
    return-object p0
.end method

.method public maximumSize(J)Lcom/google/common/cache/CacheBuilder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_38

    move v0, v1

    :goto_b
    const-string v3, "maximum size was already set to %s"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 426
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3a

    move v0, v1

    :goto_19
    const-string v3, "maximum weight was already set to %s"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 430
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_3c

    move v0, v1

    :goto_25
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 431
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3e

    :goto_30
    const-string v0, "maximum size must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 432
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 433
    return-object p0

    :cond_38
    move v0, v2

    .line 424
    goto :goto_b

    :cond_3a
    move v0, v2

    .line 426
    goto :goto_19

    :cond_3c
    move v0, v2

    .line 430
    goto :goto_25

    :cond_3e
    move v1, v2

    .line 431
    goto :goto_30
.end method

.method public maximumWeight(J)Lcom/google/common/cache/CacheBuilder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    move v0, v1

    :goto_b
    const-string v3, "maximum weight was already set to %s"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 469
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_30

    move v0, v1

    :goto_19
    const-string v3, "maximum size was already set to %s"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 471
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 472
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_32

    :goto_28
    const-string v0, "maximum weight must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 473
    return-object p0

    :cond_2e
    move v0, v2

    .line 465
    goto :goto_b

    :cond_30
    move v0, v2

    .line 469
    goto :goto_19

    :cond_32
    move v1, v2

    .line 472
    goto :goto_28
.end method

.method public recordStats()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 810
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 811
    return-object p0
.end method

.method public refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_27

    move v0, v1

    :goto_e
    const-string v3, "refresh was already set to %s ns"

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 728
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_29

    :goto_1b
    const-string v0, "duration must be positive: %s %s"

    invoke-static {v1, v0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 729
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 730
    return-object p0

    :cond_27
    move v0, v2

    .line 727
    goto :goto_e

    :cond_29
    move v1, v2

    .line 728
    goto :goto_1b
.end method

.method public removalListener(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/CacheBuilder;
    .registers 3
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/RemovalListener",
            "<-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 788
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalListener;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 790
    return-object p0

    .line 784
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Key strength was already set to %s"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 559
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 560
    return-object p0

    .line 558
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method

.method setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Value strength was already set to %s"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 616
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 617
    return-object p0

    .line 615
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public softValues()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 611
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ticker(Lcom/google/common/base/Ticker;)Lcom/google/common/cache/CacheBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Ticker;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 749
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Ticker;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 750
    return-object p0

    .line 748
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    .line 882
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 883
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    if-eq v1, v3, :cond_10

    .line 884
    const-string v2, "initialCapacity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 886
    :cond_10
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v3, :cond_19

    .line 887
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 889
    :cond_19
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_24

    .line 890
    const-string v1, "maximumSize"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 892
    :cond_24
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2f

    .line 893
    const-string v1, "maximumWeight"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 895
    :cond_2f
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4d

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expireAfterWrite"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 898
    :cond_4d
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6b

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expireAfterAccess"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 901
    :cond_6b
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_7c

    .line 902
    const-string v2, "keyStrength"

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 904
    :cond_7c
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_8d

    .line 905
    const-string v2, "valueStrength"

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 907
    :cond_8d
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_96

    .line 908
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 910
    :cond_96
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_9f

    .line 911
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 913
    :cond_9f
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    if-eqz v1, :cond_a8

    .line 914
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 916
    :cond_a8
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "value equivalence was already set to %s"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 324
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 325
    return-object p0

    .line 322
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public weakKeys()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 554
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 586
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weigher(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/CacheBuilder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/Weigher",
            "<-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_26

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 509
    iget-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_1d

    .line 510
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_28

    :goto_16
    const-string v0, "weigher can not be combined with maximum size"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v1, v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 518
    :cond_1d
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Weigher;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 520
    return-object p0

    :cond_26
    move v0, v2

    .line 508
    goto :goto_7

    :cond_28
    move v1, v2

    .line 510
    goto :goto_16
.end method
