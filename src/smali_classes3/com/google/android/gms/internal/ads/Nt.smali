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

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Kt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/Kt;->Hw:Lcom/google/android/gms/internal/ads/Nt;

    return-void
.end method

.method private static DW(I)V
    .registers 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;",
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

    if-ge v2, v3, :cond_36

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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Kt;->j6(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    iget p2, p1, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/Kt;->j6:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Kt;->v5(I)V

    return-object v1

    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->VH()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    throw p1
.end method

.method private static FH(I)V
    .registers 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    :try_start_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fv;->j6()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_24

    if-ne p1, p2, :cond_1f

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    return-object v1

    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    throw p1
.end method

.method private final Hw(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    throw p1
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Kt;)Lcom/google/android/gms/internal/ads/Nt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kt;->Hw:Lcom/google/android/gms/internal/ads/Nt;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/Nt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Nt;-><init>(Lcom/google/android/gms/internal/ads/Kt;)V

    return-object v0
.end method

.method private final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1
.end method

.method private final j6(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yu;

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/yu;

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/yu;->j6(Lcom/google/android/gms/internal/ads/yt;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    :cond_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, p2, :cond_10

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_2d
    if-eqz p2, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->J8()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_44

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_2d

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
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
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Nt;->Hw(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final DW(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wt;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/wt;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->tp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
.end method

.method public final DW(Ljava/util/List;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_26

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Nt;->Hw(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    if-eqz v1, :cond_1b

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v1

    if-eq v1, v0, :cond_7

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
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
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/yt;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nt;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->VH()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Du;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Zo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
.end method

.method public final J0()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    if-eqz v0, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    :goto_12
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    if-ne v0, v1, :cond_1b

    goto :goto_1e

    :cond_1b
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_1e
    :goto_1e
    const v0, 0x7fffffff

    return v0
.end method

.method public final J0(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->XL()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Du;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->aM()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Du;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_39

    if-ne p1, v1, :cond_34

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, p1

    if-lt v2, v3, :cond_20

    return-void

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_39

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8c

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_6f
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

    if-lt v2, v3, :cond_6f

    return-void

    :cond_87
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->QX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_a2

    return-void

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_8c

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Rt;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Rt;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_39

    if-ne p1, v1, :cond_34

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, p1

    if-lt v2, v3, :cond_20

    return-void

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_39

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8c

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_6f
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

    if-lt v2, v3, :cond_6f

    return-void

    :cond_87
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j6()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_a2

    return-void

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_8c

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
.end method

.method public final Ws(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_35

    if-ne p1, v1, :cond_30

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v4

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    add-int v1, v4, v3

    if-lt p1, v1, :cond_44

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_88

    if-ne v0, v1, :cond_83

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Ws()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_76

    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_60

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_83
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_97
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

    if-lt v2, v3, :cond_97

    return-void
.end method

.method public final Ws()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->FH:I

    if-ne v0, v1, :cond_f

    goto :goto_16

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Kt;->DW(I)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public final XL(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J8()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Du;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_39

    if-ne p1, v1, :cond_34

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v2

    add-int v3, v1, p1

    if-lt v2, v3, :cond_20

    return-void

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_39

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_8c

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_6f
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

    if-lt v2, v3, :cond_6f

    return-void

    :cond_87
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->gn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_a2

    return-void

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_8c

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Du;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->v5()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nt;->j6(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Nt;->FH(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Nt;->FH(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    if-eqz v1, :cond_1b

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v1

    if-eq v1, v0, :cond_7

    iput v1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
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
            "Ljava/util/List<",
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/eu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/eu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_35

    if-ne p1, v1, :cond_30

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v4

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    add-int v1, v4, v3

    if-lt p1, v1, :cond_44

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_88

    if-ne v0, v1, :cond_83

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->DW()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_76

    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_60

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_83
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_97
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

    if-lt v2, v3, :cond_97

    return-void
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_35

    if-ne p1, v1, :cond_30

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v4

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    add-int v1, v4, v3

    if-lt p1, v1, :cond_44

    return-void

    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_88

    if-ne v0, v1, :cond_83

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->u7()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_76

    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_60

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_83
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nt;->FH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    :cond_97
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

    if-lt v2, v3, :cond_97

    return-void
.end method

.method public final we(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/iu;

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result p1

    if-lt p1, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result p1

    if-eqz p1, :cond_49

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq p1, v1, :cond_37

    iput p1, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void

    :cond_56
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_89

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    if-lt v0, v1, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nt;->Hw(I)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    throw p1

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->J0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->j3()Z

    move-result v0

    if-eqz v0, :cond_9f

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nt;->j6:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Hw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Nt;->DW:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/google/android/gms/internal/ads/Nt;->Hw:I

    return-void
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
