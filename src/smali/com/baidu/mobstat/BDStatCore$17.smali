.class Lcom/baidu/mobstat/BDStatCore$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V
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

    .line 1040
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$17;->b:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$17;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$17;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1045
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/mobstat/s;->a(I)Lcom/baidu/mobstat/s;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$17;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/s;->a(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_14

    .line 1051
    :catchall_13
    move-exception v0

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$17;->b:Lcom/baidu/mobstat/BDStatCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;Z)Z

    return-void
.end method
