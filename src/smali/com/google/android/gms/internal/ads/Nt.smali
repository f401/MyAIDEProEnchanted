.class final Lcom/google/android/gms/internal/ads/Nt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ev;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private final j6:Lcom/google/android/gms/internal/ads/Kt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Kt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/Kt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/Kt;->Hw:Lcom/google/android/gms/internal/ads/Nt;

    return-void
.end method

.method private static DW(I)V
    .registers 2

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fv",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iget v2, v1, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/Kt;->DW:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fv;->j6()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iget v3, v2, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Kt;->j6(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iget v3, v2, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Kt;->v5(I)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->VH()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method private static FH(I)V
    .registers 2

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fv",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    ushr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fv;->j6()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    throw v0
.end method

.method private final Hw(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Kt;)Lcom/google/android/gms/internal/ads/Nt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kt;->Hw:Lcom/google/android/gms/internal/ads/Nt;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Nt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Nt;-><init>(Lcom/google/android/gms/internal/ads/Kt;)V

    goto :goto_0
.end method

.method private final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0
.end method

.method private final j6(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yu;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/yu;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/yu;->j6(Lcom/google/android/gms/internal/ads/yt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->J8()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final DW()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v0

    return-wide v0
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fv",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Nt;->Hw(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final DW(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wt;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/wt;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final DW(Ljava/util/List;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/fv",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Nt;->Hw(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0
.end method

.method public final EQ()J
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v0

    return-wide v0
.end method

.method public final EQ(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/yt;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0
.end method

.method public final FH()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v0

    return v0
.end method

.method public final FH(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/iu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final Hw()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v0

    return v0
.end method

.method public final Hw(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final J0()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    if-eqz v0, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    if-ne v0, v1, :cond_2

    :cond_0
    const v0, 0x7fffffff

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method public final J0(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/iu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final J8()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->EQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J8(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final QX()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->we()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    return-object v0
.end method

.method public final QX(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final VH()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result v0

    return v0
.end method

.method public final VH(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Rt;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/Rt;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final Ws(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/ads/iu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_5

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_9

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_a

    goto/16 :goto_0
.end method

.method public final Ws()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Kt;->DW(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final XL(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/iu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final Zo()J
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Zo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final getTag()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    return v0
.end method

.method public final gn()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    return v0
.end method

.method public final gn(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final j6()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fv",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Nt;->FH(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(Ljava/util/List;Z)V

    return-void
.end method

.method public final j6(Ljava/util/List;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/fv",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Nt;->FH(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0
.end method

.method public final readDouble()D
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->FH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tp()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result v0

    return v0
.end method

.method public final tp(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(Ljava/util/List;Z)V

    return-void
.end method

.method public final u7()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v0

    return v0
.end method

.method public final u7(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/eu;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/ads/eu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_5

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_9

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_a

    goto/16 :goto_0
.end method

.method public final v5()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v5(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/ads/iu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_5

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_9

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, v0

    if-lt v2, v3, :cond_a

    goto/16 :goto_0
.end method

.method public final we(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/iu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_0
.end method

.method public final we()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v0

    return v0
.end method
