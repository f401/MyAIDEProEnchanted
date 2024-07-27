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
    .registers 9

    const/4 v1, 0x0

    .line 362
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    sget-object v4, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 369
    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    sget-object v4, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 370
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 383
    :cond_1
    sget-object v2, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 384
    const/4 v2, 0x1

    .line 387
    :goto_2
    iget-object v6, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v7, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v6, v7, v5, v2}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move v0, v1

    :cond_2
    move v3, v0

    .line 399
    goto :goto_0

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    add-int/lit8 v0, v3, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method
