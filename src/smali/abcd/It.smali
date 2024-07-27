.class public abstract Labcd/It;
.super Ljava/lang/Object;


# instance fields
.field protected final DW:Labcd/Ft;

.field protected final j6:Labcd/yt;


# direct methods
.method public constructor <init>(Labcd/yt;Labcd/Ft;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/It;->j6:Labcd/yt;

    iput-object p2, p0, Labcd/It;->DW:Labcd/Ft;

    return-void
.end method


# virtual methods
.method protected final j6(I)Labcd/bs;
    .registers 3

    iget-object v0, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v0, p1}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    goto :goto_0
.end method

.method protected final j6(Labcd/vt;Labcd/bs;)Labcd/bs;
    .registers 11

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v3}, Labcd/yt;->J0()I

    move-result v3

    invoke-virtual {p2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v3

    new-instance v4, Labcd/Zr;

    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v5

    invoke-static {v5}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v5

    sget-object v6, Labcd/hs;->j6:Labcd/hs;

    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v7

    invoke-direct {v4, v5, v6, v3, v7}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-static {v4, v0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0}, Labcd/tt;->Hw()Labcd/bu;

    move-result-object v0

    invoke-interface {v0}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Labcd/_t;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Labcd/It;->DW:Labcd/Ft;

    invoke-interface {v0}, Labcd/_t;->next()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Labcd/Ft;->j6(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v5, p0, Labcd/It;->DW:Labcd/Ft;

    invoke-virtual {v2, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Labcd/Ft;->j6(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->J8()V

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding move here not supported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "specified insn is not in this block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
