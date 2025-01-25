.class final Labcd/my;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Labcd/ly;

.field private final j6:Labcd/Yx;


# direct methods
.method constructor <init>(Labcd/ly;Labcd/Yx;)V
    .registers 3

    iput-object p1, p0, Labcd/my;->DW:Labcd/ly;

    iput-object p2, p0, Labcd/my;->j6:Labcd/Yx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Labcd/my;->DW:Labcd/ly;

    invoke-static {v0}, Labcd/ly;->j6(Labcd/ly;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Labcd/my;->DW:Labcd/ly;

    invoke-static {v1}, Labcd/ly;->DW(Labcd/ly;)Labcd/Wx;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Labcd/my;->DW:Labcd/ly;

    invoke-static {v1}, Labcd/ly;->DW(Labcd/ly;)Labcd/Wx;

    move-result-object v1

    iget-object v2, p0, Labcd/my;->j6:Labcd/Yx;

    invoke-virtual {v2}, Labcd/Yx;->DW()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/Wx;->j6(Ljava/lang/Object;)V

    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method
