.class public abstract Labcd/Sp;
.super Labcd/Kp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/jp;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/Kp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    return-void
.end method


# virtual methods
.method protected final FH(Labcd/Lt;)V
    .registers 6

    invoke-virtual {p0}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Kp;->j6()I

    move-result v1

    invoke-virtual {p0}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/vp;

    invoke-virtual {v3, v0, p1}, Labcd/vp;->j6(Labcd/jp;Labcd/Lt;)V

    invoke-interface {p1, v1}, Labcd/ku;->Hw(I)V

    goto :goto_10

    :cond_23
    return-void
.end method

.method protected final Zo()V
    .registers 4

    invoke-virtual {p0}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Sp;->tp()V

    invoke-virtual {p0}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vp;

    invoke-virtual {v2, v0}, Labcd/vp;->j6(Labcd/jp;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final j6(Labcd/vp;)I
    .registers 3

    check-cast p1, Labcd/up;

    invoke-virtual {p1}, Labcd/up;->we()I

    move-result v0

    invoke-virtual {p1}, Labcd/vp;->VH()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v0}, Labcd/Kp;->j6(I)I

    move-result p1

    return p1
.end method

.method protected abstract tp()V
.end method

.method public final u7()I
    .registers 3

    invoke-virtual {p0}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vp;

    invoke-virtual {v0}, Labcd/vp;->VH()I

    move-result v0

    mul-int v1, v1, v0

    return v1
.end method
