.class public abstract Labcd/jw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appfour/backbone/api/define/DefineAnalytics;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/lw;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/jw;->DW:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/jw;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/jw;->FH:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    invoke-virtual {v1}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/jw;->DW:Ljava/util/List;

    iget-object v1, p0, Labcd/jw;->Hw:Labcd/lw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Labcd/jw;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lw;

    invoke-virtual {v0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jw$a;",
            "Ljava/util/List",
            "<",
            "Labcd/lw;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Labcd/jw;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Labcd/jw;->DW:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/jw;->FH:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    invoke-interface {p1}, Labcd/jw$a;->get()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Labcd/jw;->XL()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jw;->DW:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jw;->FH:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Labcd/jw;->XL()V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/jw;->DW:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/jw;->FH:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/jw;->Hw:Labcd/lw;

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onDefineEventError(Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Labcd/ow;->j6(Labcd/lw;JLjava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jw;->Hw:Labcd/lw;

    :cond_0
    return-void
.end method

.method public undefineEvent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Labcd/jw;->FH:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
