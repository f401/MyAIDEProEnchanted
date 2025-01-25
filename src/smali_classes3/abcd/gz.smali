.class public Labcd/gz;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Labcd/_y;
.implements Labcd/hz;
.implements Labcd/lz;
.implements Labcd/Zy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "L_y<",
        "Labcd/lz;",
        ">;",
        "Labcd/hz;",
        "Labcd/lz;",
        "Labcd/Zy;"
    }
.end annotation


# instance fields
.field final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Labcd/gz;->DW(Ljava/lang/Object;)Labcd/_y;

    move-result-object p1

    iput-object p1, p0, Labcd/gz;->j6:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, p1}, Labcd/gz;->DW(Ljava/lang/Object;)Labcd/_y;

    move-result-object p1

    iput-object p1, p0, Labcd/gz;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/Object;)Labcd/_y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "L_y<",
            "Labcd/lz;",
            ">;:",
            "Labcd/hz;",
            ":",
            "Labcd/lz;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Labcd/jz;->DW(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p1, Labcd/_y;

    return-object p1

    :cond_9
    new-instance p1, Labcd/jz;

    invoke-direct {p1}, Labcd/jz;-><init>()V

    return-object p1
.end method

.method public DW()Z
    .registers 2

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/_y;

    invoke-interface {v0}, Labcd/_y;->DW()Z

    move-result v0

    return v0
.end method

.method public FH()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/lz;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/_y;

    invoke-interface {v0}, Labcd/_y;->FH()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Labcd/_y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "L_y<",
            "Labcd/lz;",
            ">;:",
            "Labcd/hz;",
            ":",
            "Labcd/lz;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/gz;->j6:Ljava/lang/Object;

    check-cast v0, Labcd/_y;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/lz;)V
    .registers 3

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/_y;

    invoke-interface {v0, p1}, Labcd/_y;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Labcd/lz;

    invoke-virtual {p0, p1}, Labcd/gz;->j6(Labcd/lz;)V

    return-void
.end method

.method public j6(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/lz;

    invoke-interface {v0, p1}, Labcd/lz;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public j6(Z)V
    .registers 3

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/lz;

    invoke-interface {v0, p1}, Labcd/lz;->j6(Z)V

    return-void
.end method

.method public j6()Z
    .registers 2

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/lz;

    invoke-interface {v0}, Labcd/lz;->j6()Z

    move-result v0

    return v0
.end method

.method public v5()Labcd/cz;
    .registers 2

    invoke-virtual {p0}, Labcd/gz;->Hw()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    invoke-interface {v0}, Labcd/hz;->v5()Labcd/cz;

    move-result-object v0

    return-object v0
.end method
