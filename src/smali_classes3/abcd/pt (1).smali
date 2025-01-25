.class public Labcd/pt;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/BitSet;

.field j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/pt;->j6:Labcd/yt;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    return-void
.end method

.method private j6()V
    .registers 7

    iget-object v0, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v3, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->j3()I

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    iget-object v0, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_68

    iget-object v2, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->clear(I)V

    iget-object v2, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v2, v0}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v2

    check-cast v2, Labcd/ot;

    invoke-virtual {p0, v2}, Labcd/pt;->j6(Labcd/ot;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {v2, v0}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v2, :cond_24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/vt;

    invoke-virtual {v4}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v5

    if-eqz v5, :cond_65

    instance-of v4, v4, Labcd/ot;

    if-eqz v4, :cond_65

    iget-object v4, p0, Labcd/pt;->DW:Ljava/util/BitSet;

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_68
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
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method


# virtual methods
.method j6(Labcd/ot;)Z
    .registers 14

    iget-object v0, p0, Labcd/pt;->j6:Labcd/yt;

    invoke-virtual {p1, v0}, Labcd/ot;->j6(Labcd/yt;)V

    invoke-virtual {p1}, Labcd/ot;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v2

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v1, :cond_23

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/bs;->j3()I

    move-result v8

    if-eqz v8, :cond_20

    move v4, v5

    move-object v6, v7

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_23
    if-nez v6, :cond_26

    return v3

    :cond_26
    invoke-virtual {v6}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v5

    invoke-virtual {v6}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_31
    if-ge v8, v1, :cond_5b

    if-ne v8, v4, :cond_36

    goto :goto_58

    :cond_36
    invoke-virtual {v0, v8}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v10

    invoke-virtual {v10}, Labcd/bs;->j3()I

    move-result v11

    if-nez v11, :cond_41

    goto :goto_58

    :cond_41
    if-eqz v9, :cond_4f

    invoke-virtual {v10}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v9

    invoke-static {v5, v9}, Labcd/pt;->j6(Labcd/Vr;Labcd/Vr;)Z

    move-result v9

    if-eqz v9, :cond_4f

    const/4 v9, 0x1

    goto :goto_50

    :cond_4f
    const/4 v9, 0x0

    :goto_50
    invoke-virtual {v10}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v10

    invoke-static {v6, v10}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v6

    :goto_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_5b
    if-eqz v6, :cond_79

    if-eqz v9, :cond_60

    move-object v2, v5

    :cond_60
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v1

    if-ne v1, v6, :cond_75

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-static {v2, v0}, Labcd/pt;->j6(Labcd/Vr;Labcd/Vr;)Z

    move-result v0

    if-eqz v0, :cond_75

    return v3

    :cond_75
    invoke-virtual {p1, v6, v2}, Labcd/ot;->j6(Labcd/Rs;Labcd/Vr;)V

    return v7

    :cond_79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7e
    if-ge v3, v1, :cond_93

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t map types in phi insn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_ab

    :goto_aa
    throw p1

    :goto_ab
    goto :goto_aa
.end method
