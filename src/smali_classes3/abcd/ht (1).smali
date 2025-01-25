.class public Labcd/ht;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Labcd/it;

.field private final Hw:Ljava/util/BitSet;

.field private final j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iput-object p1, p0, Labcd/ht;->j6:Labcd/yt;

    iput-object v0, p0, Labcd/ht;->DW:Ljava/util/ArrayList;

    new-instance v1, Labcd/it;

    invoke-direct {v1, p1}, Labcd/it;-><init>(Labcd/yt;)V

    iput-object v1, p0, Labcd/ht;->FH:Labcd/it;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    return-void

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6()Labcd/it;
    .registers 3

    iget-object v0, p0, Labcd/ht;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Labcd/ht;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->v5()I

    move-result v0

    :goto_e
    if-ltz v0, :cond_20

    iget-object v1, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-direct {p0, v0}, Labcd/ht;->j6(I)V

    iget-object v0, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_e

    :cond_20
    iget-object v0, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/ht;->FH:Labcd/it;

    return-object v0
.end method

.method public static j6(Labcd/yt;)Labcd/it;
    .registers 2

    new-instance v0, Labcd/ht;

    invoke-direct {v0, p0}, Labcd/ht;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/ht;->j6()Labcd/it;

    move-result-object p0

    return-object p0
.end method

.method private j6(I)V
    .registers 15

    iget-object v0, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v0, p1}, Labcd/it;->FH(I)Labcd/ds;

    move-result-object v0

    iget-object v1, p0, Labcd/ht;->DW:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Labcd/ht;->j6:Labcd/yt;

    invoke-virtual {v4}, Labcd/yt;->VH()I

    move-result v4

    if-ne p1, v4, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 p1, v3, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/vt;

    invoke-virtual {v4}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v5

    invoke-interface {v5}, Labcd/Ss;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    if-eqz v5, :cond_43

    invoke-virtual {v4}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v4

    if-eqz v4, :cond_43

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    :goto_44
    move-object v5, v0

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_ab

    if-eqz v7, :cond_53

    if-ne v4, p1, :cond_53

    invoke-virtual {v5}, Labcd/hu;->we()V

    invoke-virtual {v5}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v5

    :cond_53
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/vt;

    invoke-virtual {v8}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v9

    if-nez v9, :cond_7b

    invoke-virtual {v8}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v8

    if-eqz v8, :cond_a8

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v9

    invoke-virtual {v5, v9}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v9

    if-eqz v9, :cond_a8

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v8

    invoke-virtual {v5, v8}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v8

    invoke-virtual {v5, v8}, Labcd/ds;->Hw(Labcd/bs;)V

    goto :goto_a8

    :cond_7b
    invoke-virtual {v9}, Labcd/bs;->rN()Labcd/bs;

    move-result-object v9

    invoke-virtual {v5, v9}, Labcd/ds;->DW(Labcd/bs;)Labcd/bs;

    move-result-object v10

    invoke-virtual {v9, v10}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a8

    invoke-virtual {v9}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v10

    invoke-virtual {v5, v10}, Labcd/ds;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object v10

    if-eqz v10, :cond_a0

    invoke-virtual {v10}, Labcd/bs;->we()I

    move-result v11

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v12

    if-eq v11, v12, :cond_a0

    invoke-virtual {v5, v10}, Labcd/ds;->Hw(Labcd/bs;)V

    :cond_a0
    iget-object v10, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v10, v8, v9}, Labcd/it;->j6(Labcd/vt;Labcd/bs;)V

    invoke-virtual {v5, v9}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_a8
    :goto_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_ab
    invoke-virtual {v5}, Labcd/hu;->we()V

    invoke-virtual {v1}, Labcd/tt;->J8()Labcd/au;

    move-result-object p1

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v2

    invoke-virtual {v1}, Labcd/tt;->u7()I

    move-result v1

    :goto_ba
    if-ge v6, v2, :cond_d5

    invoke-virtual {p1, v6}, Labcd/au;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_c4

    move-object v4, v5

    goto :goto_c5

    :cond_c4
    move-object v4, v0

    :goto_c5
    iget-object v7, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v7, v3, v4}, Labcd/it;->j6(ILabcd/ds;)Z

    move-result v4

    if-eqz v4, :cond_d2

    iget-object v4, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    :cond_d2
    add-int/lit8 v6, v6, 0x1

    goto :goto_ba

    :cond_d5
    return-void
.end method
