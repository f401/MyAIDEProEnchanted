.class public final Labcd/qp;
.super Labcd/zp;


# instance fields
.field private final Zo:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Labcd/ws;",
            "Labcd/pp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/jp;)V
    .registers 3

    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Labcd/zp;-><init>(Ljava/lang/String;Labcd/jp;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public DW(Labcd/ws;)Labcd/pp;
    .registers 4

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    iget-object v0, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/pp;

    if-nez v0, :cond_19

    new-instance v0, Labcd/pp;

    invoke-direct {v0, p1}, Labcd/pp;-><init>(Labcd/ws;)V

    iget-object v1, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v0

    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

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

    iget-object v0, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public Hw(Labcd/Lt;)V
    .registers 7

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

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

    const-string v3, "field_ids_size:  "

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

    const-string v4, "field_ids_off:   "

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

.method public j6(Labcd/ws;)I
    .registers 3

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/pp;

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

    const-string v0, "ref == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/ms;)Labcd/up;
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/qp;->Zo:Ljava/util/TreeMap;

    check-cast p1, Labcd/ws;

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
