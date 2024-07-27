.class Labcd/Xy$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Xy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field DW:Ljava/lang/Runnable;

.field final j6:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/Xy$c;->j6:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Labcd/Ty;)V
    .registers 2

    invoke-direct {p0}, Labcd/Xy$c;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/Xy$c;->j6:Ljava/util/LinkedList;

    new-instance v1, Labcd/Yy;

    invoke-direct {v1, p0, p1}, Labcd/Yy;-><init>(Labcd/Xy$c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/Xy$c;->DW:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/Xy$c;->j6()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected j6()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/Xy$c;->j6:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Labcd/Xy$c;->DW:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Labcd/Xy;->Zo:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Labcd/Xy$c;->DW:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
