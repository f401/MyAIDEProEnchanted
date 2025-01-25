.class Lcom/baidu/mobstat/LogSender$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 362
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 369
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    const/4 v1, 0x0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 378
    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_24

    .line 383
    :cond_42
    sget-object v4, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 387
    iget-object v5, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v6, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v5, v6, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 389
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_23

    .line 392
    :cond_58
    iget-object v4, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_63

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_24

    goto :goto_64

    :catch_63
    move-exception v0

    :cond_64
    :goto_64
    return-void
.end method
