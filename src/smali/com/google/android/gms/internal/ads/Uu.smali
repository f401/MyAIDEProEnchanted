.class final Lcom/google/android/gms/internal/ads/Uu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/fv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/xv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation
.end field

.field private final FH:Z

.field private final Hw:Lcom/google/android/gms/internal/ads/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/Pu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Pu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Pu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Uu;->j6:Lcom/google/android/gms/internal/ads/Pu;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Uu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ")",
            "Lcom/google/android/gms/internal/ads/Uu",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Uu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Uu;-><init>(Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Pu;)V

    return-object v0
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xv;->Hw(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yt;->u7()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final DW(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yt;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final FH(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->Hw()Z

    move-result v0

    return v0
.end method

.method public final Hw(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->v5(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->FH(Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yt;->hashCode()I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->j6:Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pu;->Zo()Lcom/google/android/gms/internal/ads/Qu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qu;->J8()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->v5()Ljava/util/Iterator;

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

    check-cast v1, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_t;->EQ()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/uu;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v1

    check-cast v0, Lcom/google/android/gms/internal/ads/uu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uu;->j6()Lcom/google/android/gms/internal/ads/su;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wu;->j6()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Found invalid MessageSet item."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/ev;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")V"
        }
    .end annotation

    const v10, 0x7fffffff

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/xv;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/Vt;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v7

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Uu;->j6:Lcom/google/android/gms/internal/ads/Pu;

    ushr-int/lit8 v0, v0, 0x3

    invoke-virtual {v5, p3, v2, v0}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Pu;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v6, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v5, p2, v0, p3, v7}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :try_start_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Ws()Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    move-object v0, v1

    move-object v2, v1

    :cond_5
    :goto_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I

    move-result v8

    if-eq v8, v10, :cond_9

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->gn()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->j6:Lcom/google/android/gms/internal/ads/Pu;

    invoke-virtual {v5, p3, v0, v3}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Pu;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-nez v0, :cond_7

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {v5, p2, v0, p3, v7}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_8
    :try_start_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Ws()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_c

    if-eqz v2, :cond_a

    if-nez v0, :cond_b

    invoke-virtual {v4, v6, v3, v2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/yt;)V

    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v5, v2, v0, p3, v7}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/yt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_c
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->v5()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public final j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(Lcom/google/android/gms/internal/ads/Vt;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/vt;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x2

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->FH()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v0

    if-ne v4, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->Hw()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v4

    iput-object v4, p1, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    :cond_0
    :goto_0
    if-ge p3, p4, :cond_7

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget v0, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7

    if-ne v1, v7, :cond_1

    move-object v1, p2

    move v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0, p2, v2, p4, p5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    move p3, v2

    :goto_1
    if-ge p3, p4, :cond_6

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    iget v2, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    if-eq v3, v7, :cond_5

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    :cond_3
    const/16 v3, 0xc

    if-eq v2, v3, :cond_6

    invoke-static {v2, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    goto :goto_1

    :cond_4
    if-ne v5, v7, :cond_3

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/ut;->v5([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    goto :goto_1

    :cond_5
    if-nez v5, :cond_3

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    iget v1, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_0

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    if-ne p3, p4, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method
