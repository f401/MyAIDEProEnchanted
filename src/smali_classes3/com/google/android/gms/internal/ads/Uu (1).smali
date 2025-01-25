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
        "Lcom/google/android/gms/internal/ads/fv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/xv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xv<",
            "**>;"
        }
    .end annotation
.end field

.field private final FH:Z

.field private final Hw:Lcom/google/android/gms/internal/ads/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Vt<",
            "*>;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/Pu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Pu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/xv<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/Vt<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Pu;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

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
            "Lcom/google/android/gms/internal/ads/xv<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/Vt<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ")",
            "Lcom/google/android/gms/internal/ads/Uu<",
            "TT;>;"
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

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Yt;->u7()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
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

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Uu;->FH:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Yt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
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

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Yt;->Hw()Z

    move-result p1

    return p1
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

    if-eqz v1, :cond_1b

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Yt;->hashCode()I

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

    check-cast v2, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    if-ne v3, v4, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_t;->EQ()Z

    move-result v3

    if-nez v3, :cond_4b

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/uu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v2

    if-eqz v3, :cond_43

    check-cast v1, Lcom/google/android/gms/internal/ads/uu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uu;->j6()Lcom/google/android/gms/internal/ads/su;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wu;->j6()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    goto :goto_47

    :cond_43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_47
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    goto :goto_a

    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->DW:Lcom/google/android/gms/internal/ads/xv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v3

    :cond_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I

    move-result v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_90

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_19

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_19
    :try_start_19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v4

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-eq v4, v6, :cond_3f

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Uu;->j6:Lcom/google/android/gms/internal/ads/Pu;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Pu;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_36

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z

    move-result v4

    goto :goto_85

    :cond_36
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_90

    throw v7

    :cond_3a
    :try_start_3a
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Ws()Z

    move-result v4

    goto :goto_85

    :cond_3f
    const/4 v4, 0x0

    move-object v6, v7

    move-object v8, v6

    :cond_42
    :goto_42
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I

    move-result v9

    if-eq v9, v5, :cond_70

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_5b

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->gn()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Uu;->j6:Lcom/google/android/gms/internal/ads/Pu;

    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Pu;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_42

    :cond_5b
    const/16 v10, 0x1a

    if-ne v9, v10, :cond_6a

    if-nez v6, :cond_66

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v8

    goto :goto_42

    :cond_66
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_90

    throw v7

    :cond_6a
    :try_start_6a
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Ws()Z

    move-result v9

    if-nez v9, :cond_42

    :cond_70
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->getTag()I

    move-result v5

    const/16 v9, 0xc

    if-ne v5, v9, :cond_8b

    if-eqz v8, :cond_84

    if-nez v6, :cond_80

    invoke-virtual {v0, v2, v4, v8}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/yt;)V

    goto :goto_84

    :cond_80
    invoke-virtual {v1, v8, v6, p3, v3}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/yt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_90

    throw v7

    :cond_84
    :goto_84
    const/4 v4, 0x1

    :goto_85
    if-nez v4, :cond_c

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8b
    :try_start_8b
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->v5()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p2

    throw p2
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_96

    :goto_95
    throw p2

    :goto_96
    goto :goto_95
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

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uu;->Hw:Lcom/google/android/gms/internal/ads/Vt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(Lcom/google/android/gms/internal/ads/Vt;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final j6(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/vt;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")V"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->FH()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->Hw()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    :cond_10
    move-object p1, v0

    :goto_11
    if-ge p3, p4, :cond_6b

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget v0, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    const/16 p3, 0xb

    const/4 v1, 0x2

    if-eq v0, p3, :cond_30

    and-int/lit8 p3, v0, 0x7

    if-ne p3, v1, :cond_2b

    move-object v1, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    goto :goto_11

    :cond_2b
    invoke-static {v0, p2, v2, p4, p5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    goto :goto_11

    :cond_30
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_32
    if-ge v2, p4, :cond_61

    invoke-static {p2, v2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget v3, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    if-eq v4, v1, :cond_4f

    const/4 v6, 0x3

    if-eq v4, v6, :cond_44

    goto :goto_58

    :cond_44
    if-ne v5, v1, :cond_58

    invoke-static {p2, v2, p5}, Lcom/google/android/gms/internal/ads/ut;->v5([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    goto :goto_32

    :cond_4f
    if-nez v5, :cond_58

    invoke-static {p2, v2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget p3, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    goto :goto_32

    :cond_58
    :goto_58
    const/16 v4, 0xc

    if-eq v3, v4, :cond_61

    invoke-static {v3, p2, v2, p4, p5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    goto :goto_32

    :cond_61
    if-eqz v0, :cond_69

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v1

    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    :cond_69
    move p3, v2

    goto :goto_11

    :cond_6b
    if-ne p3, p4, :cond_6e

    return-void

    :cond_6e
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    goto :goto_74

    :goto_73
    throw p1

    :goto_74
    goto :goto_73
.end method
