.class public final Labcd/ho;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ho;->j6:Labcd/Fn;

    iput p3, p0, Labcd/ho;->DW:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Labcd/ho;->Zo:I

    iput-boolean v1, p0, Labcd/ho;->Hw:Z

    iput-boolean v1, p0, Labcd/ho;->v5:Z

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

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No expanded opcode for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/Ut;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private DW([Labcd/Xn;)V
    .registers 7

    iget v0, p0, Labcd/ho;->Zo:I

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Labcd/Vn;->j6(Labcd/Xn;)Labcd/Vn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Labcd/ho;->FH([Labcd/Xn;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private FH([Labcd/Xn;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Labcd/Xn;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Vn;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    mul-int/lit8 v0, v6, 0x2

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v8

    aget-object v3, p1, v5

    if-eqz v3, :cond_3

    move-object v1, v2

    move-object v4, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eq v3, v8, :cond_1

    invoke-virtual {v0, v3}, Labcd/Vn;->j6(Labcd/Xn;)Labcd/Vn;

    move-result-object v0

    :cond_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Labcd/ho;->DW(Labcd/Vn;)Labcd/Xn;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ao;->FH(Labcd/Vn;)Ljava/util/BitSet;

    move-result-object v9

    invoke-virtual {v0, v9}, Labcd/Vn;->j6(Ljava/util/BitSet;)Labcd/Vn;

    move-result-object v1

    invoke-virtual {v0, v9}, Labcd/Vn;->DW(Ljava/util/BitSet;)Labcd/Vn;

    move-result-object v4

    invoke-virtual {v0, v9}, Labcd/Vn;->FH(Ljava/util/BitSet;)Labcd/Vn;

    move-result-object v0

    goto :goto_1

    :cond_4
    return-object v7
.end method

.method private static FH(Labcd/Vn;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p0, Labcd/do;

    if-eqz v2, :cond_2

    check-cast p0, Labcd/do;

    invoke-virtual {p0}, Labcd/do;->we()Labcd/ds;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ds;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v5

    invoke-static {v5}, Labcd/ho;->j6(Labcd/bs;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Labcd/eo;

    if-eqz v2, :cond_3

    check-cast p0, Labcd/eo;

    invoke-virtual {p0}, Labcd/eo;->we()Labcd/bs;

    move-result-object v2

    invoke-static {v2}, Labcd/ho;->j6(Labcd/bs;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private Hw(Labcd/Vn;)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Labcd/ho;->Hw:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/hs;->j6()I

    move-result v0

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Labcd/ho;->Hw:Z

    :cond_0
    iget-boolean v0, p0, Labcd/ho;->v5:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Labcd/ho;->FH(Labcd/Vn;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Labcd/ho;->v5:Z

    :cond_1
    return-void
.end method

.method private Hw([Labcd/Xn;)V
    .registers 10

    const/4 v2, 0x0

    iget v0, p0, Labcd/ho;->Zo:I

    if-gez v0, :cond_3

    move v1, v2

    :goto_0
    invoke-direct {p0, p1}, Labcd/ho;->j6([Labcd/Xn;)I

    move-result v3

    if-lt v1, v3, :cond_0

    iput v1, p0, Labcd/ho;->Zo:I

    return-void

    :cond_0
    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    instance-of v6, v0, Labcd/Sn;

    if-nez v6, :cond_1

    iget-object v6, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    sub-int v7, v3, v1

    invoke-virtual {v0, v7}, Labcd/Vn;->DW(I)Labcd/Vn;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private VH()Z
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    instance-of v1, v0, Labcd/po;

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v5

    move-object v1, v0

    check-cast v1, Labcd/po;

    invoke-virtual {v5}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v6

    invoke-virtual {v6, v1}, Labcd/ao;->j6(Labcd/po;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Labcd/Xn;->j6()I

    move-result v4

    const/16 v6, 0x28

    if-ne v4, v6, :cond_3

    invoke-direct {p0, v0, v5}, Labcd/ho;->j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Labcd/Vn;->j6(Labcd/Xn;)Labcd/Vn;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v3

    :goto_2
    const/4 v2, 0x1

    move v4, v2

    move v3, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sn;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Labcd/po;

    sget-object v6, Labcd/Yn;->vJ:Labcd/Xn;

    invoke-virtual {v1}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v7

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    invoke-virtual {v1}, Labcd/po;->we()Labcd/Sn;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object v6, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Labcd/po;->j6(Labcd/Sn;)Labcd/po;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v1, v4

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v4
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

    move-result v2

    new-array v3, v2, [Labcd/Xn;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private j6([Labcd/Xn;)I
    .registers 8

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v1, p0, Labcd/ho;->Zo:I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    aget-object v4, p1, v2

    invoke-direct {p0, v0, v4}, Labcd/ho;->j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-direct {p0, v0}, Labcd/ho;->DW(Labcd/Vn;)Labcd/Xn;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v4

    invoke-virtual {v4, v0}, Labcd/ao;->FH(Labcd/Vn;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/Vn;->Hw(Ljava/util/BitSet;)I

    move-result v0

    if-le v0, v1, :cond_2

    :goto_1
    aput-object v5, p1, v2

    move v1, v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-eq v4, v5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private j6(Labcd/Vn;Labcd/Xn;)Labcd/Xn;
    .registers 4

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/ao;->VH(Labcd/Vn;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p2

    :cond_1
    iget-object v0, p0, Labcd/ho;->j6:Labcd/Fn;

    invoke-static {p2, v0}, Labcd/Yn;->j6(Labcd/Xn;Labcd/Fn;)Labcd/Xn;

    move-result-object p2

    goto :goto_0
.end method

.method private static j6(Labcd/Tn;Labcd/Un$a;)V
    .registers 4

    invoke-virtual {p0}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Un$a;->j6(Labcd/ms;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Labcd/Tn;->Hw(I)V

    :cond_0
    instance-of v1, v0, Labcd/Fs;

    if-eqz v1, :cond_1

    check-cast v0, Labcd/Fs;

    invoke-virtual {v0}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Un$a;->j6(Labcd/ms;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Labcd/Tn;->FH(I)V

    :cond_1
    return-void
.end method

.method private static j6(Ljava/util/HashSet;Labcd/Vn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Labcd/ms;",
            ">;",
            "Labcd/Vn;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Labcd/Tn;

    if-eqz v0, :cond_1

    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Labcd/do;

    if-eqz v0, :cond_2

    check-cast p1, Labcd/do;

    invoke-virtual {p1}, Labcd/do;->we()Labcd/ds;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ds;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v3

    invoke-static {p0, v3}, Labcd/ho;->j6(Ljava/util/HashSet;Labcd/bs;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Labcd/eo;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/eo;

    invoke-virtual {p1}, Labcd/eo;->we()Labcd/bs;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/ho;->j6(Ljava/util/HashSet;Labcd/bs;)V

    goto :goto_0
.end method

.method private static j6(Ljava/util/HashSet;Labcd/bs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Labcd/ms;",
            ">;",
            "Labcd/bs;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vr;->Hw()Labcd/Js;

    move-result-object v1

    invoke-virtual {v0}, Labcd/Vr;->Zo()Labcd/Js;

    move-result-object v0

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    sget-object v3, Labcd/Qs;->EQ:Labcd/Qs;

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Labcd/Ks;->DW(Labcd/Qs;)Labcd/Ks;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static j6(Labcd/bs;)Z
    .registers 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vr;->Hw()Labcd/Js;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v0, v1}, Labcd/Vn;->j6(I)V

    invoke-virtual {v0}, Labcd/Vn;->DW()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public DW()Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-static {v1, v0}, Labcd/ho;->j6(Ljava/util/HashSet;Labcd/Vn;)V

    goto :goto_0

    :cond_0
    return-object v1
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

    if-gez v0, :cond_0

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

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(ILabcd/Sn;)V
    .registers 6

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    :try_start_0
    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/po;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Labcd/po;->j6(Labcd/Sn;)Labcd/po;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/Un$a;)V
    .registers 5

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    instance-of v2, v0, Labcd/Tn;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/Tn;

    invoke-static {v0, p1}, Labcd/ho;->j6(Labcd/Tn;Labcd/Un$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j6(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/ho;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Labcd/ho;->Hw(Labcd/Vn;)V

    return-void
.end method
