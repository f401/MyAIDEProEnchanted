.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    if-eqz p3, :cond_40

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v1

    :goto_c
    const-string v3, "value of key %s omitted"

    invoke-static {v0, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 417
    :try_start_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 419
    const/16 v3, 0x64

    if-eq v0, v3, :cond_70

    const/16 v3, 0x68

    if-eq v0, v3, :cond_6d

    const/16 v3, 0x6d

    if-eq v0, v3, :cond_6a

    const/16 v3, 0x73

    if-ne v0, v3, :cond_42

    .line 430
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 422
    :goto_2d
    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 439
    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V

    .line 443
    return-void

    :cond_40
    move v0, v2

    .line 415
    goto :goto_c

    .line 433
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 434
    const-string v3, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_57} :catch_57

    .line 440
    :catch_57
    move-exception v0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "key %s value set to %s, must be integer"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-static {v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_6a
    :try_start_6a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_2d

    .line 424
    :cond_6d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_2d

    .line 421
    :cond_70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_72} :catch_57

    goto :goto_2d
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
