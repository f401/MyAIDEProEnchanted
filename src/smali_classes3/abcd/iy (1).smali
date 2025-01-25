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

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Labcd/iy;->DW:Labcd/hy;

    invoke-static {v1}, Labcd/hy;->DW(Labcd/hy;)Labcd/Ux;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Labcd/iy;->DW:Labcd/hy;

    invoke-static {v1}, Labcd/hy;->DW(Labcd/hy;)Labcd/Ux;

    move-result-object v1

    iget-object v2, p0, Labcd/iy;->j6:Labcd/Yx;

    invoke-interface {v1, v2}, Labcd/Ux;->j6(Labcd/Yx;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method
