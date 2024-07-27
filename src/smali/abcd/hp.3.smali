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

    move-result-object v0

    iput-object v0, p0, Labcd/hp;->VH:Labcd/Os;

    iput-boolean p6, p0, Labcd/hp;->gn:Z

    iput p4, p0, Labcd/hp;->v5:I

    iput p5, p0, Labcd/hp;->Zo:I

    new-instance v0, Labcd/Qt;

    invoke-direct {v0}, Labcd/Qt;-><init>()V

    iput-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    new-array v0, p5, [Labcd/co$b;

    iput-object v0, p0, Labcd/hp;->Ws:[Labcd/co$b;

    return-void
.end method

.method private DW()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/io$a;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/hp;->j6:Labcd/io;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Labcd/hp;->j6:Labcd/io;

    invoke-virtual {v3, v1}, Labcd/io;->get(I)Labcd/io$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/fp;

    invoke-direct {v0, p0}, Labcd/fp;-><init>(Labcd/hp;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private DW(I)V
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1, v2}, Labcd/Qt;->writeByte(I)V

    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1, p1}, Labcd/Qt;->DW(I)I

    iget v1, p0, Labcd/hp;->u7:I

    add-int/2addr v1, p1

    iput v1, p0, Labcd/hp;->u7:I

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: advance pc"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private DW(Labcd/co$b;)V
    .registers 7

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

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +local restart %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private FH(I)I
    .registers 7

    iget-object v0, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_5

    iget-object v1, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v1, p1}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v1

    invoke-virtual {v1}, Labcd/co$b;->Hw()I

    move-result v1

    iget v2, p0, Labcd/hp;->u7:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v1, p1}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v1

    invoke-virtual {v1}, Labcd/co$b;->we()I

    move-result v2

    iget-object v3, p0, Labcd/hp;->Ws:[Labcd/co$b;

    aget-object v4, v3, v2

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    aput-object v1, v3, v2

    invoke-virtual {v1}, Labcd/co$b;->j3()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Labcd/co$b;->DW(Labcd/co$b;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Labcd/co$b;->j3()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Labcd/hp;->DW(Labcd/co$b;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, v1}, Labcd/hp;->FH(Labcd/co$b;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Labcd/co$b;->Zo()Labcd/co$a;

    move-result-object v2

    sget-object v3, Labcd/co$a;->FH:Labcd/co$a;

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v1}, Labcd/hp;->j6(Labcd/co$b;)V

    goto :goto_1

    :cond_5
    return p1
.end method

.method private FH(Labcd/co$b;)V
    .registers 7

    invoke-virtual {p1}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/hp;->Hw(Labcd/co$b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private FH()[B
    .registers 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v3, 0x7fffffff

    invoke-direct {p0}, Labcd/hp;->DW()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0}, Labcd/hp;->v5()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Labcd/hp;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Labcd/Qt;->writeByte(I)V

    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "%04x: prologue end"

    new-array v2, v6, [Ljava/lang/Object;

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v0, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v7

    move v0, v1

    move v2, v1

    :goto_0
    invoke-direct {p0, v0}, Labcd/hp;->FH(I)I

    move-result v1

    invoke-direct {p0, v2, v5}, Labcd/hp;->j6(ILjava/util/ArrayList;)I

    move-result v2

    if-ge v1, v7, :cond_3

    iget-object v0, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v0, v1}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v0

    invoke-virtual {v0}, Labcd/co$b;->Hw()I

    move-result v0

    move v4, v0

    :goto_1
    if-ge v2, v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/io$a;

    invoke-virtual {v0}, Labcd/io$a;->j6()I

    move-result v0

    :goto_2
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v3, :cond_5

    :cond_2
    invoke-direct {p0}, Labcd/hp;->Hw()V

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    return-object v0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    iget v9, p0, Labcd/hp;->v5:I

    if-ne v8, v9, :cond_6

    if-ne v4, v3, :cond_6

    if-eq v0, v3, :cond_2

    :cond_6
    if-ne v8, v0, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/io$a;

    invoke-direct {p0, v0}, Labcd/hp;->j6(Labcd/io$a;)V

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_7
    iget v0, p0, Labcd/hp;->u7:I

    sub-int v0, v8, v0

    invoke-direct {p0, v0}, Labcd/hp;->DW(I)V

    move v0, v1

    goto :goto_0
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Qt;->writeByte(I)V

    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private Hw(I)V
    .registers 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0, p1}, Labcd/Qt;->DW(I)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signed value where unsigned required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private Hw(Labcd/co$b;)V
    .registers 7

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

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
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
    .registers 4

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/io$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/io$a;

    invoke-virtual {v0}, Labcd/io$a;->j6()I

    move-result v0

    iget v2, p0, Labcd/hp;->u7:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/io$a;

    invoke-direct {p0, v0}, Labcd/hp;->j6(Labcd/io$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private j6(I)V
    .registers 7

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

    iget-object v1, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "line = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Labcd/hp;->tp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private j6(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/hp;->J0:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/hp;->J0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Labcd/hp;->J8:Z

    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v0, p1, p2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/Js;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/hp;->Hw:Labcd/jp;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Qt;->DW(I)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Labcd/Qt;->DW(I)I

    goto :goto_0
.end method

.method private j6(Labcd/Ks;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/hp;->Hw:Labcd/jp;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Qt;->DW(I)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Labcd/Qt;->DW(I)I

    goto :goto_0
.end method

.method private j6(Labcd/co$b;)V
    .registers 7

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

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v1}, Labcd/Qt;->v5()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: -local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Labcd/hp;->u7:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Labcd/hp;->v5(Labcd/co$b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private j6(Labcd/io$a;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/io$a;->DW()Labcd/hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/hs;->j6()I

    move-result v0

    invoke-virtual {p1}, Labcd/io$a;->j6()I

    move-result v2

    iget v3, p0, Labcd/hp;->tp:I

    sub-int/2addr v0, v3

    iget v3, p0, Labcd/hp;->u7:I

    sub-int v3, v2, v3

    if-ltz v3, :cond_6

    const/4 v2, -0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Labcd/hp;->j6(I)V

    move v0, v1

    :cond_1
    invoke-static {v0, v3}, Labcd/hp;->j6(II)I

    move-result v2

    and-int/lit16 v4, v2, -0x100

    if-lez v4, :cond_2

    invoke-direct {p0, v3}, Labcd/hp;->DW(I)V

    invoke-static {v0, v1}, Labcd/hp;->j6(II)I

    move-result v2

    and-int/lit16 v3, v2, -0x100

    if-lez v3, :cond_5

    invoke-direct {p0, v0}, Labcd/hp;->j6(I)V

    invoke-static {v1, v1}, Labcd/hp;->j6(II)I

    move-result v2

    move v0, v1

    move v3, v1

    :cond_2
    :goto_0
    iget-object v4, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v4, v2}, Labcd/Qt;->writeByte(I)V

    iget v2, p0, Labcd/hp;->tp:I

    add-int/2addr v0, v2

    iput v0, p0, Labcd/hp;->tp:I

    iget v0, p0, Labcd/hp;->u7:I

    add-int/2addr v0, v3

    iput v0, p0, Labcd/hp;->u7:I

    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "%04x: line %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Labcd/hp;->u7:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Labcd/hp;->tp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position entries must be in ascending address order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/io$a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/co$b;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/hp;->EQ:Labcd/Lt;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    if-eqz v0, :cond_a

    :cond_0
    move v1, v3

    :goto_0
    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/io$a;

    invoke-virtual {v0}, Labcd/io$a;->DW()Labcd/hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/hs;->j6()I

    move-result v0

    iput v0, p0, Labcd/hp;->tp:I

    :cond_1
    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    iget v6, p0, Labcd/hp;->tp:I

    invoke-virtual {v0, v6}, Labcd/Qt;->DW(I)I

    if-eqz v1, :cond_2

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "line_start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Labcd/hp;->tp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Labcd/hp;->Zo()I

    move-result v4

    iget-object v0, p0, Labcd/hp;->VH:Labcd/Os;

    invoke-virtual {v0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v7

    iget-boolean v0, p0, Labcd/hp;->gn:Z

    if-nez v0, :cond_12

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    invoke-virtual {v0}, Labcd/co$b;->we()I

    move-result v9

    if-ne v4, v9, :cond_3

    iget-object v8, p0, Labcd/hp;->Ws:[Labcd/co$b;

    aput-object v0, v8, v4

    :cond_4
    add-int/lit8 v0, v4, 0x1

    :goto_1
    iget-object v4, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v4}, Labcd/Qt;->v5()I

    move-result v4

    iget-object v8, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v8, v7}, Labcd/Qt;->DW(I)I

    if-eqz v1, :cond_5

    iget-object v8, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v8}, Labcd/Qt;->v5()I

    move-result v8

    sub-int v4, v8, v4

    const-string v8, "parameters_size: %04x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_5
    move v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_e

    invoke-virtual {v6, v4}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v8

    iget-object v0, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v9

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    invoke-virtual {v0}, Labcd/co$b;->we()I

    move-result v11

    if-ne v3, v11, :cond_6

    invoke-virtual {v0}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-direct {p0, v5}, Labcd/hp;->j6(Labcd/Js;)V

    :goto_3
    iget-object v10, p0, Labcd/hp;->Ws:[Labcd/co$b;

    aput-object v0, v10, v3

    :goto_4
    if-nez v0, :cond_7

    invoke-direct {p0, v5}, Labcd/hp;->j6(Labcd/Js;)V

    :cond_7
    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v10

    if-eqz v10, :cond_d

    :cond_8
    const-string v0, "<unnamed>"

    :goto_5
    iget-object v10, p0, Labcd/hp;->FH:Labcd/Qt;

    invoke-virtual {v10}, Labcd/Qt;->v5()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "v"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int v0, v10, v9

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v9}, Labcd/hp;->j6(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {v8}, Labcd/Qs;->Zo()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_2

    :cond_a
    move v1, v2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v10

    invoke-direct {p0, v10}, Labcd/hp;->j6(Labcd/Js;)V

    goto :goto_3

    :cond_c
    move-object v0, v5

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_e
    iget-object v0, p0, Labcd/hp;->Ws:[Labcd/co$b;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    if-nez v3, :cond_10

    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v3}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-direct {p0, v3}, Labcd/hp;->Hw(Labcd/co$b;)V

    goto :goto_7

    :cond_11
    return-void

    :cond_12
    move v0, v4

    goto/16 :goto_1
.end method

.method private v5(Labcd/co$b;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/co$b;->VH()Labcd/Js;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/co$b;->aM()Labcd/Ks;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Labcd/co$b;->Ws()Labcd/Js;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private v5()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/co$b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/hp;->VH:Labcd/Os;

    invoke-virtual {v0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Labcd/hp;->Zo()I

    move-result v2

    new-instance v3, Ljava/util/BitSet;

    iget v0, p0, Labcd/hp;->Zo:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    iget-object v0, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    iget-object v5, p0, Labcd/hp;->DW:Labcd/co;

    invoke-virtual {v5, v0}, Labcd/co;->get(I)Labcd/co$b;

    move-result-object v5

    invoke-virtual {v5}, Labcd/co$b;->we()I

    move-result v6

    if-ge v6, v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Labcd/gp;

    invoke-direct {v0, p0}, Labcd/gp;-><init>(Labcd/hp;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method


# virtual methods
.method public j6()[B
    .registers 3

    :try_start_0
    invoke-direct {p0}, Labcd/hp;->FH()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;Z)[B
    .registers 6

    iput-object p1, p0, Labcd/hp;->J0:Ljava/lang/String;

    iput-object p2, p0, Labcd/hp;->we:Ljava/io/PrintWriter;

    iput-object p3, p0, Labcd/hp;->EQ:Labcd/Lt;

    iput-boolean p4, p0, Labcd/hp;->J8:Z

    invoke-virtual {p0}, Labcd/hp;->j6()[B

    move-result-object v0

    return-object v0
.end method
