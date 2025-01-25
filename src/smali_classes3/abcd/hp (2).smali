.class public final Labcd/hp;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/co;

.field private EQ:Labcd/Lt;

.field private final FH:Labcd/Qt;

.field private final Hw:Labcd/jp;

.field private J0:Ljava/lang/String;

.field private J8:Z

.field private final VH:Labcd/Os;

.field private final Ws:[Labcd/co$b;

.field private final Zo:I

.field private final gn:Z

.field private final j6:Labcd/io;

.field private tp:I

.field private u7:I

.field private final v5:I

.field private we:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Labcd/io;Labcd/co;Labcd/jp;IIZLabcd/Gs;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/hp;->u7:I

    const/4 v0, 0x1

    iput v0, p0, Labcd/hp;->tp:I

    iput-object p1, p0, Labcd/hp;->j6:Labcd/io;

    iput-object p2, p0, Labcd/hp;->DW:Labcd/co;

    iput-object p3, p0, Labcd/hp;->Hw:Labcd/jp;

    invoke-virtual {p7}, Labcd/qs;->J8()Labcd/Os;

    move-result-object p1

    iput-object p1, p0, Labcd/hp;->VH:Labcd/Os;

    iput-boolean p6, p0, Labcd/hp;->gn:Z

    iput p4, p0, Labcd/hp;->v5:I

    iput p5, p0, Labcd/hp;->Zo:I

    new-instance p1, Labcd/Qt;

    invoke-direct {p1}, Labcd/Qt;-><init>()V

    iput-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    new-array p1, p5, [Labcd/co$b;

    iput-object p1, p0, Labcd/hp;->Ws:[Labcd/co$b;

    return-void
.end method

.method private DW()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Labcd/io$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/hp;->j6:Labcd/io;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    :goto_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_10
    if-ge v1, v0, :cond_1e

    iget-object v3, p0, Labcd/hp;->j6:Labcd/io;

    invoke-virtual {v3, v1}, Labcd/io;->get(I)Labcd/io$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    new-instance v0, Labcd/fp;

    invoke-direct {v0, p0}, Labcd/fp;-><init>(Labcd/hp;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private DW(I)V
    .registers 5

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1, p1}, Labcd/Qt;->DW(I)I

    iget v1, p0, Labcd/hp;->u7:I

    add-int/2addr v1, p1

    iput v1, p0, Labcd/hp;->u7:I

    iget-object p1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez p1, :cond_1e

    iget-object p1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz p1, :cond_39

    :cond_1e
    iget-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {p1}, Labcd/Qt;->v5()I

    move-result p1

    sub-int/2addr p1, v0

    new-array v0, v2, [Ljava/lang/Object;

    iget v1, p0, Labcd/hp;->u7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%04x: advance pc"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_39
    return-void
.end method

.method private DW(Labcd/co$b;)V
    .registers 6

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result v1

    invoke-direct {p0, v1}, Labcd/hp;->Hw(I)V

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v1, :cond_1b

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_3e

    :cond_1b
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Labcd/hp;->u7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: +local restart %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private FH(I)I
    .registers 7

    iget-object v0, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    :goto_6
    if-ge p1, v0, :cond_5b

    iget-object v1, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v1, p1}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v1

    invoke-virtual {v1}, Labcd/co$b;->Hw()I

    move-result v1

    iget v2, p0, Labcd/hp;->u7:I

    if-ne v1, v2, :cond_5b

    iget-object v1, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v1, p1}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v1

    invoke-virtual {v1}, Labcd/co$b;->we()I

    move-result v2

    iget-object v3, p0, Labcd/hp;->Ws:[Labcd/co$b;

    aget-object v4, v3, v2

    if-ne v1, v4, :cond_27

    goto :goto_58

    :cond_27
    aput-object v1, v3, v2

    invoke-virtual {v1}, Labcd/co$b;->j3()Z

    move-result v2

    if-eqz v2, :cond_4d

    if-eqz v4, :cond_49

    invoke-virtual {v1, v4}, Labcd/co$b;->DW(Labcd/co$b;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {v4}, Labcd/co$b;->j3()Z

    move-result v2

    if-nez v2, :cond_41

    invoke-direct {p0, v1}, Labcd/hp;->DW(Labcd/co$b;)V

    goto :goto_58

    :cond_41
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    invoke-direct {p0, v1}, Labcd/hp;->FH(Labcd/co$b;)V

    goto :goto_58

    :cond_4d
    invoke-virtual {v1}, Labcd/co$b;->Zo()Labcd/co$a;

    move-result-object v2

    sget-object v3, Labcd/co$a;->FH:Labcd/co$a;

    if-eq v2, v3, :cond_58

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/co$b;)V

    :cond_58
    :goto_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_5b
    return p1
.end method

.method private FH(Labcd/co$b;)V
    .registers 6

    invoke-virtual {p1}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Labcd/hp;->Hw(Labcd/co$b;)V

    return-void

    :cond_a
    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result v1

    invoke-direct {p0, v1}, Labcd/hp;->Hw(I)V

    invoke-virtual {p1}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/Js;)V

    invoke-virtual {p1}, Labcd/co$b;->aM()Labcd/Ks;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/Ks;)V

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v1, :cond_33

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_56

    :cond_33
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Labcd/hp;->u7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: +local %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_56
    return-void
.end method

.method private FH()[B
    .registers 11

    invoke-direct {p0}, Labcd/hp;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Labcd/hp;->v5()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2e

    :cond_1a
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%04x: prologue end"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_39
    invoke-direct {p0, v2}, Labcd/hp;->FH(I)I

    move-result v2

    invoke-direct {p0, v4, v0}, Labcd/hp;->j6(ILjava/util/ArrayList;)I

    move-result v4

    const v5, 0x7fffffff

    if-ge v2, v3, :cond_51

    iget-object v6, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v6, v2}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v6

    invoke-virtual {v6}, Labcd/co$b;->Hw()I

    move-result v6

    goto :goto_54

    :cond_51
    const v6, 0x7fffffff

    :goto_54
    if-ge v4, v1, :cond_61

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/io$a;

    invoke-virtual {v7}, Labcd/io$a;->j6()I

    move-result v7

    goto :goto_64

    :cond_61
    const v7, 0x7fffffff

    :goto_64
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v5, :cond_6b

    goto :goto_73

    :cond_6b
    iget v9, p0, Labcd/hp;->v5:I

    if-ne v8, v9, :cond_7d

    if-ne v6, v5, :cond_7d

    if-ne v7, v5, :cond_7d

    :goto_73
    invoke-direct {p0}, Labcd/hp;->Hw()V

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    return-object v0

    :cond_7d
    if-ne v8, v7, :cond_8b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/io$a;

    invoke-direct {p0, v5}, Labcd/hp;->j6(Labcd/io$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_8b
    iget v5, p0, Labcd/hp;->u7:I

    sub-int/2addr v8, v5

    invoke-direct {p0, v8}, Labcd/hp;->DW(I)V

    goto :goto_39
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Qt;->writeByte(I)V

    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v0, :cond_e

    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_14

    :cond_e
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method private Hw(I)V
    .registers 4

    if-ltz p1, :cond_8

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0, p1}, Labcd/Qt;->DW(I)I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signed value where unsigned required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Hw(Labcd/co$b;)V
    .registers 6

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result v1

    invoke-direct {p0, v1}, Labcd/hp;->Hw(I)V

    invoke-virtual {p1}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/Js;)V

    invoke-virtual {p1}, Labcd/co$b;->aM()Labcd/Ks;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/Ks;)V

    invoke-virtual {p1}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/Js;)V

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v1, :cond_30

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_53

    :cond_30
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Labcd/hp;->u7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: +localx %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_53
    return-void
.end method

.method private Zo()I
    .registers 3

    iget v0, p0, Labcd/hp;->Zo:I

    iget-object v1, p0, Labcd/hp;->VH:Labcd/Os;

    invoke-virtual {v1}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ps;->rN()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Labcd/hp;->gn:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static j6(II)I
    .registers 3

    const/4 v0, -0x4

    if-lt p0, v0, :cond_e

    const/16 v0, 0xa

    if-gt p0, v0, :cond_e

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p0, p1

    add-int/2addr p0, v0

    return p0

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j6(ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Labcd/io$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_20

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/io$a;

    invoke-virtual {v1}, Labcd/io$a;->j6()I

    move-result v1

    iget v2, p0, Labcd/hp;->u7:I

    if-ne v1, v2, :cond_20

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/io$a;

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/io$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_20
    return p1
.end method

.method private j6(I)V
    .registers 5

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1, p1}, Labcd/Qt;->v5(I)I

    iget v1, p0, Labcd/hp;->tp:I

    add-int/2addr v1, p1

    iput v1, p0, Labcd/hp;->tp:I

    iget-object p1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez p1, :cond_1e

    iget-object p1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3a

    :cond_1e
    iget-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {p1}, Labcd/Qt;->v5()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Labcd/hp;->tp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "line = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private j6(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/hp;->J0:Ljava/lang/String;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/hp;->J0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_15
    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Labcd/hp;->J8:Z

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    invoke-interface {v0, p1, p2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_22
    iget-object p1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz p1, :cond_29

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private j6(Labcd/Js;)V
    .registers 4

    if-eqz p1, :cond_17

    iget-object v0, p0, Labcd/hp;->Hw:Labcd/jp;

    if-nez v0, :cond_7

    goto :goto_17

    :cond_7
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Op;->j6(Labcd/Js;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Labcd/Qt;->DW(I)I

    goto :goto_1d

    :cond_17
    :goto_17
    iget-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/Qt;->DW(I)I

    :goto_1d
    return-void
.end method

.method private j6(Labcd/Ks;)V
    .registers 4

    if-eqz p1, :cond_17

    iget-object v0, p0, Labcd/hp;->Hw:Labcd/jp;

    if-nez v0, :cond_7

    goto :goto_17

    :cond_7
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Labcd/Qt;->DW(I)I

    goto :goto_1d

    :cond_17
    :goto_17
    iget-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/Qt;->DW(I)I

    :goto_1d
    return-void
.end method

.method private j6(Labcd/co$b;)V
    .registers 6

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/Qt;->DW(I)I

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v1, :cond_1d

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_40

    :cond_1d
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Labcd/hp;->u7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: -local %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_40
    return-void
.end method

.method private j6(Labcd/io$a;)V
    .registers 6

    invoke-virtual {p1}, Labcd/io$a;->DW()Labcd/hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/hs;->j6()I

    move-result v0

    invoke-virtual {p1}, Labcd/io$a;->j6()I

    move-result p1

    iget v1, p0, Labcd/hp;->tp:I

    sub-int/2addr v0, v1

    iget v1, p0, Labcd/hp;->u7:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_71

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    const/16 v1, 0xa

    if-le v0, v1, :cond_20

    :cond_1c
    invoke-direct {p0, v0}, Labcd/hp;->j6(I)V

    const/4 v0, 0x0

    :cond_20
    invoke-static {v0, p1}, Labcd/hp;->j6(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_3e

    invoke-direct {p0, p1}, Labcd/hp;->DW(I)V

    invoke-static {v0, v2}, Labcd/hp;->j6(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_3d

    invoke-direct {p0, v0}, Labcd/hp;->j6(I)V

    invoke-static {v2, v2}, Labcd/hp;->j6(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :cond_3e
    :goto_3e
    iget-object v3, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v3, v1}, Labcd/Qt;->writeByte(I)V

    iget v1, p0, Labcd/hp;->tp:I

    add-int/2addr v1, v0

    iput v1, p0, Labcd/hp;->tp:I

    iget v0, p0, Labcd/hp;->u7:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/hp;->u7:I

    iget-object p1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez p1, :cond_55

    iget-object p1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz p1, :cond_70

    :cond_55
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget v0, p0, Labcd/hp;->tp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%04x: line %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_70
    return-void

    :cond_71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/io$a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Labcd/co$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iget-object v3, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v3}, Labcd/Qt;->v5()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2a

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/io$a;

    invoke-virtual {p1}, Labcd/io$a;->DW()Labcd/hs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/hs;->j6()I

    move-result p1

    iput p1, p0, Labcd/hp;->tp:I

    :cond_2a
    iget-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    iget v4, p0, Labcd/hp;->tp:I

    invoke-virtual {p1, v4}, Labcd/Qt;->DW(I)I

    if-eqz v0, :cond_50

    iget-object p1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {p1}, Labcd/Qt;->v5()I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line_start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Labcd/hp;->tp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_50
    invoke-direct {p0}, Labcd/hp;->Zo()I

    move-result p1

    iget-object v3, p0, Labcd/hp;->VH:Labcd/Os;

    invoke-virtual {v3}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v4

    iget-boolean v5, p0, Labcd/hp;->gn:Z

    if-nez v5, :cond_7e

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/co$b;

    invoke-virtual {v6}, Labcd/co$b;->we()I

    move-result v7

    if-ne p1, v7, :cond_66

    iget-object v5, p0, Labcd/hp;->Ws:[Labcd/co$b;

    aput-object v6, v5, p1

    :cond_7c
    add-int/lit8 p1, p1, 0x1

    :cond_7e
    iget-object v5, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v5}, Labcd/Qt;->v5()I

    move-result v5

    iget-object v6, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v6, v4}, Labcd/Qt;->DW(I)I

    if-eqz v0, :cond_a3

    iget-object v6, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v6}, Labcd/Qt;->v5()I

    move-result v6

    sub-int/2addr v6, v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "parameters_size: %04x"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_a3
    const/4 v1, 0x0

    :goto_a4
    if-ge v1, v4, :cond_12a

    invoke-virtual {v3, v1}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v5

    iget-object v6, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v6}, Labcd/Qt;->v5()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_dd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/co$b;

    invoke-virtual {v8}, Labcd/co$b;->we()I

    move-result v10

    if-ne p1, v10, :cond_b4

    invoke-virtual {v8}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v7

    if-eqz v7, :cond_d1

    invoke-direct {p0, v9}, Labcd/hp;->j6(Labcd/Js;)V

    goto :goto_d8

    :cond_d1
    invoke-virtual {v8}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v7

    invoke-direct {p0, v7}, Labcd/hp;->j6(Labcd/Js;)V

    :goto_d8
    iget-object v7, p0, Labcd/hp;->Ws:[Labcd/co$b;

    aput-object v8, v7, p1

    goto :goto_de

    :cond_dd
    move-object v8, v9

    :goto_de
    if-nez v8, :cond_e3

    invoke-direct {p0, v9}, Labcd/hp;->j6(Labcd/Js;)V

    :cond_e3
    if-eqz v0, :cond_121

    if-eqz v8, :cond_f7

    invoke-virtual {v8}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v7

    if-eqz v7, :cond_ee

    goto :goto_f7

    :cond_ee
    invoke-virtual {v8}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v7

    goto :goto_f9

    :cond_f7
    :goto_f7
    const-string v7, "<unnamed>"

    :goto_f9
    iget-object v8, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v8}, Labcd/Qt;->v5()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parameter "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "v"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int/2addr v8, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_121
    invoke-virtual {v5}, Labcd/Qs;->Zo()I

    move-result v5

    add-int/2addr p1, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a4

    :cond_12a
    iget-object p1, p0, Labcd/hp;->Ws:[Labcd/co$b;

    array-length p2, p1

    :goto_12d
    if-ge v2, p2, :cond_140

    aget-object v0, p1, v2

    if-nez v0, :cond_134

    goto :goto_13d

    :cond_134
    invoke-virtual {v0}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v1

    if-eqz v1, :cond_13d

    invoke-direct {p0, v0}, Labcd/hp;->Hw(Labcd/co$b;)V

    :cond_13d
    :goto_13d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12d

    :cond_140
    return-void
.end method

.method private v5(Labcd/co$b;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v2

    const-string v3, "null"

    if-nez v2, :cond_22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_22
    invoke-virtual {v2}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/co$b;->aM()Labcd/Ks;

    move-result-object v2

    if-nez v2, :cond_36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_36
    invoke-virtual {v2}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    invoke-virtual {p1}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object p1

    if-eqz p1, :cond_4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private v5()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Labcd/co$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/hp;->VH:Labcd/Os;

    invoke-virtual {v1}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Labcd/hp;->Zo()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Labcd/hp;->Zo:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget-object v3, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_42

    iget-object v5, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v5, v4}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v5

    invoke-virtual {v5}, Labcd/co$b;->we()I

    move-result v6

    if-ge v6, v1, :cond_31

    goto :goto_3f

    :cond_31
    sub-int/2addr v6, v1

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_39

    goto :goto_3f

    :cond_39
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_42
    new-instance v1, Labcd/gp;

    invoke-direct {v1, p0}, Labcd/gp;-><init>(Labcd/hp;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public j6()[B
    .registers 3

    :try_start_0
    invoke-direct {p0}, Labcd/hp;->FH()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B
    .registers 5

    iput-object p1, p0, Labcd/hp;->J0:Ljava/lang/String;

    iput-object p2, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    iput-object p3, p0, Labcd/hp;->EQ:Labcd/Lt;

    iput-boolean p4, p0, Labcd/hp;->J8:Z

    invoke-virtual {p0}, Labcd/hp;->j6()[B

    move-result-object p1

    return-object p1
.end method
