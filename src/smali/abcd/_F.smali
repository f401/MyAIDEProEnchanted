.class public Labcd/_F;
.super Labcd/qG;


# instance fields
.field private Mr:Labcd/_F$a;

.field private QX:Labcd/NF;

.field private U2:[B

.field private Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/iG;",
            ">;"
        }
    .end annotation
.end field

.field private XL:Labcd/dG;

.field private a8:I

.field private aM:Labcd/dG;

.field private j3:Labcd/_F$a;

.field private lg:Z


# direct methods
.method public constructor <init>(Labcd/IE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/qG;-><init>(Labcd/IE;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/_F;->Ws:Ljava/util/List;

    new-instance v0, Labcd/NF;

    invoke-direct {v0}, Labcd/NF;-><init>()V

    iput-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/_F;->U2:[B

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/_F;-><init>(Labcd/IE;)V

    return-void
.end method

.method private DW(Labcd/_F$a;)I
    .registers 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Labcd/_F$a;->Zo:I

    if-nez v1, :cond_1

    iget-object v0, p1, Labcd/_F$a;->j6:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p1, Labcd/_F$a;->VH:I

    if-nez v0, :cond_4

    iget-object v0, p1, Labcd/_F$a;->j6:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iget-object v2, p0, Labcd/_F;->U2:[B

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v0}, Labcd/_F;->VH(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Labcd/_F;->U2:[B

    const/16 v3, 0x2f

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iput v0, p1, Labcd/_F$a;->VH:I

    :cond_4
    iget v2, p1, Labcd/_F$a;->v5:I

    sub-int v3, v1, v2

    add-int v1, v0, v3

    :goto_1
    iget-object v4, p0, Labcd/_F;->U2:[B

    array-length v5, v4

    if-lt v5, v1, :cond_5

    iget-object v5, p1, Labcd/_F$a;->FH:[B

    invoke-static {v5, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Labcd/_F;->VH(I)V

    goto :goto_1
.end method

.method private VH(Labcd/iG;)Labcd/iG;
    .registers 4

    invoke-direct {p0, p1}, Labcd/_F;->gn(Labcd/iG;)Labcd/_F$a;

    move-result-object v0

    iget-object v1, p0, Labcd/_F;->Mr:Labcd/_F$a;

    iput-object v1, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    return-object p1
.end method

.method private VH(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/_F;->U2:[B

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/_F;->U2:[B

    return-void
.end method

.method private Zo(Labcd/iG;)V
    .registers 4

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/_F;->Ws:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    invoke-virtual {v0, p1}, Labcd/NF;->j6(Labcd/iG;)V

    :cond_0
    return-void
.end method

.method private gn(Labcd/iG;)Labcd/_F$a;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/_F;->j3:Labcd/_F$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v1, p0, Labcd/_F;->j3:Labcd/_F$a;

    iput v2, v0, Labcd/_F$a;->Hw:I

    iput v2, v0, Labcd/_F$a;->v5:I

    iput v2, v0, Labcd/_F$a;->Zo:I

    iput v2, v0, Labcd/_F$a;->VH:I

    :goto_0
    iput-object p1, v0, Labcd/_F$a;->DW:Labcd/iG;

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FE;->j6()[B

    move-result-object v1

    iput-object v1, v0, Labcd/_F$a;->FH:[B

    return-object v0

    :cond_0
    new-instance v0, Labcd/_F$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/_F$a;-><init>(Labcd/_F$a;)V

    goto :goto_0
.end method

.method private static j6([BI)I
    .registers 4

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_f
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto/16 :goto_0
.end method

.method private static j6([BIILabcd/_F$a;)I
    .registers 7

    const/16 v2, 0x20

    aget-byte v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    :goto_0
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_1

    :cond_0
    iput p2, p3, Labcd/_F$a;->Hw:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p3, Labcd/_F$a;->v5:I

    add-int/lit8 v1, p2, -0x15

    iput v1, p3, Labcd/_F$a;->Zo:I

    return v0

    :cond_1
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-eq v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-eq v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-eq v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-eq v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-eq v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-eq v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private j6(Labcd/_F$a;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Labcd/_F$a;->FH:[B

    iget-object v0, p0, Labcd/_F;->j3:Labcd/_F$a;

    iput-object v0, p1, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object p1, p0, Labcd/_F;->j3:Labcd/_F$a;

    return-void
.end method

.method private j6(Labcd/mG;)V
    .registers 11

    const/4 v6, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0, p1, v8}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->j6()[B

    move-result-object v4

    move v0, v1

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_0

    aget-byte v2, v4, v0

    add-int/lit8 v2, v2, -0x30

    move v3, v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v4, v3

    const/16 v5, 0x20

    if-ne v5, v0, :cond_6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v4, v3

    if-nez v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v3, v2, 0xc

    if-eq v3, v6, :cond_5

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0xe

    if-ne v3, v5, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    :cond_3
    iget-object v3, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v3, v4, v0}, Labcd/uE;->Hw([BI)V

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidMode3:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "%o"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const-string v1, ""

    aput-object v1, v4, v8

    const/4 v1, 0x3

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v2, v4, v0}, Labcd/uE;->Hw([BI)V

    iget-object v2, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {p0, v2}, Labcd/qG;->DW(Labcd/YD;)Labcd/cG;

    move-result-object v2

    iget v3, v2, Labcd/iG;->EQ:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Labcd/iG;->EQ:I

    goto :goto_2

    :cond_5
    iget-object v2, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v2, v4, v0}, Labcd/uE;->Hw([BI)V

    iget-object v2, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {p0, v2}, Labcd/qG;->v5(Labcd/YD;)Labcd/mG;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/_F;->j6(Labcd/mG;)V

    goto :goto_2

    :cond_6
    shl-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public DW(Labcd/kG;)V
    .registers 3

    invoke-super {p0, p1}, Labcd/qG;->DW(Labcd/kG;)V

    sget-object v0, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {p0, v0}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/_F;->lg:Z

    return-void
.end method

.method public Hw(Labcd/iG;)V
    .registers 4

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Labcd/lG;

    if-nez v1, :cond_1

    instance-of v1, v0, Labcd/dG;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/dG;

    invoke-super {p0, v0}, Labcd/qG;->DW(Labcd/dG;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v0}, Labcd/_F;->Zo(Labcd/iG;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Labcd/_F;->Zo(Labcd/iG;)V

    check-cast v0, Labcd/lG;

    invoke-virtual {v0}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method public J8()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Labcd/_F;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p0}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    instance-of v1, v0, Labcd/cG;

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v1, v0}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Labcd/fD;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v1
.end method

.method public QX()I
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget v1, v0, Labcd/_F$a;->Zo:I

    if-nez v1, :cond_2

    iget-object v0, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    if-eqz v0, :cond_0

    iget v1, v0, Labcd/_F$a;->Zo:I

    :cond_2
    const/16 v3, 0x10

    iget v4, v0, Labcd/_F$a;->v5:I

    sub-int v4, v1, v4

    if-gt v3, v4, :cond_3

    iget-object v0, v0, Labcd/_F$a;->FH:[B

    add-int/lit8 v5, v1, -0x10

    move-object v3, v0

    move v4, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v0, v3, v5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    ushr-int/lit8 v1, v2, 0x2

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v2, v0

    move v5, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Labcd/_F;->a8:I

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iput v0, p0, Labcd/_F;->a8:I

    :cond_4
    iget-object v1, p0, Labcd/_F;->U2:[B

    add-int/lit8 v3, v0, -0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v3, v1

    move v4, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public Ws()[B
    .registers 2

    iget v0, p0, Labcd/_F;->a8:I

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iput v0, p0, Labcd/_F;->a8:I

    :cond_0
    iget-object v0, p0, Labcd/_F;->U2:[B

    return-object v0
.end method

.method public XL()I
    .registers 2

    iget v0, p0, Labcd/_F;->a8:I

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iput v0, p0, Labcd/_F;->a8:I

    :cond_0
    iget v0, p0, Labcd/_F;->a8:I

    return v0
.end method

.method protected Zo(I)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Labcd/qG;->Zo(I)V

    iget-object v0, p0, Labcd/_F;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/_F;->Ws:Ljava/util/List;

    new-instance v0, Labcd/NF;

    invoke-direct {v0}, Labcd/NF;-><init>()V

    iput-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    iput-object v3, p0, Labcd/_F;->XL:Labcd/dG;

    iput-object v3, p0, Labcd/_F;->aM:Labcd/dG;

    iput-object v3, p0, Labcd/_F;->Mr:Labcd/_F$a;

    iput-object v3, p0, Labcd/_F;->j3:Labcd/_F$a;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    iget v2, v0, Labcd/iG;->EQ:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Labcd/iG;->EQ:I

    goto :goto_0
.end method

.method public j6(Labcd/kG;Z)V
    .registers 4

    invoke-super {p0, p1, p2}, Labcd/qG;->j6(Labcd/kG;Z)V

    sget-object v0, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {p0, v0}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/_F;->lg:Z

    return-void
.end method

.method public tp()Labcd/dG;
    .registers 4

    :cond_0
    invoke-super {p0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/_F;->XL:Labcd/dG;

    if-eqz v0, :cond_1

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    iget-object v2, p0, Labcd/_F;->aM:Labcd/dG;

    invoke-virtual {v1, p0, v0, v2}, Labcd/IE;->j6(Labcd/_F;Labcd/dG;Labcd/dG;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget v1, v0, Labcd/iG;->EQ:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/_F;->j6(Labcd/mG;)V

    iget-boolean v1, p0, Labcd/_F;->lg:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Labcd/_F;->XL:Labcd/dG;

    if-nez v1, :cond_4

    iput-object v0, p0, Labcd/_F;->XL:Labcd/dG;

    :cond_4
    iput-object v0, p0, Labcd/_F;->aM:Labcd/dG;

    iget-object v1, p0, Labcd/_F;->QX:Labcd/NF;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/NF;->j6(Labcd/iG;)V

    goto :goto_0
.end method

.method public v5()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/qG;->v5()V

    new-instance v0, Labcd/NF;

    invoke-direct {v0}, Labcd/NF;-><init>()V

    iput-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    iput-object v1, p0, Labcd/_F;->XL:Labcd/dG;

    iput-object v1, p0, Labcd/_F;->aM:Labcd/dG;

    iput-object v1, p0, Labcd/_F;->Mr:Labcd/_F$a;

    iput-object v1, p0, Labcd/_F;->j3:Labcd/_F$a;

    return-void
.end method

.method public v5(Labcd/iG;)V
    .registers 5

    move-object v1, p1

    :goto_0
    instance-of v0, v1, Labcd/lG;

    if-nez v0, :cond_3

    instance-of v0, v1, Labcd/dG;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Labcd/dG;

    invoke-super {p0, v0}, Labcd/qG;->FH(Labcd/dG;)V

    :goto_1
    invoke-virtual {v1}, Labcd/iG;->aM()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Labcd/_F;->lg:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Labcd/_F;->Zo(Labcd/iG;)V

    :cond_0
    return-void

    :cond_1
    instance-of v0, v1, Labcd/mG;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Labcd/mG;

    invoke-direct {p0, v0}, Labcd/_F;->j6(Labcd/mG;)V

    goto :goto_1

    :cond_2
    iget v0, v1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Labcd/iG;->EQ:I

    goto :goto_1

    :cond_3
    iget v0, v1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Labcd/iG;->EQ:I

    iget-boolean v0, p0, Labcd/_F;->lg:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Labcd/_F;->Zo(Labcd/iG;)V

    :cond_4
    check-cast v1, Labcd/lG;

    invoke-virtual {v1}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method public yS()Labcd/iG;
    .registers 13

    const/4 v9, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    iput v2, p0, Labcd/_F;->a8:I

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    move-object v5, v0

    :goto_0
    if-nez v5, :cond_5

    :cond_0
    iget-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    invoke-virtual {v0}, Labcd/NF;->j6()Labcd/iG;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->Hw()V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget v0, v3, Labcd/iG;->EQ:I

    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v4, p0, Labcd/_F;->lg:Z

    or-int/2addr v0, v4

    if-eqz v0, :cond_0

    instance-of v0, v3, Labcd/mG;

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Labcd/_F;->gn(Labcd/iG;)Labcd/_F$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v6, v5, Labcd/_F$a;->FH:[B

    iget v0, v5, Labcd/_F$a;->Hw:I

    move v3, v0

    :goto_3
    array-length v0, v6

    if-lt v3, v0, :cond_6

    iget-object v0, v5, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v5}, Labcd/_F;->j6(Labcd/_F$a;)V

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    move-object v5, v0

    goto :goto_0

    :cond_6
    invoke-static {v6, v3}, Labcd/_F;->j6([BI)I

    move-result v0

    iget-object v4, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v4, v6, v0}, Labcd/uE;->Hw([BI)V

    add-int/lit8 v4, v0, 0x14

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    iget-object v7, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v0, v7}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/iG;

    if-eqz v0, :cond_8

    iget v7, v0, Labcd/iG;->EQ:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    invoke-static {v6, v3, v4, v5}, Labcd/_F;->j6([BIILabcd/_F$a;)I

    move-result v3

    ushr-int/lit8 v7, v3, 0xc

    if-eq v7, v9, :cond_c

    const/16 v8, 0x8

    if-eq v7, v8, :cond_9

    const/16 v8, 0xa

    if-eq v7, v8, :cond_9

    const/16 v0, 0xe

    if-eq v7, v0, :cond_7

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidMode3:Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "%o"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    iget-object v2, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    iget v1, v5, Labcd/_F$a;->v5:I

    iget v2, v5, Labcd/_F$a;->Zo:I

    invoke-static {v6, v1, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    iget-object v1, v5, Labcd/_F$a;->DW:Labcd/iG;

    aput-object v1, v7, v11

    invoke-static {v4, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-nez v0, :cond_a

    new-instance v0, Labcd/cG;

    iget-object v1, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-direct {v0, v1}, Labcd/cG;-><init>(Labcd/YD;)V

    iput v10, v0, Labcd/iG;->EQ:I

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    goto/16 :goto_1

    :cond_a
    instance-of v3, v0, Labcd/cG;

    if-eqz v3, :cond_b

    iget v3, v0, Labcd/iG;->EQ:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Labcd/iG;->EQ:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Labcd/_F;->lg:Z

    if-eqz v3, :cond_7

    goto/16 :goto_1

    :cond_b
    new-instance v1, Labcd/ZC;

    invoke-direct {v1, v0, v11}, Labcd/ZC;-><init>(Labcd/yE;I)V

    throw v1

    :cond_c
    if-nez v0, :cond_d

    new-instance v0, Labcd/mG;

    iget-object v1, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-direct {v0, v1}, Labcd/mG;-><init>(Labcd/YD;)V

    iput v10, v0, Labcd/iG;->EQ:I

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    invoke-direct {p0, v0}, Labcd/_F;->VH(Labcd/iG;)Labcd/iG;

    goto/16 :goto_1

    :cond_d
    instance-of v3, v0, Labcd/mG;

    if-eqz v3, :cond_f

    iget v3, v0, Labcd/iG;->EQ:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Labcd/iG;->EQ:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_e

    invoke-direct {p0, v0}, Labcd/_F;->VH(Labcd/iG;)Labcd/iG;

    goto/16 :goto_1

    :cond_e
    iget-boolean v3, p0, Labcd/_F;->lg:Z

    if-eqz v3, :cond_7

    invoke-direct {p0, v0}, Labcd/_F;->VH(Labcd/iG;)Labcd/iG;

    goto/16 :goto_1

    :cond_f
    new-instance v1, Labcd/ZC;

    invoke-direct {v1, v0, v10}, Labcd/ZC;-><init>(Labcd/yE;I)V

    throw v1
.end method
