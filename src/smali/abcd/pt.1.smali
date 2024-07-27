.class public Labcd/pt;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/BitSet;

.field j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/pt;->j6:Labcd/yt;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    return-void
.end method

.method private j6()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v1

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v3, v0}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->j3()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v0, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v0

    check-cast v0, Labcd/ot;

    invoke-virtual {p0, v0}, Labcd/pt;->j6(Labcd/ot;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v0, v0, Labcd/ot;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/pt;

    invoke-direct {v0, p0}, Labcd/pt;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/pt;->j6()V

    return-void
.end method

.method private static j6(Labcd/Vr;Labcd/Vr;)Z
    .registers 3

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method j6(Labcd/ot;)Z
    .registers 14

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {p1, v0}, Labcd/ot;->j6(Labcd/yt;)V

    invoke-virtual {p1}, Labcd/ot;->tp()Labcd/cs;

    move-result-object v8

    invoke-virtual {v8}, Labcd/Xt;->size()I

    move-result v9

    const/4 v2, -0x1

    move-object v1, v6

    move v3, v5

    :goto_0
    if-ge v3, v9, :cond_0

    invoke-virtual {v8, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->j3()I

    move-result v7

    if-eqz v7, :cond_b

    move v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_2
    return v5

    :cond_2
    invoke-virtual {v1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v3

    invoke-virtual {v1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    move v7, v5

    move v1, v4

    :goto_3
    if-ge v7, v9, :cond_6

    if-ne v7, v2, :cond_4

    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v7}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v10

    invoke-virtual {v10}, Labcd/bs;->j3()I

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    invoke-static {v3, v1}, Labcd/pt;->j6(Labcd/Vr;Labcd/Vr;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_5
    invoke-virtual {v10}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v10

    invoke-static {v0, v10}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v0

    goto :goto_4

    :cond_5
    move v1, v5

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_8

    if-eqz v1, :cond_a

    move-object v1, v3

    :goto_6
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v3

    if-ne v3, v0, :cond_7

    invoke-virtual {v2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/pt;->j6(Labcd/Vr;Labcd/Vr;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    invoke-virtual {p1, v0, v1}, Labcd/ot;->j6(Labcd/Rs;Labcd/Vr;)V

    move v5, v4

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    if-ge v5, v9, :cond_9

    invoke-virtual {v8, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t map types in phi insn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v1, v6

    goto :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_1
.end method
