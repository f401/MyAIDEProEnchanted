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
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/S;

    const-wide v2, 0xd9b2feebc3101dbL

    const-wide v4, -0x2b16f3c29899f4e0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x366693f3b5e82f7cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/S;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x366693f3b5e82f7cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {p2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Stub;->j6(Landroid/os/IBinder;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v1}, Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->FH(Lcom/aide/ui/build/android/X;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->FH(Lcom/aide/ui/build/android/X;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/S;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1cd99555a9da04bL
    .end annotation

    const-wide v2, -0x13eee43a12d8c000L    # -3.59971906039764E212

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/S;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13eee43a12d8c000L    # -3.59971906039764E212

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "External Packaging service disconnected"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/S;->FH:Lcom/aide/ui/build/android/X;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/S;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
