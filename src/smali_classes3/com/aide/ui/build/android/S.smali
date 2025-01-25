.class Lcom/aide/ui/build/android/S;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/ui/build/android/X;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xd9b2feebc3101dbL

    const-wide v2, -0x2b16f3c29899f4e0L

    const-class v4, Lcom/aide/ui/build/android/S;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/X;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x8edc323a0d9fa21L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/S;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x366693f3b5e82f7cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {p2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Stub;->j6(Landroid/os/IBinder;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_4e

    if-eqz v0, :cond_31

    :try_start_1d
    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v1}, Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2c} :catch_2d
    .catchall {:try_start_1d .. :try_end_2c} :catchall_4e

    goto :goto_31

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->FH(Lcom/aide/ui/build/android/X;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->FH(Lcom/aide/ui/build/android/X;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_4e

    goto :goto_31

    :cond_4d
    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/S;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, 0x366693f3b5e82f7cL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    goto :goto_61

    :goto_60
    throw v0

    :goto_61
    goto :goto_60
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1cd99555a9da04bL
    .end annotation

    const-wide v0, -0x13eee43a12d8c000L  # -3.59971906039764E212

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/S;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "External Packaging service disconnected"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/S;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method
