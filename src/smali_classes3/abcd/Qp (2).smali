.class public final Labcd/Qp;
.super Labcd/Sp;


# instance fields
.field private final Zo:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Labcd/Qs;",
            "Labcd/Pp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/jp;)V
    .registers 4

    const-string v0, "type_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/Sp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public DW(Labcd/Ks;)Labcd/Pp;
    .registers 4

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    invoke-virtual {p1}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    iget-object v1, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Pp;

    if-nez v1, :cond_1d

    new-instance v1, Labcd/Pp;

    invoke-direct {v1, p1}, Labcd/Pp;-><init>(Labcd/Ks;)V

    iget-object p1, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v1

    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Labcd/Qs;)Labcd/Pp;
    .registers 4

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    iget-object v0, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Pp;

    if-nez v0, :cond_1e

    new-instance v0, Labcd/Pp;

    new-instance v1, Labcd/Ks;

    invoke-direct {v1, p1}, Labcd/Ks;-><init>(Labcd/Qs;)V

    invoke-direct {v0, v1}, Labcd/Pp;-><init>(Labcd/Ks;)V

    iget-object v1, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-object v0

    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Labcd/vp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public Hw(Labcd/Lt;)V
    .registers 7

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Labcd/Kp;->FH()I

    move-result v1

    :goto_11
    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_53

    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type_ids_size:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type_ids_off:    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_4c
    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p1, v1}, Labcd/ku;->writeInt(I)V

    return-void

    :cond_53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "too many type ids"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Ks;)I
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Qp;->j6(Labcd/Qs;)I

    move-result p1

    return p1

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Qs;)I
    .registers 4

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Pp;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Labcd/up;->we()I

    move-result p1

    return p1

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/ms;)Labcd/up;
    .registers 4

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    move-object v0, p1

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    iget-object v1, p0, Labcd/Qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/up;

    if-eqz v0, :cond_17

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected tp()V
    .registers 4

    invoke-virtual {p0}, Labcd/Qp;->Hw()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Pp;

    invoke-virtual {v2, v1}, Labcd/up;->j6(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method
