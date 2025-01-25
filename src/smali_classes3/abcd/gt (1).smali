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
    .registers 5

    invoke-virtual {p0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object p0

    instance-of v0, p0, Labcd/Ds;

    if-eqz v0, :cond_16

    check-cast p0, Labcd/Ds;

    invoke-virtual {p0}, Labcd/Ds;->lg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
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
    .registers 13

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-static {p3, v1, p2, p4}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v3

    if-nez p4, :cond_1c

    new-instance p3, Labcd/Zr;

    invoke-virtual {v0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object p4

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-direct {p3, v3, p4, v0, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    goto :goto_2c

    :cond_1c
    new-instance p3, Labcd/Yr;

    invoke-virtual {v0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v4

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v5

    move-object v2, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    :goto_2c
    new-instance p2, Labcd/mt;

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object p3

    invoke-virtual {p3}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p3

    iget-object p4, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {p4, p1}, Labcd/yt;->DW(Labcd/vt;)V

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {p1, p2}, Labcd/yt;->j6(Labcd/vt;)V

    return-void
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/gt;

    invoke-direct {v0, p0}, Labcd/gt;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/gt;->j6()V

    return-void
.end method

.method static synthetic j6(Labcd/bs;)Z
    .registers 1

    invoke-static {p0}, Labcd/gt;->DW(Labcd/bs;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Labcd/gt;Labcd/mt;)Z
    .registers 2

    invoke-direct {p0, p1}, Labcd/gt;->j6(Labcd/mt;)Z

    move-result p0

    return p0
.end method

.method private j6(Labcd/mt;)Z
    .registers 8

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    iget-object v3, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {v3, v1}, Labcd/yt;->j6(Labcd/bs;)Z

    move-result v1

    if-nez v1, :cond_71

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_71

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v1

    invoke-interface {v1}, Labcd/Rs;->a8()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v1}, Labcd/Rs;->j3()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_71

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    check-cast v1, Labcd/ms;

    invoke-direct {p0, p1, v4, v3, v1}, Labcd/gt;->j6(Labcd/mt;Labcd/cs;ILabcd/ms;)V

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v1, 0x38

    const/4 v3, 0x1

    if-ne v0, v1, :cond_70

    invoke-virtual {p1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object p1

    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v0, p0, Labcd/gt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/tt;

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/mt;

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v5, v1}, Labcd/gt;->j6(Labcd/mt;Labcd/cs;ILabcd/ms;)V

    :cond_70
    return v3

    :cond_71
    return v2
.end method
