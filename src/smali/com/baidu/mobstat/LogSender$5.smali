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
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

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

    move-result-object v2

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    :cond_0
    return-void

    .line 383
    :cond_1
    sget-object v4, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 387
    iget-object v5, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v6, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v5, v6, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 389
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 392
    :cond_2
    iget-object v4, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_1
.end method
