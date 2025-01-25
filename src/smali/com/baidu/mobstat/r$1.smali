.class Lcom/baidu/mobstat/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Lcom/baidu/mobstat/r;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/r;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 69
    iput-object p1, p0, Lcom/baidu/mobstat/r$1;->c:Lcom/baidu/mobstat/r;

    iput-object p2, p0, Lcom/baidu/mobstat/r$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/r$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/r$1;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/baidu/mobstat/r$1;->c:Lcom/baidu/mobstat/r;

    iget-object v2, p0, Lcom/baidu/mobstat/r$1;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/baidu/mobstat/r;->a(Lcom/baidu/mobstat/r;Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/mobstat/r$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/baidu/mobstat/r$1;->c:Lcom/baidu/mobstat/r;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/r;->a(Lcom/baidu/mobstat/r;Landroid/content/Context;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_20

    :catchall_18
    move-exception v0

    .line 83
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method
