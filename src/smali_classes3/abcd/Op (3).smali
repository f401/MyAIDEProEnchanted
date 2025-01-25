.class public final Labcd/Op;
.super Labcd/Sp;


# instance fields
.field private final Zo:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Labcd/Js;",
            "Labcd/Np;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/jp;)V
    .registers 4

    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/Sp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public DW(Labcd/Js;)Labcd/Np;
    .registers 3

    new-instance v0, Labcd/Np;

    invoke-direct {v0, p1}, Labcd/Np;-><init>(Labcd/Js;)V

    invoke-virtual {p0, v0}, Labcd/Op;->j6(Labcd/Np;)Labcd/Np;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public Hw(Labcd/Lt;)V
    .registers 7

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Labcd/Kp;->FH()I

    move-result v1

    :goto_11
    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string_ids_size: "

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

    const-string v4, "string_ids_off:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_48
    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p1, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method

.method public j6(Labcd/Js;)I
    .registers 3

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Np;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Labcd/up;->we()I

    move-result p1

    return p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Np;)Labcd/Np;
    .registers 4

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    invoke-virtual {p1}, Labcd/Np;->aM()Labcd/Js;

    move-result-object v0

    iget-object v1, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Np;

    if-eqz v1, :cond_14

    return-object v1

    :cond_14
    iget-object v1, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/ms;)Labcd/up;
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    check-cast p1, Labcd/Js;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/up;

    if-eqz p1, :cond_12

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected tp()V
    .registers 4

    iget-object v0, p0, Labcd/Op;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Np;

    invoke-virtual {v2, v1}, Labcd/up;->j6(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method
