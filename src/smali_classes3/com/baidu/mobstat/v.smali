.class Lcom/baidu/mobstat/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/v$a;
    }
.end annotation


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/v;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/mobstat/a;)V
    .registers 4

    .line 46
    const-class v0, Lcom/baidu/mobstat/v;

    monitor-enter v0

    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/v;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    const-class v0, Lcom/baidu/mobstat/v;

    monitor-exit v0

    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "isWifiAvailable = false, will not to update"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/v;

    monitor-exit v1

    throw v0

    .line 55
    :cond_1
    :try_start_2
    invoke-interface {p1, p0}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "check time, will not to update"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "can start update config"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/baidu/mobstat/v$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/v$a;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/a;)V

    .line 63
    invoke-virtual {v0}, Lcom/baidu/mobstat/v$a;->start()V

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/v;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 29
    sput-boolean p0, Lcom/baidu/mobstat/v;->a:Z

    return p0
.end method
