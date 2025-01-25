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
    .registers 3

    .line 23
    :try_start_0
    invoke-static {p2}, Lcom/baidu/mobstat/dz$a;->a(Landroid/os/IBinder;)Lcom/baidu/mobstat/dz;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/baidu/mobstat/dz;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 25
    iget-object p2, p0, Lcom/baidu/mobstat/du$1;->a:Lcom/baidu/mobstat/dx;

    if-eqz p2, :cond_1e

    .line 26
    invoke-interface {p1}, Lcom/baidu/mobstat/dz;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/baidu/mobstat/dx;->a(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
