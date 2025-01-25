.class public final Labcd/Zo;
.super Labcd/Gp;


# instance fields
.field private VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Ap;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/op;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Hp;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Labcd/Wo;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    iput-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    iput-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    iput-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    return-void
.end method

.method private static j6(Ljava/util/ArrayList;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public DW(Labcd/Gp;)I
    .registers 3

    invoke-virtual {p0}, Labcd/Zo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_11

    check-cast p1, Labcd/Zo;

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    iget-object p1, p1, Labcd/Zo;->v5:Labcd/Wo;

    invoke-virtual {v0, p1}, Labcd/Gp;->j6(Labcd/Gp;)I

    move-result p1

    return p1

    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "uninternable instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected DW(Labcd/Kp;I)V
    .registers 3

    iget-object p1, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-static {p1}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result p1

    iget-object p2, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-static {p2}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-static {p2}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Labcd/Gp;->j6(I)V

    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 12

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    iget-object v1, p0, Labcd/Zo;->v5:Labcd/Wo;

    invoke-static {v1}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v1

    iget-object v2, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-static {v2}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-static {v3}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-static {v4}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_98

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " annotations directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  class_annotations_off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p2, v7, v6}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  fields_size:           "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  methods_size:          "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  parameters_size:       "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_98
    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v4}, Labcd/ku;->writeInt(I)V

    if-eqz v2, :cond_c8

    iget-object v1, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_b2

    const-string v1, "  fields:"

    invoke-interface {p2, v5, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_b2
    iget-object v1, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/op;

    invoke-virtual {v2, p1, p2}, Labcd/op;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_b8

    :cond_c8
    if-eqz v3, :cond_ec

    iget-object v1, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_d6

    const-string v1, "  methods:"

    invoke-interface {p2, v5, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_d6
    iget-object v1, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Ap;

    invoke-virtual {v2, p1, p2}, Labcd/Ap;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_dc

    :cond_ec
    if-eqz v4, :cond_110

    iget-object v1, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_fa

    const-string v0, "  parameters:"

    invoke-interface {p2, v5, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_fa
    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_110

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Hp;

    invoke-virtual {v1, p1, p2}, Labcd/Hp;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_100

    :cond_110
    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->aM:Labcd/wp;

    return-object v0
.end method

.method public Mr()Z
    .registers 2

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Labcd/Wo;->hashCode()I

    move-result v0

    return v0
.end method

.method public j3()Z
    .registers 2

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public j6(Labcd/Gs;Labcd/Jr;)V
    .registers 6

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    new-instance v1, Labcd/Ap;

    new-instance v2, Labcd/Wo;

    invoke-direct {v2, p2}, Labcd/Wo;-><init>(Labcd/Jr;)V

    invoke-direct {v1, p1, v2}, Labcd/Ap;-><init>(Labcd/Gs;Labcd/Wo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Labcd/Gs;Labcd/Kr;)V
    .registers 5

    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    new-instance v1, Labcd/Hp;

    invoke-direct {v1, p1, p2}, Labcd/Hp;-><init>(Labcd/Gs;Labcd/Kr;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Labcd/Jr;)V
    .registers 3

    if-eqz p1, :cond_16

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-nez v0, :cond_e

    new-instance v0, Labcd/Wo;

    invoke-direct {v0, p1}, Labcd/Wo;-><init>(Labcd/Jr;)V

    iput-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "class annotations already set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotations == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v0

    iget-object v1, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Wo;

    iput-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    :cond_10
    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/op;

    invoke-virtual {v1, p1}, Labcd/op;->j6(Labcd/jp;)V

    goto :goto_18

    :cond_28
    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Ap;

    invoke-virtual {v1, p1}, Labcd/Ap;->j6(Labcd/jp;)V

    goto :goto_30

    :cond_40
    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Hp;

    invoke-virtual {v1, p1}, Labcd/Hp;->j6(Labcd/jp;)V

    goto :goto_48

    :cond_58
    return-void
.end method

.method public j6(Labcd/ws;Labcd/Jr;)V
    .registers 6

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    new-instance v1, Labcd/op;

    new-instance v2, Labcd/Wo;

    invoke-direct {v2, p2}, Labcd/Wo;-><init>(Labcd/Jr;)V

    invoke-direct {v1, p1, v2}, Labcd/op;-><init>(Labcd/ws;Labcd/Wo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
