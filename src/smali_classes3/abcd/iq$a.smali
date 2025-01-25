.class public final Labcd/iq$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/St;
.implements Labcd/Tt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field private final FH:I

.field private final Hw:I

.field private final j6:Ljava/lang/String;

.field final v5:Labcd/iq;


# direct methods
.method private constructor <init>(Labcd/iq;I)V
    .registers 5

    invoke-static {p1}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    array-length v0, v0

    const-string v1, "section"

    invoke-direct {p0, p1, v1, p2, v0}, Labcd/iq$a;-><init>(Labcd/iq;Ljava/lang/String;II)V

    return-void
.end method

.method synthetic constructor <init>(Labcd/iq;ILabcd/cq;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/iq$a;-><init>(Labcd/iq;I)V

    return-void
.end method

.method private constructor <init>(Labcd/iq;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/iq$a;->j6:Ljava/lang/String;

    iput p3, p0, Labcd/iq$a;->Hw:I

    iput p3, p0, Labcd/iq$a;->DW:I

    iput p4, p0, Labcd/iq$a;->FH:I

    return-void
.end method

.method private BT()Labcd/bq;
    .registers 14

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v3

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v4

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v5

    invoke-virtual {p0, v5}, Labcd/iq$a;->Zo(I)[S

    move-result-object v5

    new-array v6, v0, [Labcd/bq$b;

    const/4 v7, 0x0

    if-lez v0, :cond_5a

    array-length v8, v5

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2a

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    :cond_2a
    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v0, :cond_43

    new-instance v9, Labcd/bq$b;

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v10

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v11

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Labcd/bq$b;-><init>(III)V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_43
    invoke-virtual {p0}, Labcd/iq$a;->gn()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v8

    new-array v9, v8, [Labcd/bq$a;

    :goto_4d
    if-ge v7, v8, :cond_58

    invoke-direct {p0, v0}, Labcd/iq$a;->gn(I)Labcd/bq$a;

    move-result-object v10

    aput-object v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_58
    move-object v7, v9

    goto :goto_5d

    :cond_5a
    new-array v0, v7, [Labcd/bq$a;

    move-object v7, v0

    :goto_5d
    new-instance v8, Labcd/bq;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Labcd/bq;-><init>(IIII[S[Labcd/bq$b;[Labcd/bq$a;)V

    return-object v8
.end method

.method static synthetic DW(Labcd/iq$a;)Labcd/bq;
    .registers 1

    invoke-direct {p0}, Labcd/iq$a;->BT()Labcd/bq;

    move-result-object p0

    return-object p0
.end method

.method private VH(I)V
    .registers 3

    iget v0, p0, Labcd/iq$a;->DW:I

    add-int/2addr v0, p1

    iget p1, p0, Labcd/iq$a;->FH:I

    if-gt v0, p1, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Section limit "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/iq$a;->FH:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exceeded by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/iq$a;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/Ut;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private gW()Labcd/_p;
    .registers 6

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v3

    new-instance v4, Labcd/_p;

    invoke-direct {p0, v0}, Labcd/iq$a;->u7(I)[Labcd/_p$a;

    move-result-object v0

    invoke-direct {p0, v1}, Labcd/iq$a;->u7(I)[Labcd/_p$a;

    move-result-object v1

    invoke-direct {p0, v2}, Labcd/iq$a;->tp(I)[Labcd/_p$b;

    move-result-object v2

    invoke-direct {p0, v3}, Labcd/iq$a;->tp(I)[Labcd/_p$b;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Labcd/_p;-><init>([Labcd/_p$a;[Labcd/_p$a;[Labcd/_p$b;[Labcd/_p$b;)V

    return-object v4
.end method

.method private gn(I)Labcd/bq$a;
    .registers 9

    invoke-virtual {p0}, Labcd/iq$a;->gn()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->U2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    new-array v3, v2, [I

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v2, :cond_22

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v6

    aput v6, v3, v5

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_22
    if-gtz v1, :cond_29

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v1

    goto :goto_2a

    :cond_29
    const/4 v1, -0x1

    :goto_2a
    new-instance v2, Labcd/bq$a;

    sub-int/2addr v0, p1

    invoke-direct {v2, v0, v3, v4, v1}, Labcd/bq$a;-><init>(I[I[II)V

    return-object v2
.end method

.method static synthetic j6(Labcd/iq$a;)Labcd/_p;
    .registers 1

    invoke-direct {p0}, Labcd/iq$a;->gW()Labcd/_p;

    move-result-object p0

    return-object p0
.end method

.method private tp(I)[Labcd/_p$b;
    .registers 8

    new-array v0, p1, [Labcd/_p$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, p1, :cond_1d

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Labcd/_p$b;

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v4

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v5

    invoke-direct {v3, v2, v4, v5}, Labcd/_p$b;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1d
    return-object v0
.end method

.method private u7(I)[Labcd/_p$a;
    .registers 7

    new-array v0, p1, [Labcd/_p$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, p1, :cond_19

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Labcd/_p$a;

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v4

    invoke-direct {v3, v2, v4}, Labcd/_p$a;-><init>(II)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return-object v0
.end method


# virtual methods
.method public EQ()Labcd/Xp;
    .registers 5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    new-instance v0, Labcd/Xp;

    invoke-direct {v0, v1}, Labcd/Xp;-><init>([I)V

    return-object v0
.end method

.method public J0()Labcd/aq;
    .registers 13

    invoke-virtual {p0}, Labcd/iq$a;->gn()I

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v3

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v4

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v6

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v7

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v8

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v10

    new-instance v11, Labcd/aq;

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Labcd/aq;-><init>(Labcd/iq;IIIIIIIII)V

    return-object v11
.end method

.method public J8()Labcd/jq;
    .registers 5

    iget v0, p0, Labcd/iq$a;->DW:I

    new-instance v1, Labcd/kq;

    invoke-direct {v1, p0}, Labcd/kq;-><init>(Labcd/St;)V

    invoke-virtual {v1}, Labcd/kq;->DW()V

    iget v1, p0, Labcd/iq$a;->DW:I

    new-instance v2, Labcd/jq;

    iget-object v3, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v3}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v3

    invoke-static {v3, v0, v1}, Labcd/iq;->j6([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/jq;-><init>([B)V

    return-object v2
.end method

.method public Mr()S
    .registers 5

    iget-object v0, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    iget v1, p0, Labcd/iq$a;->DW:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v1}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v1

    iget v2, p0, Labcd/iq$a;->DW:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v3

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Labcd/iq$a;->DW:I

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public QX()Labcd/lq;
    .registers 6

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v2

    new-instance v3, Labcd/lq;

    iget-object v4, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct {v3, v4, v0, v1, v2}, Labcd/lq;-><init>(Labcd/iq;III)V

    return-object v3
.end method

.method public U2()I
    .registers 2

    invoke-static {p0}, Labcd/eu;->j6(Labcd/St;)I

    move-result v0

    return v0
.end method

.method public VH()[B
    .registers 2

    iget-object v0, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    return-object v0
.end method

.method public Ws()Labcd/jq;
    .registers 5

    iget v0, p0, Labcd/iq$a;->DW:I

    new-instance v1, Labcd/kq;

    invoke-direct {v1, p0}, Labcd/kq;-><init>(Labcd/St;)V

    invoke-virtual {v1}, Labcd/kq;->FH()V

    iget v1, p0, Labcd/iq$a;->DW:I

    new-instance v2, Labcd/jq;

    iget-object v3, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v3}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v3

    invoke-static {v3, v0, v1}, Labcd/iq;->j6([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/jq;-><init>([B)V

    return-object v2
.end method

.method public XL()I
    .registers 7

    iget-object v0, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    iget v1, p0, Labcd/iq$a;->DW:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v1}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v1

    iget v2, p0, Labcd/iq$a;->DW:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v2}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v2

    iget v3, p0, Labcd/iq$a;->DW:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v3}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v3

    iget v4, p0, Labcd/iq$a;->DW:I

    add-int/lit8 v5, v4, 0x3

    aget-byte v3, v3, v5

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Labcd/iq$a;->DW:I

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public Zo()V
    .registers 4

    iget v0, p0, Labcd/iq$a;->DW:I

    invoke-static {v0}, Labcd/iq;->j6(I)I

    move-result v1

    iput v1, p0, Labcd/iq$a;->DW:I

    :goto_8
    iget v1, p0, Labcd/iq$a;->DW:I

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v1}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public Zo(I)[S
    .registers 5

    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_e

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-object v0
.end method

.method public a8()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    iget v1, p0, Labcd/iq$a;->DW:I

    iput v0, p0, Labcd/iq$a;->DW:I

    :try_start_8
    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v0

    new-array v2, v0, [C

    invoke-static {p0, v2}, Labcd/ju;->j6(Labcd/St;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_16
    .catch Ljava/io/UTFDataFormatException; {:try_start_8 .. :try_end_16} :catch_40
    .catchall {:try_start_8 .. :try_end_16} :catchall_3e

    if-ne v3, v0, :cond_1b

    iput v1, p0, Labcd/iq$a;->DW:I

    return-object v2

    :cond_1b
    :try_start_1b
    new-instance v3, Labcd/Ut;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Declared length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match decoded length of "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3e
    .catch Ljava/io/UTFDataFormatException; {:try_start_1b .. :try_end_3e} :catch_40
    .catchall {:try_start_1b .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    goto :goto_47

    :catch_40
    move-exception v0

    :try_start_41
    new-instance v2, Labcd/Ut;

    invoke-direct {v2, v0}, Labcd/Ut;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_3e

    :goto_47
    iput v1, p0, Labcd/iq$a;->DW:I

    throw v0
.end method

.method public aM()Labcd/nq;
    .registers 6

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v2

    new-instance v3, Labcd/nq;

    iget-object v4, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct {v3, v4, v0, v1, v2}, Labcd/nq;-><init>(Labcd/iq;III)V

    return-object v3
.end method

.method public er()I
    .registers 2

    invoke-static {p0}, Labcd/eu;->DW(Labcd/St;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/iq$a;->DW:I

    return v0
.end method

.method public j3()Labcd/qq;
    .registers 6

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v2

    new-instance v3, Labcd/qq;

    iget-object v4, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct {v3, v4, v0, v1, v2}, Labcd/qq;-><init>(Labcd/iq;III)V

    return-object v3
.end method

.method public lg()Labcd/fr;
    .registers 5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Labcd/iq$a;->Zo()V

    new-instance v0, Labcd/fr;

    iget-object v2, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct {v0, v2, v1}, Labcd/fr;-><init>(Labcd/iq;[S)V

    return-object v0
.end method

.method public rN()I
    .registers 2

    invoke-static {p0}, Labcd/eu;->DW(Labcd/St;)I

    move-result v0

    return v0
.end method

.method public readByte()B
    .registers 4

    iget-object v0, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    iget v1, p0, Labcd/iq$a;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/iq$a;->DW:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public tp()Labcd/Wp;
    .registers 13

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v3

    if-nez v0, :cond_15

    sget-object v4, Labcd/Zp;->j6:[I

    goto :goto_17

    :cond_15
    new-array v4, v0, [I

    :goto_17
    if-nez v0, :cond_1c

    sget-object v5, Labcd/Zp;->j6:[I

    goto :goto_1e

    :cond_1c
    new-array v5, v0, [I

    :goto_1e
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v0, :cond_31

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v8

    aput v8, v4, v7

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_31
    if-nez v2, :cond_36

    sget-object v0, Labcd/Zp;->j6:[I

    goto :goto_38

    :cond_36
    new-array v0, v2, [I

    :goto_38
    move-object v7, v0

    if-nez v2, :cond_3e

    sget-object v0, Labcd/Zp;->j6:[I

    goto :goto_40

    :cond_3e
    new-array v0, v2, [I

    :goto_40
    move-object v8, v0

    const/4 v0, 0x0

    :goto_42
    if-ge v0, v2, :cond_53

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    aput v9, v7, v0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_53
    if-nez v3, :cond_58

    sget-object v0, Labcd/Zp;->j6:[I

    goto :goto_5a

    :cond_58
    new-array v0, v3, [I

    :goto_5a
    move-object v9, v0

    if-nez v3, :cond_60

    sget-object v0, Labcd/Zp;->j6:[I

    goto :goto_62

    :cond_60
    new-array v0, v3, [I

    :goto_62
    move-object v10, v0

    :goto_63
    if-ge v6, v3, :cond_74

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    aput v0, v9, v6

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    aput v0, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_74
    new-instance v11, Labcd/Wp;

    move-object v0, v11

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Labcd/Wp;-><init>(I[I[I[I[I[I[I)V

    return-object v11
.end method

.method public u7()Labcd/Vp;
    .registers 8

    invoke-virtual {p0}, Labcd/iq$a;->readByte()B

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v3

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v0

    new-array v4, v0, [I

    new-array v5, v0, [Labcd/jq;

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_22

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v6

    aput v6, v4, v1

    invoke-virtual {p0}, Labcd/iq$a;->Ws()Labcd/jq;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    new-instance v6, Labcd/Vp;

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Labcd/Vp;-><init>(Labcd/iq;BI[I[Labcd/jq;)V

    return-object v6
.end method

.method public v5(I)[B
    .registers 5

    iget-object v0, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    iget v1, p0, Labcd/iq$a;->DW:I

    add-int v2, v1, p1

    invoke-static {v0, v1, v2}, Labcd/iq;->j6([BII)[B

    move-result-object v0

    iget v1, p0, Labcd/iq$a;->DW:I

    add-int/2addr v1, p1

    iput v1, p0, Labcd/iq$a;->DW:I

    return-object v0
.end method

.method public we()Labcd/Yp;
    .registers 5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    new-instance v0, Labcd/Yp;

    invoke-direct {v0, v1}, Labcd/Yp;-><init>([I)V

    return-object v0
.end method

.method public writeByte(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labcd/iq$a;->VH(I)V

    iget-object v0, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v0

    iget v1, p0, Labcd/iq$a;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/iq$a;->DW:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public yS()I
    .registers 3

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
