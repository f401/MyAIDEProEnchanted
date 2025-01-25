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

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method protected final j6(Labcd/vt;Labcd/bs;)Labcd/bs;
    .registers 10

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_96

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7b

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

    move-result-object p2

    invoke-direct {v4, v5, v6, v3, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-static {v4, v0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result p2

    invoke-virtual {v0}, Labcd/tt;->Hw()Labcd/bu;

    move-result-object v0

    invoke-interface {v0}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Labcd/_t;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Labcd/It;->DW:Labcd/Ft;

    invoke-interface {v0}, Labcd/_t;->next()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Labcd/Ft;->j6(II)V

    goto :goto_4a

    :cond_5a
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_63
    if-ge v1, v0, :cond_75

    iget-object v2, p0, Labcd/It;->DW:Labcd/Ft;

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {v2, p2, v4}, Labcd/Ft;->j6(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_75
    iget-object p1, p0, Labcd/It;->j6:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->J8()V

    return-object v3

    :cond_7b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding move here not supported:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "specified insn is not in this block"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9f

    :goto_9e
    throw p1

    :goto_9f
    goto :goto_9e
.end method
