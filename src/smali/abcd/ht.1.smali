.class public Labcd/ht;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iput-object p1, p0, Labcd/ht;->j6:Labcd/yt;

    iput-object v0, p0, Labcd/ht;->DW:Ljava/util/ArrayList;

    new-instance v1, Labcd/it;

    invoke-direct {v1, p1}, Labcd/it;-><init>(Labcd/yt;)V

    iput-object v1, p0, Labcd/ht;->FH:Labcd/it;

    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6()Labcd/it;
    .registers 3

    iget-object v0, p0, Labcd/ht;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Labcd/ht;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->v5()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-direct {p0, v0}, Labcd/ht;->j6(I)V

    iget-object v0, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
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

    move-result-object v0

    return-object v0
.end method

.method private j6(I)V
    .registers 16

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v0, p1}, Labcd/it;->FH(I)Labcd/ds;

    move-result-object v5

    iget-object v0, p0, Labcd/ht;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    iget-object v1, p0, Labcd/ht;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->VH()I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v9, v8, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v4

    invoke-interface {v4}, Labcd/Ss;->size()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_1
    move-object v1, v5

    move v6, v3

    :goto_2
    if-ge v6, v8, :cond_7

    if-eqz v2, :cond_a

    if-ne v6, v9, :cond_a

    invoke-virtual {v1}, Labcd/hu;->we()V

    invoke-virtual {v1}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v1

    move-object v4, v1

    :goto_3
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-virtual {v1}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-virtual {v1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v10

    invoke-virtual {v4, v10}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v4, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v4, v1}, Labcd/ds;->Hw(Labcd/bs;)V

    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object v1, v4

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Labcd/bs;->rN()Labcd/bs;

    move-result-object v10

    invoke-virtual {v4, v10}, Labcd/ds;->DW(Labcd/bs;)Labcd/bs;

    move-result-object v11

    invoke-virtual {v10, v11}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v10}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v11

    invoke-virtual {v4, v11}, Labcd/ds;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Labcd/bs;->we()I

    move-result v12

    invoke-virtual {v10}, Labcd/bs;->we()I

    move-result v13

    if-eq v12, v13, :cond_6

    invoke-virtual {v4, v11}, Labcd/ds;->Hw(Labcd/bs;)V

    :cond_6
    iget-object v11, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v11, v1, v10}, Labcd/it;->j6(Labcd/vt;Labcd/bs;)V

    invoke-virtual {v4, v10}, Labcd/ds;->FH(Labcd/bs;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Labcd/hu;->we()V

    invoke-virtual {v0}, Labcd/tt;->J8()Labcd/au;

    move-result-object v2

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v4

    invoke-virtual {v0}, Labcd/tt;->u7()I

    move-result v6

    :goto_5
    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Labcd/au;->get(I)I

    move-result v7

    if-ne v7, v6, :cond_9

    move-object v0, v1

    :goto_6
    iget-object v8, p0, Labcd/ht;->FH:Labcd/it;

    invoke-virtual {v8, v7, v0}, Labcd/it;->j6(ILabcd/ds;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Labcd/ht;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    move-object v0, v5

    goto :goto_6

    :cond_a
    move-object v4, v1

    goto/16 :goto_3
.end method
