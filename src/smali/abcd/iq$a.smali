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

    const-string v0, "section"

    invoke-static {p1}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {p0, p1, v0, p2, v1}, Labcd/iq$a;-><init>(Labcd/iq;Ljava/lang/String;II)V

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v3

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v8

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v4

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v5

    invoke-virtual {p0, v5}, Labcd/iq$a;->Zo(I)[S

    move-result-object v5

    new-array v6, v8, [Labcd/bq$b;

    if-lez v8, :cond_2

    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    :cond_0
    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_1

    new-instance v9, Labcd/bq$b;

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v10

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v11

    invoke-virtual {p0}, Labcd/iq$a;->yS()I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Labcd/bq$b;-><init>(III)V

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/iq$a;->gn()I

    move-result v8

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v9

    new-array v7, v9, [Labcd/bq$a;

    :goto_1
    if-ge v0, v9, :cond_3

    invoke-direct {p0, v8}, Labcd/iq$a;->gn(I)Labcd/bq$a;

    move-result-object v10

    aput-object v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array v7, v0, [Labcd/bq$a;

    :cond_3
    new-instance v0, Labcd/bq;

    invoke-direct/range {v0 .. v7}, Labcd/bq;-><init>(IIII[S[Labcd/bq$b;[Labcd/bq$a;)V

    return-object v0
.end method

.method static synthetic DW(Labcd/iq$a;)Labcd/bq;
    .registers 2

    invoke-direct {p0}, Labcd/iq$a;->BT()Labcd/bq;

    move-result-object v0

    return-object v0
.end method

.method private VH(I)V
    .registers 4

    iget v0, p0, Labcd/iq$a;->DW:I

    add-int/2addr v0, p1

    iget v1, p0, Labcd/iq$a;->FH:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Section limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/iq$a;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceeded by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/iq$a;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/Ut;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v1
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

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->U2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-array v4, v3, [I

    new-array v5, v3, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v6

    aput v6, v4, v0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gtz v2, :cond_1

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v0

    :goto_1
    new-instance v2, Labcd/bq$a;

    sub-int/2addr v1, p1

    invoke-direct {v2, v1, v4, v5, v0}, Labcd/bq$a;-><init>(I[I[II)V

    return-object v2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic j6(Labcd/iq$a;)Labcd/_p;
    .registers 2

    invoke-direct {p0}, Labcd/iq$a;->gW()Labcd/_p;

    move-result-object v0

    return-object v0
.end method

.method private tp(I)[Labcd/_p$b;
    .registers 8

    const/4 v1, 0x0

    new-array v3, p1, [Labcd/_p$b;

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Labcd/_p$b;

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v4

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v5

    invoke-direct {v1, v0, v4, v5}, Labcd/_p$b;-><init>(III)V

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private u7(I)[Labcd/_p$a;
    .registers 7

    const/4 v1, 0x0

    new-array v3, p1, [Labcd/_p$a;

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Labcd/_p$a;

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v4

    invoke-direct {v1, v0, v4}, Labcd/_p$a;-><init>(II)V

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public EQ()Labcd/Xp;
    .registers 5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Xp;

    invoke-direct {v0, v2}, Labcd/Xp;-><init>([I)V

    return-object v0
.end method

.method public J0()Labcd/aq;
    .registers 12

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

    new-instance v0, Labcd/aq;

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct/range {v0 .. v10}, Labcd/aq;-><init>(Labcd/iq;IIIIIIIII)V

    return-object v0
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

    :goto_0
    iget v1, p0, Labcd/iq$a;->DW:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-static {v1}, Labcd/iq;->Hw(Labcd/iq;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Zo(I)[S
    .registers 5

    new-array v1, p1, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a8()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v0

    iget v1, p0, Labcd/iq$a;->DW:I

    iput v0, p0, Labcd/iq$a;->DW:I

    :try_start_0
    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v0

    new-array v2, v0, [C

    invoke-static {p0, v2}, Labcd/ju;->j6(Labcd/St;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v0, :cond_0

    iput v1, p0, Labcd/iq$a;->DW:I

    return-object v2

    :cond_0
    :try_start_1
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
    :try_end_1
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Labcd/Ut;

    invoke-direct {v2, v0}, Labcd/Ut;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

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

    move-result v1

    new-array v2, v1, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->Mr()S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Labcd/iq$a;->Zo()V

    new-instance v0, Labcd/fr;

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct {v0, v1, v2}, Labcd/fr;-><init>(Labcd/iq;[S)V

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
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v1

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v7

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v8

    if-nez v5, :cond_0

    sget-object v2, Labcd/Zp;->j6:[I

    :goto_0
    if-nez v5, :cond_1

    sget-object v3, Labcd/Zp;->j6:[I

    :goto_1
    move v4, v0

    :goto_2
    if-ge v4, v5, :cond_2

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v6

    aput v6, v2, v4

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    new-array v2, v5, [I

    goto :goto_0

    :cond_1
    new-array v3, v5, [I

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    sget-object v4, Labcd/Zp;->j6:[I

    :goto_3
    if-nez v7, :cond_4

    sget-object v5, Labcd/Zp;->j6:[I

    :goto_4
    move v6, v0

    :goto_5
    if-ge v6, v7, :cond_5

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    aput v9, v4, v6

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_3
    new-array v4, v7, [I

    goto :goto_3

    :cond_4
    new-array v5, v7, [I

    goto :goto_4

    :cond_5
    if-nez v8, :cond_6

    sget-object v6, Labcd/Zp;->j6:[I

    :goto_6
    if-nez v8, :cond_7

    sget-object v7, Labcd/Zp;->j6:[I

    :goto_7
    if-ge v0, v8, :cond_8

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    aput v9, v6, v0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v9

    aput v9, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    new-array v6, v8, [I

    goto :goto_6

    :cond_7
    new-array v7, v8, [I

    goto :goto_7

    :cond_8
    new-instance v0, Labcd/Wp;

    invoke-direct/range {v0 .. v7}, Labcd/Wp;-><init>(I[I[I[I[I[I[I)V

    return-object v0
.end method

.method public u7()Labcd/Vp;
    .registers 8

    invoke-virtual {p0}, Labcd/iq$a;->readByte()B

    move-result v2

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v3

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v1

    new-array v4, v1, [I

    new-array v5, v1, [Labcd/jq;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->rN()I

    move-result v6

    aput v6, v4, v0

    invoke-virtual {p0}, Labcd/iq$a;->Ws()Labcd/jq;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Vp;

    iget-object v1, p0, Labcd/iq$a;->v5:Labcd/iq;

    invoke-direct/range {v0 .. v5}, Labcd/Vp;-><init>(Labcd/iq;BI[I[Labcd/jq;)V

    return-object v0
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

    move-result v1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/iq$a;->XL()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Yp;

    invoke-direct {v0, v2}, Labcd/Yp;-><init>([I)V

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

    int-to-byte v2, p1

    aput-byte v2, v0, v1

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
