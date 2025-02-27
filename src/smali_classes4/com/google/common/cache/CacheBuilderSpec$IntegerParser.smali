.class abstract Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;
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
    name = "IntegerParser"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    const-string v3, "value of key %s omitted"

    invoke-static {v0, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 294
    :try_start_10
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;->parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_1a

    .line 298
    return-void

    :cond_18
    move v0, v2

    .line 292
    goto :goto_b

    .line 295
    :catch_1a
    move-exception v0

    .line 296
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key %s value set to %s, must be integer"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    invoke-static {v4, v5}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
.end method
