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
            "Ljava/util/ArrayList<",
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

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/yt;->tp()[Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    return-void
.end method

.method private DW()V
    .registers 9

    invoke-direct {p0}, Labcd/Xs;->j6()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/Xs;->j6:Labcd/yt;

    new-instance v2, Labcd/Xs$a;

    iget-object v3, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-direct {v2, v3}, Labcd/Xs$a;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Labcd/yt;->j6(Labcd/vt$a;)V

    :cond_14
    :goto_14
    iget-object v1, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_79

    iget-object v3, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v3, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_33

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Labcd/Xs;->j6(ILjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_33
    iget-object v3, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v3, v1}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_14

    :cond_40
    invoke-virtual {v1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v4

    :goto_48
    if-ge v2, v4, :cond_75

    invoke-virtual {v3, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    iget-object v6, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v7

    invoke-virtual {v6, v7}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v6

    invoke-static {v6}, Labcd/Xs;->DW(Labcd/vt;)Z

    move-result v6

    if-nez v6, :cond_72

    iget-object v6, p0, Labcd/Xs;->FH:Ljava/util/BitSet;

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_75
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_79
    iget-object v1, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v1, v0}, Labcd/yt;->j6(Ljava/util/Set;)V

    return-void
.end method

.method private static DW(Labcd/vt;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p0}, Labcd/vt;->EQ()Z

    move-result p0

    return p0
.end method

.method private j6()V
    .registers 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->j6()V

    iget-object v1, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->aM()Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_14

    :cond_27
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/vt;

    invoke-virtual {v5}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v7

    if-eqz v7, :cond_4a

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4a
    const/4 v8, 0x0

    :goto_4b
    if-ge v8, v7, :cond_5f

    invoke-virtual {v6, v8}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v9

    iget-object v10, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v9

    aget-object v9, v10, v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    :cond_5f
    invoke-virtual {v5}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v5

    if-nez v5, :cond_66

    goto :goto_88

    :cond_66
    iget-object v6, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_72
    :goto_72
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/vt;

    instance-of v8, v7, Labcd/ot;

    if-eqz v8, :cond_72

    check-cast v7, Labcd/ot;

    invoke-virtual {v7, v5}, Labcd/ot;->DW(Labcd/bs;)V

    goto :goto_72

    :cond_88
    :goto_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_8b
    iget-object v1, p0, Labcd/Xs;->j6:Labcd/yt;

    invoke-virtual {v1, v0}, Labcd/yt;->j6(Ljava/util/Set;)V

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

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v0

    :cond_a
    iget-object v1, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    invoke-static {v2}, Labcd/Xs;->DW(Labcd/vt;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v3

    :cond_26
    if-nez p2, :cond_2f

    new-instance p2, Ljava/util/BitSet;

    iget v1, p0, Labcd/Xs;->DW:I

    invoke-direct {p2, v1}, Ljava/util/BitSet;-><init>(I)V

    :cond_2f
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Labcd/Xs;->Hw:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-direct {p0, v1, p2}, Labcd/Xs;->j6(ILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_56
    return v3

    :cond_57
    return v0
.end method

.method static synthetic j6(Labcd/vt;)Z
    .registers 1

    invoke-static {p0}, Labcd/Xs;->DW(Labcd/vt;)Z

    move-result p0

    return p0
.end method
