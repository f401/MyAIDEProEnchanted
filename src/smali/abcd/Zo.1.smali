.class public final Labcd/Zo;
.super Labcd/Gp;


# instance fields
.field private VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Ap;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/op;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Hp;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Labcd/Wo;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    iput-object v2, p0, Labcd/Zo;->v5:Labcd/Wo;

    iput-object v2, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    iput-object v2, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    iput-object v2, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    return-void
.end method

.method private static j6(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/Gp;)I
    .registers 4

    invoke-virtual {p0}, Labcd/Zo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Labcd/Zo;

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    iget-object v1, p1, Labcd/Zo;->v5:Labcd/Wo;

    invoke-virtual {v0, v1}, Labcd/Gp;->j6(Labcd/Gp;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "uninternable instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected DW(Labcd/Kp;I)V
    .registers 5

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-static {v0}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v0

    iget-object v1, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-static {v1}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-static {v1}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Labcd/Gp;->j6(I)V

    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 12

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    invoke-static {v0}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v0

    iget-object v2, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-static {v2}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-static {v3}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-static {v4}, Labcd/Zo;->j6(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " annotations directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v7, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  class_annotations_off: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  fields_size:           "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  methods_size:          "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  parameters_size:       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v4}, Labcd/ku;->writeInt(I)V

    if-eqz v2, :cond_2

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v1, :cond_1

    const-string v0, "  fields:"

    invoke-interface {p2, v7, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/op;

    invoke-virtual {v0, p1, p2}, Labcd/op;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v1, :cond_3

    const-string v0, "  methods:"

    invoke-interface {p2, v7, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ap;

    invoke-virtual {v0, p1, p2}, Labcd/Ap;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v1, :cond_5

    const-string v0, "  parameters:"

    invoke-interface {p2, v7, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Hp;

    invoke-virtual {v0, p1, p2}, Labcd/Hp;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_2

    :cond_6
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

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Labcd/Wo;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public j3()Z
    .registers 2

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Labcd/Gs;Labcd/Jr;)V
    .registers 6

    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    :cond_0
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

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    new-instance v1, Labcd/Hp;

    invoke-direct {v1, p1, p2}, Labcd/Hp;-><init>(Labcd/Gs;Labcd/Kr;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Labcd/Jr;)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-nez v0, :cond_0

    new-instance v0, Labcd/Wo;

    invoke-direct {v0, p1}, Labcd/Wo;-><init>(Labcd/Jr;)V

    iput-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "class annotations already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v0

    iget-object v1, p0, Labcd/Zo;->v5:Labcd/Wo;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Wo;

    iput-object v0, p0, Labcd/Zo;->v5:Labcd/Wo;

    :cond_0
    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/op;

    invoke-virtual {v0, p1}, Labcd/op;->j6(Labcd/jp;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Zo;->VH:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ap;

    invoke-virtual {v0, p1}, Labcd/Ap;->j6(Labcd/jp;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Labcd/Zo;->gn:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Hp;

    invoke-virtual {v0, p1}, Labcd/Hp;->j6(Labcd/jp;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public j6(Labcd/ws;Labcd/Jr;)V
    .registers 6

    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Labcd/Zo;->Zo:Ljava/util/ArrayList;

    new-instance v1, Labcd/op;

    new-instance v2, Labcd/Wo;

    invoke-direct {v2, p2}, Labcd/Wo;-><init>(Labcd/Jr;)V

    invoke-direct {v1, p1, v2}, Labcd/op;-><init>(Labcd/ws;Labcd/Wo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
