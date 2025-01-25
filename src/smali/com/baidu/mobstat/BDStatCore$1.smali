.class Lcom/baidu/mobstat/BDStatCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V
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

    .line 103
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$1;->b:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$1;->b:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/PrefOperate;->loadMetaDataConfig(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$1;->b:Lcom/baidu/mobstat/BDStatCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Z)Z

    return-void
.end method
