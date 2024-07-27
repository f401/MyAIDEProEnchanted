.class final Labcd/gy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Labcd/fy;


# direct methods
.method constructor <init>(Labcd/fy;)V
    .registers 2

    iput-object p1, p0, Labcd/gy;->j6:Labcd/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Labcd/gy;->j6:Labcd/fy;

    invoke-static {v0}, Labcd/fy;->j6(Labcd/fy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/gy;->j6:Labcd/fy;

    invoke-static {v0}, Labcd/fy;->DW(Labcd/fy;)Labcd/Tx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/gy;->j6:Labcd/fy;

    invoke-static {v0}, Labcd/fy;->DW(Labcd/fy;)Labcd/Tx;

    move-result-object v0

    invoke-interface {v0}, Labcd/Tx;->j6()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
