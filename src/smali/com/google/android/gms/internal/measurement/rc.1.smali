.class final Lcom/google/android/gms/internal/measurement/rc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Cc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/Cc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/measurement/Uc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Uc",
            "<**>;"
        }
    .end annotation
.end field

.field private final FH:Z

.field private final Hw:Lcom/google/android/gms/internal/measurement/tb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/tb",
            "<*>;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/measurement/lc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/lc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/Uc",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/tb",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/lc;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/rc;->j6:Lcom/google/android/gms/internal/measurement/lc;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/rc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/Uc",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/tb",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ")",
            "Lcom/google/android/gms/internal/measurement/rc",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/rc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/rc;-><init>(Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/lc;)V

    return-object v0
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->Zo(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/tb;->FH(Ljava/lang/Object;)V

    return-void
.end method

.method public final DW(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/wb;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final FH(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/Uc;->v5(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/wb;->u7()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final Hw(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wb;->Hw()Z

    move-result v0

    return v0
.end method

.method public final j6(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/wb;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final j6()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->j6:Lcom/google/android/gms/internal/measurement/lc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lc;->v5()Lcom/google/android/gms/internal/measurement/mc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/mc;->Ws()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Bc;Lcom/google/android/gms/internal/measurement/sb;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/Bc;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            ")V"
        }
    .end annotation

    const v10, 0x7fffffff

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/measurement/Uc;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/measurement/tb;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v7

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->j6()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->getTag()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/rc;->j6:Lcom/google/android/gms/internal/measurement/lc;

    ushr-int/lit8 v0, v0, 0x3

    invoke-virtual {v5, p3, v2, v0}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/lc;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v6, p2}, Lcom/google/android/gms/internal/measurement/Uc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Bc;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v5, p2, v0, p3, v7}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/Bc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :try_start_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->Ev()Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    move-object v0, v1

    move-object v2, v1

    :cond_5
    :goto_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->j6()I

    move-result v8

    if-eq v8, v10, :cond_9

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->getTag()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->DW()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->j6:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v5, p3, v0, v3}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/lc;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-nez v0, :cond_7

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->Eq()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {v5, p2, v0, p3, v7}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/Bc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_8
    :try_start_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->Ev()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->getTag()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_c

    if-eqz v2, :cond_a

    if-nez v0, :cond_b

    invoke-virtual {v4, v6, v3, v2}, Lcom/google/android/gms/internal/measurement/Uc;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/Wa;)V

    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v5, v2, v0, p3, v7}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/Wa;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_c
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->Hw()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/od;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wb;->v5()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/yb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/yb;->FH()Lcom/google/android/gms/internal/measurement/nd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/yb;->XL()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/yb;->QX()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/Sb;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/yb;->j6()I

    move-result v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/Sb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Sb;->j6()Lcom/google/android/gms/internal/measurement/Pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Ub;->j6()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/measurement/od;->j6(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/yb;->j6()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/measurement/od;->j6(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Found invalid MessageSet item."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Lcom/google/android/gms/internal/measurement/Uc;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Lcom/google/android/gms/internal/measurement/tb;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
