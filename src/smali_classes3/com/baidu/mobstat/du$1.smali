.class final Lcom/baidu/mobstat/du$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/du;->a(Landroid/content/Context;Lcom/baidu/mobstat/dx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/dx;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dx;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/baidu/mobstat/du$1;->a:Lcom/baidu/mobstat/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 23
    :try_start_0
    invoke-static {p2}, Lcom/baidu/mobstat/dz$a;->a(Landroid/os/IBinder;)Lcom/baidu/mobstat/dz;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/baidu/mobstat/dz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/baidu/mobstat/du$1;->a:Lcom/baidu/mobstat/dx;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/baidu/mobstat/du$1;->a:Lcom/baidu/mobstat/dx;

    invoke-interface {v0}, Lcom/baidu/mobstat/dz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/dx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 38
    return-void
.end method
