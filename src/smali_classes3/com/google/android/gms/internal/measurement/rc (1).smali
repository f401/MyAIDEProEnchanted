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
        "Lcom/google/android/gms/internal/measurement/Cc<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/measurement/Uc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation
.end field

.field private final FH:Z

.field private final Hw:Lcom/google/android/gms/internal/measurement/tb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/tb<",
            "*>;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/measurement/lc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/lc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/tb<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/lc;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

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
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/tb<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ")",
            "Lcom/google/android/gms/internal/measurement/rc<",
            "TT;>;"
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

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/rc;->FH:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/wb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
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

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/wb;->u7()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
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

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/wb;->Hw()Z

    move-result p1

    return p1
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

    if-eqz v1, :cond_1b

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/wb;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/tb;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v3

    :cond_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->j6()I

    move-result v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_90

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_19

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_19
    :try_start_19
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->getTag()I

    move-result v4

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-eq v4, v6, :cond_3f

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/rc;->j6:Lcom/google/android/gms/internal/measurement/lc;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/lc;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_36

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/Uc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Bc;)Z

    move-result v4

    goto :goto_85

    :cond_36
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/Bc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_90

    throw v7

    :cond_3a
    :try_start_3a
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->Ev()Z

    move-result v4

    goto :goto_85

    :cond_3f
    const/4 v4, 0x0

    move-object v6, v7

    move-object v8, v6

    :cond_42
    :goto_42
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->j6()I

    move-result v9

    if-eq v9, v5, :cond_70

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->getTag()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_5b

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->DW()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/rc;->j6:Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/lc;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_42

    :cond_5b
    const/16 v10, 0x1a

    if-ne v9, v10, :cond_6a

    if-nez v6, :cond_66

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->Eq()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v8

    goto :goto_42

    :cond_66
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/Bc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_90

    throw v7

    :cond_6a
    :try_start_6a
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->Ev()Z

    move-result v9

    if-nez v9, :cond_42

    :cond_70
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/Bc;->getTag()I

    move-result v5

    const/16 v9, 0xc

    if-ne v5, v9, :cond_8b

    if-eqz v8, :cond_84

    if-nez v6, :cond_80

    invoke-virtual {v0, v2, v4, v8}, Lcom/google/android/gms/internal/measurement/Uc;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/Wa;)V

    goto :goto_84

    :cond_80
    invoke-virtual {v1, v8, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/tb;->j6(Lcom/google/android/gms/internal/measurement/Wa;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_90

    throw v7

    :cond_84
    :goto_84
    const/4 v4, 0x1

    :goto_85
    if-nez v4, :cond_c

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8b
    :try_start_8b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->Hw()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p2

    throw p2
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_96

    :goto_95
    throw p2

    :goto_96
    goto :goto_95
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

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/yb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/yb;->FH()Lcom/google/android/gms/internal/measurement/nd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    if-ne v3, v4, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/yb;->XL()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/yb;->QX()Z

    move-result v3

    if-nez v3, :cond_4b

    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/Sb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/yb;->j6()I

    move-result v2

    if-eqz v3, :cond_43

    check-cast v1, Lcom/google/android/gms/internal/measurement/Sb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/Sb;->j6()Lcom/google/android/gms/internal/measurement/Pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/Ub;->j6()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v1

    goto :goto_47

    :cond_43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_47
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/od;->j6(ILjava/lang/Object;)V

    goto :goto_a

    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/Uc;->DW(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

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

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/rc;->Hw:Lcom/google/android/gms/internal/measurement/tb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Lcom/google/android/gms/internal/measurement/tb;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
