.class final Labcd/ky;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Labcd/jy;

.field private final j6:Labcd/Yx;


# direct methods
.method constructor <init>(Labcd/jy;Labcd/Yx;)V
    .registers 3

    iput-object p1, p0, Labcd/ky;->DW:Labcd/jy;

    iput-object p2, p0, Labcd/ky;->j6:Labcd/Yx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Labcd/ky;->DW:Labcd/jy;

    invoke-static {v0}, Labcd/jy;->j6(Labcd/jy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/ky;->DW:Labcd/jy;

    invoke-static {v0}, Labcd/jy;->DW(Labcd/jy;)Labcd/Vx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/ky;->DW:Labcd/jy;

    invoke-static {v0}, Labcd/jy;->DW(Labcd/jy;)Labcd/Vx;

    move-result-object v0

    iget-object v2, p0, Labcd/ky;->j6:Labcd/Yx;

    invoke-virtual {v2}, Labcd/Yx;->j6()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v2}, Labcd/Vx;->j6(Ljava/lang/Exception;)V

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
