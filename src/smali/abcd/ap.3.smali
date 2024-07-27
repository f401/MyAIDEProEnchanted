.class public final Labcd/ap;
.super Labcd/Gp;


# instance fields
.field private EQ:Labcd/ps;

.field private final VH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Labcd/lp;",
            "Labcd/ms;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/lp;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/lp;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/np;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/np;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/Ks;

.field private we:[B


# direct methods
.method public constructor <init>(Labcd/Ks;)V
    .registers 5

    const/16 v2, 0x14

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/ap;->v5:Labcd/Ks;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Labcd/ap;->VH:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ap;->EQ:Labcd/ps;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH(Labcd/jp;Labcd/Lt;)V
    .registers 6

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/ap;->v5:Labcd/Ks;

    invoke-virtual {v2}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    const-string v1, "static_fields"

    iget-object v2, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;I)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;I)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;I)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;I)V

    const-string v1, "static_fields"

    iget-object v2, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Labcd/ap;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    invoke-interface {p2}, Labcd/Lt;->FH()V

    :cond_1
    return-void
.end method

.method private U2()Labcd/ps;
    .registers 7

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v0

    :goto_0
    if-lez v3, :cond_0

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lp;

    iget-object v1, p0, Labcd/ap;->VH:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ms;

    instance-of v1, v0, Labcd/Ds;

    if-eqz v1, :cond_1

    check-cast v0, Labcd/Ds;

    invoke-virtual {v0}, Labcd/Ds;->lg()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    :cond_0
    if-nez v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    new-instance v4, Labcd/ps$a;

    invoke-direct {v4, v3}, Labcd/ps$a;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v3, :cond_5

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lp;

    iget-object v1, p0, Labcd/ap;->VH:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ms;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Labcd/lp;->Zo()Labcd/ws;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object v0

    invoke-static {v0}, Labcd/Ns;->j6(Labcd/Qs;)Labcd/ms;

    move-result-object v1

    :cond_4
    invoke-virtual {v4, v2, v1}, Labcd/ps$a;->j6(ILabcd/ms;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Labcd/hu;->we()V

    new-instance v0, Labcd/ps;

    invoke-direct {v0, v4}, Labcd/ps;-><init>(Labcd/ps$a;)V

    goto :goto_1
.end method

.method private static j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;I)V
    .registers 8

    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  %-21s %08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Lt;->j6(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p3}, Labcd/ku;->DW(I)I

    return-void
.end method

.method private static j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jp;",
            "Labcd/Lt;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Labcd/mp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_2
    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/mp;

    invoke-virtual {v0, p0, p1, v1, v2}, Labcd/mp;->j6(Labcd/jp;Labcd/Lt;II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected DW(Labcd/Kp;I)V
    .registers 5

    new-instance v0, Labcd/Qt;

    invoke-direct {v0}, Labcd/Qt;-><init>()V

    invoke-virtual {p1}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/ap;->FH(Labcd/jp;Labcd/Lt;)V

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    iput-object v0, p0, Labcd/ap;->we:[B

    iget-object v0, p0, Labcd/ap;->we:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Labcd/Gp;->j6(I)V

    return-void
.end method

.method public DW(Labcd/jp;Labcd/Lt;)V
    .registers 4

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/ap;->FH(Labcd/jp;Labcd/Lt;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/ap;->we:[B

    invoke-interface {p2, v0}, Labcd/ku;->write([B)V

    goto :goto_0
.end method

.method public DW(Labcd/np;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->we:Labcd/wp;

    return-object v0
.end method

.method public Mr()Z
    .registers 2

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j3()Labcd/ps;
    .registers 2

    iget-object v0, p0, Labcd/ap;->EQ:Labcd/ps;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/ap;->U2()Labcd/ps;

    move-result-object v0

    iput-object v0, p0, Labcd/ap;->EQ:Labcd/ps;

    :cond_0
    iget-object v0, p0, Labcd/ap;->EQ:Labcd/ps;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/ap;->j3()Labcd/ps;

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lp;

    invoke-virtual {v0, p1}, Labcd/lp;->j6(Labcd/jp;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lp;

    invoke-virtual {v0, p1}, Labcd/lp;->j6(Labcd/jp;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/np;

    invoke-virtual {v0, p1}, Labcd/np;->j6(Labcd/jp;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Labcd/ap;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/np;

    invoke-virtual {v0, p1}, Labcd/np;->j6(Labcd/jp;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public j6(Labcd/lp;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/ap;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/lp;Labcd/ms;)V
    .registers 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Labcd/ap;->EQ:Labcd/ps;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/ap;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/ap;->VH:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "static fields already sorted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/np;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/ap;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
