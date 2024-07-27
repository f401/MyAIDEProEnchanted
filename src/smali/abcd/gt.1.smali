.class public Labcd/gt;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/gt;->j6:Labcd/yt;

    return-void
.end method

.method private static DW(Labcd/bs;)Z
    .registers 7

    invoke-virtual {p0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    instance-of v2, v0, Labcd/Ds;

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Labcd/Ds;

    invoke-virtual {v0}, Labcd/Ds;->lg()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private j6()V
    .registers 4

    invoke-static {}, Labcd/nt;->j6()Labcd/ls;

    move-result-object v0

    iget-object v1, p0, Labcd/gt;->j6:Labcd/yt;

    new-instance v2, Labcd/ft;

    invoke-direct {v2, p0, v0}, Labcd/ft;-><init>(Labcd/gt;Labcd/ls;)V

    invoke-virtual {v1, v2}, Labcd/yt;->j6(Labcd/vt$a;)V

    return-void
.end method

.method static synthetic j6(Labcd/gt;Labcd/mt;Labcd/cs;ILabcd/ms;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/gt;->j6(Labcd/mt;Labcd/cs;ILabcd/ms;)V

    return-void
.end method

.method private j6(Labcd/mt;Labcd/cs;ILabcd/ms;)V
    .registers 11

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object v2

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-static {p3, v0, p2, p4}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v1

    if-nez p4, :cond_0

    new-instance v0, Labcd/Zr;

    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    :goto_0
    new-instance v1, Labcd/mt;

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {v2, p1}, Labcd/yt;->DW(Labcd/vt;)V

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/vt;)V

    return-void

    :cond_0
    new-instance v0, Labcd/Yr;

    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    goto :goto_0
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/gt;

    invoke-direct {v0, p0}, Labcd/gt;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/gt;->j6()V

    return-void
.end method

.method static synthetic j6(Labcd/bs;)Z
    .registers 2

    invoke-static {p0}, Labcd/gt;->DW(Labcd/bs;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6(Labcd/gt;Labcd/mt;)Z
    .registers 3

    invoke-direct {p0, p1}, Labcd/gt;->j6(Labcd/mt;)Z

    move-result v0

    return v0
.end method

.method private j6(Labcd/mt;)Z
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {v3, v0}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Labcd/Rs;->j3()I

    move-result v3

    if-ne v3, v5, :cond_1

    sget-object v3, Labcd/cs;->FH:Labcd/cs;

    check-cast v0, Labcd/ms;

    invoke-direct {p0, p1, v3, v4, v0}, Labcd/gt;->j6(Labcd/mt;Labcd/cs;ILabcd/ms;)V

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v1, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/mt;

    sget-object v1, Labcd/cs;->FH:Labcd/cs;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v5, v2}, Labcd/gt;->j6(Labcd/mt;Labcd/cs;ILabcd/ms;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
