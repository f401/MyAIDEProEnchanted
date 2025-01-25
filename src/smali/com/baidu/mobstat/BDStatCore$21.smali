.class Lcom/baidu/mobstat/BDStatCore$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->doSendLogCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$21;->b:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$21;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 237
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 238
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->clearObservers()V

    .line 239
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$21;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->unRegister(Landroid/content/Context;)V

    goto :goto_2f

    .line 241
    :cond_1b
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$21;->b:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$21;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->doSendLogCheck(Landroid/content/Context;J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-void
.end method
