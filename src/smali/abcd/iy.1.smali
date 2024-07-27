.class final Labcd/iy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Labcd/hy;

.field private final j6:Labcd/Yx;


# direct methods
.method constructor <init>(Labcd/hy;Labcd/Yx;)V
    .registers 3

    iput-object p1, p0, Labcd/iy;->DW:Labcd/hy;

    iput-object p2, p0, Labcd/iy;->j6:Labcd/Yx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Labcd/iy;->DW:Labcd/hy;

    invoke-static {v0}, Labcd/hy;->j6(Labcd/hy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/iy;->DW:Labcd/hy;

    invoke-static {v0}, Labcd/hy;->DW(Labcd/hy;)Labcd/Ux;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/iy;->DW:Labcd/hy;

    invoke-static {v0}, Labcd/hy;->DW(Labcd/hy;)Labcd/Ux;

    move-result-object v0

    iget-object v2, p0, Labcd/iy;->j6:Labcd/Yx;

    invoke-interface {v0, v2}, Labcd/Ux;->j6(Labcd/Yx;)V

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
