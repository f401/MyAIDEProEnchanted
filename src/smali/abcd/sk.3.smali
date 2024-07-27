.class Labcd/sk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yk;->u7()V
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
.field final FH:Labcd/yk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/sk;

    const-wide v2, -0x6e165979867cddf9L

    const-wide v4, 0x59b4dd6ba7882bfL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk;)V
    .registers 2

    iput-object p1, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x546c425adef4c1dL
    .end annotation

    const-wide v2, 0x5d36f0654f4328L

    :try_start_0
    sget-boolean v0, Labcd/sk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5d36f0654f4328L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const-string v1, "service connected."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {p2}, Labcd/qu$a;->j6(Landroid/os/IBinder;)Labcd/qu;

    move-result-object v4

    invoke-static {v0, v4}, Labcd/yk;->j6(Labcd/yk;Labcd/qu;)Labcd/qu;

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Labcd/yk;->DW(Labcd/yk;Z)Z

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-virtual {v0}, Labcd/yk;->j6()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sk;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x48702cdb83eb69L
    .end annotation

    const-wide v4, 0xe20c1f252709c0L

    :try_start_0
    sget-boolean v0, Labcd/sk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe20c1f252709c0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const-string v1, "service disconnected."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/yk;->j6(Labcd/yk;Z)Z

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->j6(Labcd/yk;Labcd/qu;)Labcd/qu;

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->DW(Labcd/yk;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
