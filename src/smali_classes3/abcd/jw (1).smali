.class public abstract Labcd/jw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appfour/backbone/api/define/DefineAnalytics;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/lw;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Labcd/lw;

.field private j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/jw;->j6:Ljava/lang/Object;

    return-void
.end method

.method private XL()V
    .registers 3

    iget-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    if-eqz v0, :cond_29

    iget-object v1, p0, Labcd/jw;->DW:Ljava/util/List;

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/jw;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Labcd/jw;->FH:Ljava/util/Set;

    if-eqz v0, :cond_29

    iget-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    invoke-virtual {v1}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Labcd/jw;->DW:Ljava/util/List;

    iget-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Labcd/jw;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/lw;

    invoke-virtual {v1}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public defineEvent(Ljava/lang/String;)Lcom/appfour/backbone/api/define/DefineOccurrences;
    .registers 3

    invoke-direct {p0}, Labcd/jw;->XL()V

    new-instance v0, Labcd/lw;

    invoke-direct {v0, p1}, Labcd/lw;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    return-object v0
.end method

.method public j6(Labcd/jw$a;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jw$a;",
            "Ljava/util/List<",
            "Labcd/lw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/jw;->j6:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object p2, p0, Labcd/jw;->DW:Ljava/util/List;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Labcd/jw;->FH:Ljava/util/Set;

    iput-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    invoke-interface {p1}, Labcd/jw$a;->get()V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1d

    :try_start_12
    invoke-direct {p0}, Labcd/jw;->XL()V

    iput-object v1, p0, Labcd/jw;->DW:Ljava/util/List;

    iput-object v1, p0, Labcd/jw;->FH:Ljava/util/Set;

    iput-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    invoke-direct {p0}, Labcd/jw;->XL()V

    iput-object v1, p0, Labcd/jw;->DW:Ljava/util/List;

    iput-object v1, p0, Labcd/jw;->FH:Ljava/util/Set;

    iput-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    throw p1

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public onDefineEventError(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Labcd/ow;->j6(Labcd/lw;JLjava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/jw;->Hw:Labcd/lw;

    :cond_e
    return-void
.end method

.method public undefineEvent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Labcd/jw;->FH:Ljava/util/Set;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
