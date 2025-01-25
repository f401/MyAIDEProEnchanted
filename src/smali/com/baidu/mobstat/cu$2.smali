.class Lcom/baidu/mobstat/cu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cu;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/cu;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cu;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/baidu/mobstat/cu$2;->a:Lcom/baidu/mobstat/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/baidu/mobstat/cu$2;->a:Lcom/baidu/mobstat/cu;

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->b(Lcom/baidu/mobstat/cu;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/cu$2;->a:Lcom/baidu/mobstat/cu;

    .line 302
    invoke-static {v0}, Lcom/baidu/mobstat/cu;->c(Lcom/baidu/mobstat/cu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/cu$2;->a:Lcom/baidu/mobstat/cu;

    invoke-static {v1}, Lcom/baidu/mobstat/cu;->d(Lcom/baidu/mobstat/cu;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/baidu/mobstat/cu$2;->a:Lcom/baidu/mobstat/cu;

    invoke-static {v1, v3}, Lcom/baidu/mobstat/cu;->a(Lcom/baidu/mobstat/cu;Z)Z

    if-eqz v0, :cond_31

    .line 306
    iget-object v0, p0, Lcom/baidu/mobstat/cu$2;->a:Lcom/baidu/mobstat/cu;

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->c(Lcom/baidu/mobstat/cu;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cu;->a(Lcom/baidu/mobstat/cu;Ljava/lang/String;)Ljava/lang/String;

    :cond_31
    return-void
.end method
