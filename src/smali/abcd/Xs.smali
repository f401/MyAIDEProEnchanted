.class public Labcd/Xs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Xs$a;
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Ljava/util/BitSet;

.field private final Hw:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v0

    iput v0, p0, Labcd/Xs;->DW:I

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Labcd/Xs;->DW:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    iget-object v0, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->tp()[Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    return-void
.end method

.method private DW()V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/Xs;->j6()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/Xs;->j6:Labcd/yt;

    new-instance v3, Labcd/Xs$a;

    iget-object v4, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-direct {v3, v4}, Labcd/Xs$a;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v0, v3}, Labcd/yt;->j6(Labcd/vt$a;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v3, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->clear(I)V

    iget-object v3, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Labcd/Xs;->j6(ILjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v3, v0}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v5

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    invoke-virtual {v4, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    iget-object v7, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v8

    invoke-virtual {v7, v8}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v7

    invoke-static {v7}, Labcd/Xs;->DW(Labcd/vt;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->j6(Ljava/util/Set;)V

    return-void
.end method

.method private static DW(Labcd/vt;)Z
    .registers 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Labcd/vt;->EQ()Z

    move-result v0

    goto :goto_0
.end method

.method private j6()V
    .registers 12

    const/4 v3, 0x0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->j6()V

    iget-object v0, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->aM()Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Xt;->size()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_2

    invoke-virtual {v7, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v9

    iget-object v10, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v9

    aget-object v9, v10, v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v7

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    instance-of v8, v1, Labcd/ot;

    if-eqz v8, :cond_5

    check-cast v1, Labcd/ot;

    invoke-virtual {v1, v4}, Labcd/ot;->DW(Labcd/bs;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v0, v5}, Labcd/yt;->j6(Ljava/util/Set;)V

    return-void
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/Xs;

    invoke-direct {v0, p0}, Labcd/Xs;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/Xs;->DW()V

    return-void
.end method

.method private j6(ILjava/util/BitSet;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-static {v0}, Labcd/Xs;->DW(Labcd/vt;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/BitSet;

    iget v0, p0, Labcd/Xs;->DW:I

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-direct {p0, v0, p2}, Labcd/Xs;->j6(ILjava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method static synthetic j6(Labcd/vt;)Z
    .registers 2

    invoke-static {p0}, Labcd/Xs;->DW(Labcd/vt;)Z

    move-result v0

    return v0
.end method
