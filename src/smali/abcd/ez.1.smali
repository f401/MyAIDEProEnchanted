.class public abstract Labcd/ez;
.super Labcd/Xy;

# interfaces
.implements Labcd/_y;
.implements Labcd/hz;
.implements Labcd/lz;
.implements Labcd/Zy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ez$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "LXy",
        "<TParams;TProgress;TResult;>;",
        "L_y",
        "<",
        "Labcd/lz;",
        ">;",
        "Labcd/hz;",
        "Labcd/lz;",
        "Labcd/Zy;"
    }
.end annotation


# instance fields
.field private final Ws:Labcd/jz;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/Xy;-><init>()V

    new-instance v0, Labcd/jz;

    invoke-direct {v0}, Labcd/jz;-><init>()V

    iput-object v0, p0, Labcd/ez;->Ws:Labcd/jz;

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    invoke-virtual {p0}, Labcd/ez;->gn()Labcd/_y;

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
            "Ljava/util/Collection",
            "<",
            "Labcd/lz;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/ez;->gn()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/_y;

    invoke-interface {v0}, Labcd/_y;->FH()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p0, p1}, Labcd/cz;->j6(Labcd/hz;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public gn()Labcd/_y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "L_y",
            "<",
            "Labcd/lz;",
            ">;:",
            "Labcd/hz;",
            ":",
            "Labcd/lz;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/ez;->Ws:Labcd/jz;

    return-object v0
.end method

.method public j6(Labcd/lz;)V
    .registers 4

    invoke-virtual {p0}, Labcd/Xy;->Hw()Labcd/Xy$d;

    move-result-object v0

    sget-object v1, Labcd/Xy$d;->j6:Labcd/Xy$d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/ez;->gn()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/_y;

    invoke-interface {v0, p1}, Labcd/_y;->j6(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Labcd/lz;

    invoke-virtual {p0, p1}, Labcd/ez;->j6(Labcd/lz;)V

    return-void
.end method

.method public j6(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Labcd/ez;->gn()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/lz;

    invoke-interface {v0, p1}, Labcd/lz;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs j6(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    new-instance v0, Labcd/ez$a;

    invoke-direct {v0, p1, p0}, Labcd/ez$a;-><init>(Ljava/util/concurrent/Executor;Labcd/ez;)V

    invoke-super {p0, v0, p2}, Labcd/Xy;->j6(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Labcd/Xy;

    return-void
.end method

.method public j6(Z)V
    .registers 3

    invoke-virtual {p0}, Labcd/ez;->gn()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/lz;

    invoke-interface {v0, p1}, Labcd/lz;->j6(Z)V

    return-void
.end method

.method public j6()Z
    .registers 2

    invoke-virtual {p0}, Labcd/ez;->gn()Labcd/_y;

    move-result-object v0

    check-cast v0, Labcd/hz;

    check-cast v0, Labcd/lz;

    invoke-interface {v0}, Labcd/lz;->j6()Z

    move-result v0

    return v0
.end method
