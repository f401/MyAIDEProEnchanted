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
    .registers 5

    const-wide v0, -0x6e165979867cddf9L

    const-wide v2, 0x59b4dd6ba7882bfL

    const-class v4, Labcd/sk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    :try_start_0
    sget-boolean v0, Labcd/sk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5d36f0654f4328L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    const-string v1, "service connected."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_3c

    :try_start_1a
    iget-object v1, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {p2}, Labcd/qu$a;->j6(Landroid/os/IBinder;)Labcd/qu;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/yk;->j6(Labcd/yk;Labcd/qu;)Labcd/qu;

    iget-object v1, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Labcd/yk;->DW(Labcd/yk;Z)Z

    iget-object v1, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v1}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_39

    :try_start_33
    iget-object v0, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-virtual {v0}, Labcd/yk;->j6()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    return-void

    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/sk;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, 0x5d36f0654f4328L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x48702cdb83eb69L
    .end annotation

    const-wide v0, 0xe20c1f252709c0L

    :try_start_5
    sget-boolean v2, Labcd/sk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/sk;->FH:Labcd/yk;

    const-string v3, "service disconnected."

    invoke-virtual {v2, v3}, Labcd/yk;->VH(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/yk;->j6(Labcd/yk;Z)Z

    iget-object v2, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v2}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_30

    :try_start_20
    iget-object v4, p0, Labcd/sk;->FH:Labcd/yk;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Labcd/yk;->j6(Labcd/yk;Labcd/qu;)Labcd/qu;

    iget-object v4, p0, Labcd/sk;->FH:Labcd/yk;

    invoke-static {v4, v3}, Labcd/yk;->DW(Labcd/yk;Z)Z

    monitor-exit v2

    return-void

    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/sk;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method
