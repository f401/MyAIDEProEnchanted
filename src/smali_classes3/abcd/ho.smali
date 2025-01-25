.class public final Labcd/ho;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Vn;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Z

.field private Zo:I

.field private final j6:Labcd/Fn;

.field private v5:Z


# direct methods
.method public constructor <init>(Labcd/Fn;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ho;->j6:Labcd/Fn;

    iput p3, p0, Labcd/ho;->DW:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Labcd/ho;->Zo:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/ho;->Hw:Z

    iput-boolean p1, p0, Labcd/ho;->v5:Z

    return-void
.end method

.method private DW(Labcd/Vn;)Labcd/Xn;
    .registers 4

    invoke-virtual {p1}, Labcd/Vn;->Hw()Labcd/Vn;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/ho;->j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No expanded opcode for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/Ut;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW([Labcd/Xn;)V
    .registers 7

    iget v0, p0, Labcd/ho;->Zo:I

    if-nez v0, :cond_29

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2f

    iget-object v2, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Vn;

    invoke-virtual {v2}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_26

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Labcd/Vn;->j6(Labcd/Xn;)Labcd/Vn;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_29
    invoke-direct {p0, p1}, Labcd/ho;->FH([Labcd/Xn;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    :cond_2f
    return-void
.end method

.method private FH([Labcd/Xn;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Labcd/Xn;",
            ")",
            "Ljava/util/ArrayList<",
            "Labcd/Vn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_52

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Vn;

    invoke-virtual {v3}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v4

    aget-object v5, p1, v2

    if-eqz v5, :cond_23

    const/4 v6, 0x0

    move-object v8, v6

    goto :goto_3c

    :cond_23
    invoke-direct {p0, v3}, Labcd/ho;->DW(Labcd/Vn;)Labcd/Xn;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v6

    invoke-virtual {v6, v3}, Labcd/ao;->FH(Labcd/Vn;)Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v3, v6}, Labcd/Vn;->j6(Ljava/util/BitSet;)Labcd/Vn;

    move-result-object v7

    invoke-virtual {v3, v6}, Labcd/Vn;->DW(Ljava/util/BitSet;)Labcd/Vn;

    move-result-object v8

    invoke-virtual {v3, v6}, Labcd/Vn;->FH(Ljava/util/BitSet;)Labcd/Vn;

    move-result-object v3

    move-object v6, v7

    :goto_3c
    if-eqz v6, :cond_41

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    if-eq v5, v4, :cond_47

    invoke-virtual {v3, v5}, Labcd/Vn;->j6(Labcd/Xn;)Labcd/Vn;

    move-result-object v3

    :cond_47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_4f

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_52
    return-object v1
.end method

.method private static FH(Labcd/Vn;)Z
    .registers 6

    instance-of v0, p0, Labcd/do;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    check-cast p0, Labcd/do;

    invoke-virtual {p0}, Labcd/do;->we()Labcd/ds;

    move-result-object p0

    invoke-virtual {p0}, Labcd/ds;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_32

    invoke-virtual {p0, v3}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v4

    invoke-static {v4}, Labcd/ho;->j6(Labcd/bs;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_21
    instance-of v0, p0, Labcd/eo;

    if-eqz v0, :cond_32

    check-cast p0, Labcd/eo;

    invoke-virtual {p0}, Labcd/eo;->we()Labcd/bs;

    move-result-object p0

    invoke-static {p0}, Labcd/ho;->j6(Labcd/bs;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v2

    :cond_32
    return v1
.end method

.method private Hw(Labcd/Vn;)V
    .registers 4

    iget-boolean v0, p0, Labcd/ho;->Hw:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p1}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/hs;->j6()I

    move-result v0

    if-ltz v0, :cond_11

    iput-boolean v1, p0, Labcd/ho;->Hw:Z

    :cond_11
    iget-boolean v0, p0, Labcd/ho;->v5:Z

    if-nez v0, :cond_1d

    invoke-static {p1}, Labcd/ho;->FH(Labcd/Vn;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iput-boolean v1, p0, Labcd/ho;->v5:Z

    :cond_1d
    return-void
.end method

.method private Hw([Labcd/Xn;)V
    .registers 10

    iget v0, p0, Labcd/ho;->Zo:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_6
    invoke-direct {p0, p1}, Labcd/ho;->j6([Labcd/Xn;)I

    move-result v2

    if-lt v0, v2, :cond_f

    iput v0, p0, Labcd/ho;->Zo:I

    return-void

    :cond_f
    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_32

    iget-object v5, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Vn;

    instance-of v6, v5, Labcd/Sn;

    if-nez v6, :cond_2f

    iget-object v6, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    sub-int v7, v2, v0

    invoke-virtual {v5, v7}, Labcd/Vn;->DW(I)Labcd/Vn;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_32
    move v0, v2

    goto :goto_6
.end method

.method private VH()Z
    .registers 12

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_8b

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Vn;

    instance-of v4, v3, Labcd/po;

    const/4 v5, 0x1

    if-nez v4, :cond_18

    goto :goto_77

    :cond_18
    invoke-virtual {v3}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Labcd/po;

    invoke-virtual {v4}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v7

    invoke-virtual {v7, v6}, Labcd/ao;->j6(Labcd/po;)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_77

    :cond_2a
    invoke-virtual {v4}, Labcd/Xn;->j6()I

    move-result v2

    const/16 v7, 0x28

    if-ne v2, v7, :cond_4a

    invoke-direct {p0, v3, v4}, Labcd/ho;->j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;

    move-result-object v2

    if-eqz v2, :cond_42

    iget-object v4, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Labcd/Vn;->j6(Labcd/Xn;)Labcd/Vn;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :cond_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    :try_start_4a
    iget-object v2, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sn;
    :try_end_54
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_54} :catch_82
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_54} :catch_79

    new-instance v4, Labcd/po;

    sget-object v7, Labcd/Yn;->vJ:Labcd/Xn;

    invoke-virtual {v6}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v8

    sget-object v9, Labcd/cs;->FH:Labcd/cs;

    invoke-virtual {v6}, Labcd/po;->we()Labcd/Sn;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object v7, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Labcd/po;->j6(Labcd/Sn;)Labcd/po;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    :goto_76
    const/4 v2, 0x1

    :goto_77
    add-int/2addr v1, v5

    goto :goto_8

    :catch_79
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_82
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    return v2
.end method

.method private Zo()V
    .registers 2

    :cond_0
    invoke-direct {p0}, Labcd/ho;->v5()V

    invoke-direct {p0}, Labcd/ho;->VH()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private gn()[Labcd/Xn;
    .registers 5

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Labcd/Xn;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Vn;

    invoke-virtual {v3}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method private j6([Labcd/Xn;)I
    .registers 8

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Labcd/ho;->Zo:I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_37

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Vn;

    aget-object v4, p1, v2

    invoke-direct {p0, v3, v4}, Labcd/ho;->j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;

    move-result-object v5

    if-nez v5, :cond_2f

    invoke-direct {p0, v3}, Labcd/ho;->DW(Labcd/Vn;)Labcd/Xn;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/ao;->FH(Labcd/Vn;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/Vn;->Hw(Ljava/util/BitSet;)I

    move-result v3

    if-le v3, v1, :cond_32

    move v1, v3

    goto :goto_32

    :cond_2f
    if-ne v4, v5, :cond_32

    goto :goto_34

    :cond_32
    :goto_32
    aput-object v5, p1, v2

    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_37
    return v1
.end method

.method private j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;
    .registers 4

    :goto_0
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/ao;->VH(Labcd/Vn;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    iget-object v0, p0, Labcd/ho;->j6:Labcd/Fn;

    invoke-static {p2, v0}, Labcd/Yn;->j6(Labcd/Xn;Labcd/Fn;)Labcd/Xn;

    move-result-object p2

    goto :goto_0

    :cond_14
    :goto_14
    return-object p2
.end method

.method private static j6(Labcd/Tn;Labcd/Un$a;)V
    .registers 4

    invoke-virtual {p0}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Un$a;->j6(Labcd/ms;)I

    move-result v1

    if-ltz v1, :cond_d

    invoke-virtual {p0, v1}, Labcd/Tn;->Hw(I)V

    :cond_d
    instance-of v1, v0, Labcd/Fs;

    if-eqz v1, :cond_20

    check-cast v0, Labcd/Fs;

    invoke-virtual {v0}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Un$a;->j6(Labcd/ms;)I

    move-result p1

    if-ltz p1, :cond_20

    invoke-virtual {p0, p1}, Labcd/Tn;->FH(I)V

    :cond_20
    return-void
.end method

.method private static j6(Ljava/util/HashSet;Labcd/Vn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Labcd/ms;",
            ">;",
            "Labcd/Vn;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Labcd/Tn;

    if-eqz v0, :cond_e

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_e
    instance-of v0, p1, Labcd/do;

    if-eqz v0, :cond_29

    check-cast p1, Labcd/do;

    invoke-virtual {p1}, Labcd/do;->we()Labcd/ds;

    move-result-object p1

    invoke-virtual {p1}, Labcd/ds;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_36

    invoke-virtual {p1, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v2

    invoke-static {p0, v2}, Labcd/ho;->j6(Ljava/util/HashSet;Labcd/bs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_29
    instance-of v0, p1, Labcd/eo;

    if-eqz v0, :cond_36

    check-cast p1, Labcd/eo;

    invoke-virtual {p1}, Labcd/eo;->we()Labcd/bs;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/ho;->j6(Ljava/util/HashSet;Labcd/bs;)V

    :cond_36
    :goto_36
    return-void
.end method

.method private static j6(Ljava/util/HashSet;Labcd/bs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Labcd/ms;",
            ">;",
            "Labcd/bs;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vr;->Hw()Labcd/Js;

    move-result-object v1

    invoke-virtual {v0}, Labcd/Vr;->Zo()Labcd/Js;

    move-result-object v0

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object p1

    sget-object v2, Labcd/Qs;->EQ:Labcd/Qs;

    if-eq p1, v2, :cond_1e

    invoke-static {p1}, Labcd/Ks;->DW(Labcd/Qs;)Labcd/Ks;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v1, :cond_23

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v0, :cond_28

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_28
    return-void
.end method

.method private static j6(Labcd/bs;)Z
    .registers 1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Vr;->Hw()Labcd/Js;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private v5()V
    .registers 5

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1d

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Vn;

    invoke-virtual {v3, v2}, Labcd/Vn;->j6(I)V

    invoke-virtual {v3}, Labcd/Vn;->DW()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-void
.end method


# virtual methods
.method public DW()Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Vn;

    invoke-static {v0, v2}, Labcd/ho;->j6(Ljava/util/HashSet;Labcd/Vn;)V

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public FH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/ho;->v5:Z

    return v0
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Labcd/ho;->Hw:Z

    return v0
.end method

.method public j6()Labcd/Wn;
    .registers 4

    iget v0, p0, Labcd/ho;->Zo:I

    if-gez v0, :cond_1d

    invoke-direct {p0}, Labcd/ho;->gn()[Labcd/Xn;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/ho;->Hw([Labcd/Xn;)V

    invoke-direct {p0, v0}, Labcd/ho;->DW([Labcd/Xn;)V

    invoke-direct {p0}, Labcd/ho;->Zo()V

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    iget v1, p0, Labcd/ho;->Zo:I

    iget v2, p0, Labcd/ho;->DW:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Labcd/Wn;->j6(Ljava/util/ArrayList;I)Labcd/Wn;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(ILabcd/Sn;)V
    .registers 5

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :try_start_9
    iget-object p1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/po;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_11} :catch_24
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_1b

    iget-object v1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Labcd/po;->j6(Labcd/Sn;)Labcd/po;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_1b
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-reversible instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_24
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few instructions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Un$a;)V
    .registers 5

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Vn;

    instance-of v2, v1, Labcd/Tn;

    if-eqz v2, :cond_6

    check-cast v1, Labcd/Tn;

    invoke-static {v1, p1}, Labcd/ho;->j6(Labcd/Tn;Labcd/Un$a;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public j6(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Labcd/ho;->Hw(Labcd/Vn;)V

    return-void
.end method
