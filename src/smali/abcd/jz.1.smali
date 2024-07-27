.class public Labcd/jz;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_y;
.implements Labcd/hz;
.implements Labcd/lz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L_y",
        "<",
        "Labcd/lz;",
        ">;",
        "Labcd/hz;",
        "Labcd/lz;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final FH:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/lz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/jz;->j6:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Labcd/jz;->DW:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/jz;->FH:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static DW(Ljava/lang/Object;)Z
    .registers 5

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p0

    check-cast v0, Labcd/_y;

    move-object v1, v0

    move-object v0, p0

    check-cast v0, Labcd/lz;

    move-object v2, v0

    check-cast p0, Labcd/hz;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 3

    invoke-virtual {p0}, Labcd/jz;->FH()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lz;

    invoke-interface {v0}, Labcd/lz;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public FH()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/lz;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/jz;->j6:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p0, p1}, Labcd/cz;->j6(Labcd/hz;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/lz;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/jz;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Labcd/lz;

    invoke-virtual {p0, p1}, Labcd/jz;->j6(Labcd/lz;)V

    return-void
.end method

.method public j6(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Labcd/jz;->FH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(Z)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/jz;->DW:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/jz;->DW:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public v5()Labcd/cz;
    .registers 2

    sget-object v0, Labcd/cz;->DW:Labcd/cz;

    return-object v0
.end method
