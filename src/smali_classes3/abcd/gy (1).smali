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

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Labcd/gy;->j6:Labcd/fy;

    invoke-static {v1}, Labcd/fy;->DW(Labcd/fy;)Labcd/Tx;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Labcd/gy;->j6:Labcd/fy;

    invoke-static {v1}, Labcd/fy;->DW(Labcd/fy;)Labcd/Tx;

    move-result-object v1

    invoke-interface {v1}, Labcd/Tx;->j6()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
