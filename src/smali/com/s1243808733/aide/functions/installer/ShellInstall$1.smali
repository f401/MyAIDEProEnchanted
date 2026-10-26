.class Lcom/s1243808733/aide/functions/installer/ShellInstall$1;
.super Ljava/lang/Object;
.source "ShellInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/functions/installer/ShellInstall;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/functions/installer/ShellInstall;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/functions/installer/ShellInstall;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$1;->this$0:Lcom/s1243808733/aide/functions/installer/ShellInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/aide/ui/MainActivity;->FH(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-static {v0}, Lcom/aide/ui/MainActivity;->FH(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 100
    :catchall_0
    move-exception v0

    .line 102
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
