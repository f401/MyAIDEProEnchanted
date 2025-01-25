.class public final Lcom/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilderSpec$AccessDurationParser;,
        Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;,
        Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;,
        Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;,
        Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;,
        Lcom/google/common/cache/CacheBuilderSpec$LongParser;,
        Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;,
        Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;,
        Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;,
        Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;,
        Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;,
        Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;
    }
.end annotation


# static fields
.field private static final KEYS_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final KEY_VALUE_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final VALUE_PARSERS:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/CacheBuilderSpec$ValueParser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accessExpirationDuration:J

.field accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field concurrencyLevel:Ljava/lang/Integer;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field initialCapacity:Ljava/lang/Integer;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field keyStrength:Lcom/google/common/cache/LocalCache$Strength;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field maximumSize:Ljava/lang/Long;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field maximumWeight:Ljava/lang/Long;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field recordStats:Ljava/lang/Boolean;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field refreshDuration:J

.field refreshTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private final specification:Ljava/lang/String;

.field valueStrength:Lcom/google/common/cache/LocalCache$Strength;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field writeExpirationDuration:J

.field writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 88
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->KEYS_SPLITTER:Lcom/google/common/base/Splitter;

    .line 91
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->KEY_VALUE_SPLITTER:Lcom/google/common/base/Splitter;

    .line 95
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;-><init>()V

    .line 96
    const-string v2, "initialCapacity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;-><init>()V

    .line 97
    const-string v2, "maximumSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;-><init>()V

    .line 98
    const-string v2, "maximumWeight"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;-><init>()V

    .line 99
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;

    sget-object v2, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    .line 100
    const-string v2, "weakKeys"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;

    sget-object v2, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    .line 101
    const-string v2, "softValues"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;

    sget-object v2, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    .line 102
    const-string v2, "weakValues"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;-><init>()V

    .line 103
    const-string v2, "recordStats"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$AccessDurationParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$AccessDurationParser;-><init>()V

    .line 104
    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;-><init>()V

    .line 105
    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;-><init>()V

    .line 106
    const-string v2, "refreshAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;-><init>()V

    .line 107
    const-string v2, "refreshInterval"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->VALUE_PARSERS:Lcom/google/common/collect/ImmutableMap;

    .line 94
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec;->specification:Ljava/lang/String;

    .line 128
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 81
    invoke-static {p0, p1}, Lcom/google/common/cache/CacheBuilderSpec;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableCaching()Lcom/google/common/cache/CacheBuilderSpec;
    .registers 1

    .line 162
    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    return-object v0
.end method

.method private static durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .registers 5
    .param p2  # Ljava/util/concurrent/TimeUnit;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 283
    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 478
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    new-instance v5, Lcom/google/common/cache/CacheBuilderSpec;

    invoke-direct {v5, p0}, Lcom/google/common/cache/CacheBuilderSpec;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 138
    sget-object v0, Lcom/google/common/cache/CacheBuilderSpec;->KEYS_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec;->KEY_VALUE_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 140
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "blank key-value pair"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 141
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_66

    move v1, v3

    :goto_40
    const-string v2, "key-value pair %s with more than one equals sign"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec;->VALUE_PARSERS:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/CacheBuilderSpec$ValueParser;

    .line 149
    if-eqz v1, :cond_70

    move v2, v3

    :goto_56
    const-string v8, "unknown key %s"

    invoke-static {v2, v8, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_68

    const/4 v2, 0x0

    .line 152
    :goto_62
    invoke-interface {v1, v5, v0, v2}, Lcom/google/common/cache/CacheBuilderSpec$ValueParser;->parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_66
    move v1, v4

    .line 141
    goto :goto_40

    .line 151
    :cond_68
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_62

    .line 156
    :cond_6f
    return-object v5

    :cond_70
    move v2, v4

    goto :goto_56
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    if-ne p0, p1, :cond_5

    .line 259
    :cond_4
    :goto_4
    return v0

    .line 255
    :cond_5
    instance-of v2, p1, Lcom/google/common/cache/CacheBuilderSpec;

    if-nez v2, :cond_b

    move v0, v1

    .line 256
    goto :goto_4

    .line 258
    :cond_b
    check-cast p1, Lcom/google/common/cache/CacheBuilderSpec;

    .line 259
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    .line 260
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    .line 261
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    .line 262
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 263
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 264
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    .line 265
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 267
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 266
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 270
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 271
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 269
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 273
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 274
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 272
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_95
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 13

    .line 237
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v5, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v6, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    iget-wide v8, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v7, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 245
    invoke-static {v8, v9, v7}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v10, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 246
    invoke-static {v8, v9, v10}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v8

    iget-wide v10, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v9, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 247
    invoke-static {v10, v11, v9}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v9

    .line 237
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    invoke-static {v10}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method toCacheBuilder()Lcom/google/common/cache/CacheBuilder;
    .registers 6
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

    const/4 v4, 0x1

    .line 167
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->initialCapacity(I)Lcom/google/common/cache/CacheBuilder;

    .line 171
    :cond_10
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    if-eqz v1, :cond_1b

    .line 172
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumSize(J)Lcom/google/common/cache/CacheBuilder;

    .line 174
    :cond_1b
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    if-eqz v1, :cond_26

    .line 175
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumWeight(J)Lcom/google/common/cache/CacheBuilder;

    .line 177
    :cond_26
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_31

    .line 178
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;

    .line 180
    :cond_31
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_44

    .line 181
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-ne v1, v4, :cond_83

    .line 183
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    .line 189
    :cond_44
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_5a

    .line 190
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_8f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_89

    .line 192
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->softValues()Lcom/google/common/cache/CacheBuilder;

    .line 201
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 202
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->recordStats()Lcom/google/common/cache/CacheBuilder;

    .line 204
    :cond_67
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_70

    .line 205
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 207
    :cond_70
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_79

    .line 208
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 210
    :cond_79
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_82

    .line 211
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 214
    :cond_82
    return-object v0

    .line 186
    :cond_83
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_89
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_8f
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakValues()Lcom/google/common/cache/CacheBuilder;

    goto :goto_5a
.end method

.method public toParsableString()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec;->specification:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 232
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->toParsableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
