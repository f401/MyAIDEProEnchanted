.class public Labcd/_F;
.super Labcd/qG;


# instance fields
.field private Mr:Labcd/_F$a;

.field private QX:Labcd/NF;

.field private U2:[B

.field private Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .registers 2

    invoke-direct {p0, p1}, Labcd/qG;-><init>(Labcd/IE;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/_F;->Ws:Ljava/util/List;

    new-instance p1, Labcd/NF;

    invoke-direct {p1}, Labcd/NF;-><init>()V

    iput-object p1, p0, Labcd/_F;->QX:Labcd/NF;

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/_F;->U2:[B

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/_F;-><init>(Labcd/IE;)V

    return-void
.end method

.method private DW(Labcd/_F$a;)I
    .registers 8

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p1, Labcd/_F$a;->Zo:I

    if-nez v0, :cond_f

    iget-object p1, p1, Labcd/_F$a;->j6:Labcd/_F$a;

    invoke-direct {p0, p1}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result p1

    return p1

    :cond_f
    iget v1, p1, Labcd/_F$a;->VH:I

    if-nez v1, :cond_2d

    iget-object v1, p1, Labcd/_F$a;->j6:Labcd/_F$a;

    invoke-direct {p0, v1}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v1

    iget-object v2, p0, Labcd/_F;->U2:[B

    array-length v2, v2

    if-ne v1, v2, :cond_21

    invoke-direct {p0, v1}, Labcd/_F;->VH(I)V

    :cond_21
    if-eqz v1, :cond_2b

    iget-object v2, p0, Labcd/_F;->U2:[B

    const/16 v3, 0x2f

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2b
    iput v1, p1, Labcd/_F$a;->VH:I

    :cond_2d
    iget v2, p1, Labcd/_F$a;->v5:I

    sub-int/2addr v0, v2

    add-int v3, v1, v0

    :goto_32
    iget-object v4, p0, Labcd/_F;->U2:[B

    array-length v5, v4

    if-lt v5, v3, :cond_3d

    iget-object p1, p1, Labcd/_F$a;->FH:[B

    invoke-static {p1, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v3

    :cond_3d
    invoke-direct {p0, v1}, Labcd/_F;->VH(I)V

    goto :goto_32
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

    iget-object v0, p0, Labcd/_F;->U2:[B

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/_F;->U2:[B

    return-void
.end method

.method private Zo(Labcd/iG;)V
    .registers 4

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_14

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/_F;->Ws:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    invoke-virtual {v0, p1}, Labcd/NF;->j6(Labcd/iG;)V

    :cond_14
    return-void
.end method

.method private gn(Labcd/iG;)Labcd/_F$a;
    .registers 5

    iget-object v0, p0, Labcd/_F;->j3:Labcd/_F$a;

    if-eqz v0, :cond_12

    iget-object v1, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v1, p0, Labcd/_F;->j3:Labcd/_F$a;

    const/4 v1, 0x0

    iput v1, v0, Labcd/_F$a;->Hw:I

    iput v1, v0, Labcd/_F$a;->v5:I

    iput v1, v0, Labcd/_F$a;->Zo:I

    iput v1, v0, Labcd/_F$a;->VH:I

    goto :goto_18

    :cond_12
    new-instance v0, Labcd/_F$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/_F$a;-><init>(Labcd/_F$a;)V

    :goto_18
    iput-object p1, v0, Labcd/_F$a;->DW:Labcd/iG;

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/FE;->j6()[B

    move-result-object p1

    iput-object p1, v0, Labcd/_F$a;->FH:[B

    return-object v0
.end method

.method private static j6([BI)I
    .registers 3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_9
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_12

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_12
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_1b

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_24

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_24
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_2d

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_36

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_36
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_3f

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3f
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_48

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_48
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_51

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_51
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_5a

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_5a
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_63

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_63
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_6c

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_6c
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_75

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_75
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_7e

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_7e
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_87

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_87
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static j6([BIILabcd/_F$a;)I
    .registers 7

    aget-byte v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    :goto_4
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    const/16 v2, 0x20

    if-ne v2, v1, :cond_d

    goto :goto_54

    :cond_d
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_19

    goto :goto_54

    :cond_19
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_25

    goto :goto_54

    :cond_25
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_31

    goto :goto_54

    :cond_31
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_3d

    goto :goto_54

    :cond_3d
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_49

    goto :goto_54

    :cond_49
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    if-ne v2, v1, :cond_5f

    :goto_54
    iput p2, p3, Labcd/_F$a;->Hw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p3, Labcd/_F$a;->v5:I

    add-int/lit8 p2, p2, -0x15

    iput p2, p3, Labcd/_F$a;->Zo:I

    return v0

    :cond_5f
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    goto :goto_4
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

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->j6()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    array-length v5, v0

    if-lt v4, v5, :cond_1c

    return-void

    :cond_1c
    aget-byte v5, v0, v4

    add-int/lit8 v5, v5, -0x30

    :goto_20
    const/4 v6, 0x1

    add-int/2addr v4, v6

    aget-byte v7, v0, v4

    const/16 v8, 0x20

    if-ne v8, v7, :cond_98

    :cond_28
    add-int/2addr v4, v6

    aget-byte v7, v0, v4

    if-nez v7, :cond_28

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v7, v5, 0xc

    if-eq v7, v1, :cond_87

    const/16 v8, 0x8

    if-eq v7, v8, :cond_76

    const/16 v8, 0xa

    if-eq v7, v8, :cond_76

    const/16 v8, 0xe

    if-ne v7, v8, :cond_40

    goto :goto_95

    :cond_40
    iget-object v7, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v7, v0, v4}, Labcd/uE;->Hw([BI)V

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidMode3:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const-string v5, "%o"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    iget-object v5, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v5, v0, v4}, Labcd/uE;->Hw([BI)V

    iget-object v5, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {p0, v5}, Labcd/qG;->DW(Labcd/YD;)Labcd/cG;

    move-result-object v5

    iget v6, v5, Labcd/iG;->EQ:I

    or-int/2addr v6, v1

    iput v6, v5, Labcd/iG;->EQ:I

    goto :goto_95

    :cond_87
    iget-object v5, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v5, v0, v4}, Labcd/uE;->Hw([BI)V

    iget-object v5, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {p0, v5}, Labcd/qG;->v5(Labcd/YD;)Labcd/mG;

    move-result-object v5

    invoke-direct {p0, v5}, Labcd/_F;->j6(Labcd/mG;)V

    :goto_95
    add-int/lit8 v4, v4, 0x14

    goto :goto_18

    :cond_98
    shl-int/lit8 v5, v5, 0x3

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v5, v7

    goto :goto_20
.end method


# virtual methods
.method public DW(Labcd/kG;)V
    .registers 2

    invoke-super {p0, p1}, Labcd/qG;->DW(Labcd/kG;)V

    sget-object p1, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result p1

    iput-boolean p1, p0, Labcd/_F;->lg:Z

    return-void
.end method

.method public Hw(Labcd/iG;)V
    .registers 3

    :goto_0
    instance-of v0, p1, Labcd/lG;

    if-nez v0, :cond_12

    instance-of v0, p1, Labcd/dG;

    if-eqz v0, :cond_e

    check-cast p1, Labcd/dG;

    invoke-super {p0, p1}, Labcd/qG;->DW(Labcd/dG;)V

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Labcd/_F;->Zo(Labcd/iG;)V

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0, p1}, Labcd/_F;->Zo(Labcd/iG;)V

    check-cast p1, Labcd/lG;

    invoke-virtual {p1}, Labcd/lG;->j3()Labcd/iG;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method public J8()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Labcd/_F;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_6
    :goto_6
    invoke-virtual {p0}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    instance-of v1, v0, Labcd/cG;

    if-eqz v1, :cond_6

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v1, v0}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance v1, Labcd/fD;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;I)V

    goto :goto_22

    :goto_21
    throw v1

    :goto_22
    goto :goto_21
.end method

.method public QX()I
    .registers 7

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, v0, Labcd/_F$a;->Zo:I

    if-nez v2, :cond_11

    iget-object v0, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget v2, v0, Labcd/_F$a;->Zo:I

    :cond_11
    iget v3, v0, Labcd/_F$a;->v5:I

    sub-int v3, v2, v3

    const/16 v4, 0x10

    if-gt v4, v3, :cond_1e

    iget-object v0, v0, Labcd/_F$a;->FH:[B

    add-int/lit8 v3, v2, -0x10

    goto :goto_33

    :cond_1e
    iget v0, p0, Labcd/_F;->a8:I

    if-nez v0, :cond_2a

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iput v0, p0, Labcd/_F;->a8:I

    :cond_2a
    move v2, v0

    iget-object v0, p0, Labcd/_F;->U2:[B

    add-int/lit8 v3, v2, -0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_33
    if-lt v3, v2, :cond_36

    return v1

    :cond_36
    aget-byte v4, v0, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_41

    ushr-int/lit8 v1, v1, 0x2

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v1, v4

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_33
.end method

.method public Ws()[B
    .registers 2

    iget v0, p0, Labcd/_F;->a8:I

    if-nez v0, :cond_c

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iput v0, p0, Labcd/_F;->a8:I

    :cond_c
    iget-object v0, p0, Labcd/_F;->U2:[B

    return-object v0
.end method

.method public XL()I
    .registers 2

    iget v0, p0, Labcd/_F;->a8:I

    if-nez v0, :cond_c

    iget-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v0}, Labcd/_F;->DW(Labcd/_F$a;)I

    move-result v0

    iput v0, p0, Labcd/_F;->a8:I

    :cond_c
    iget v0, p0, Labcd/_F;->a8:I

    return v0
.end method

.method protected Zo(I)V
    .registers 4

    invoke-super {p0, p1}, Labcd/qG;->Zo(I)V

    iget-object p1, p0, Labcd/_F;->Ws:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/_F;->Ws:Ljava/util/List;

    new-instance p1, Labcd/NF;

    invoke-direct {p1}, Labcd/NF;-><init>()V

    iput-object p1, p0, Labcd/_F;->QX:Labcd/NF;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/_F;->XL:Labcd/dG;

    iput-object p1, p0, Labcd/_F;->aM:Labcd/dG;

    iput-object p1, p0, Labcd/_F;->Mr:Labcd/_F$a;

    iput-object p1, p0, Labcd/_F;->j3:Labcd/_F$a;

    return-void

    :cond_27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    iget v1, v0, Labcd/iG;->EQ:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Labcd/iG;->EQ:I

    goto :goto_9
.end method

.method public j6(Labcd/kG;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Labcd/qG;->j6(Labcd/kG;Z)V

    sget-object p1, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/kG;)Z

    move-result p1

    iput-boolean p1, p0, Labcd/_F;->lg:Z

    return-void
.end method

.method public tp()Labcd/dG;
    .registers 4

    :cond_0
    invoke-super {p0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Labcd/_F;->XL:Labcd/dG;

    if-eqz v0, :cond_11

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    iget-object v2, p0, Labcd/_F;->aM:Labcd/dG;

    invoke-virtual {v1, p0, v0, v2}, Labcd/IE;->j6(Labcd/_F;Labcd/dG;Labcd/dG;)V

    :cond_11
    const/4 v0, 0x0

    return-object v0

    :cond_13
    iget v1, v0, Labcd/iG;->EQ:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/_F;->j6(Labcd/mG;)V

    iget-boolean v1, p0, Labcd/_F;->lg:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_25
    iget-object v1, p0, Labcd/_F;->XL:Labcd/dG;

    if-nez v1, :cond_2b

    iput-object v0, p0, Labcd/_F;->XL:Labcd/dG;

    :cond_2b
    iput-object v0, p0, Labcd/_F;->aM:Labcd/dG;

    iget-object v1, p0, Labcd/_F;->QX:Labcd/NF;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/NF;->j6(Labcd/iG;)V

    return-object v0
.end method

.method public v5()V
    .registers 2

    invoke-super {p0}, Labcd/qG;->v5()V

    new-instance v0, Labcd/NF;

    invoke-direct {v0}, Labcd/NF;-><init>()V

    iput-object v0, p0, Labcd/_F;->QX:Labcd/NF;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/_F;->XL:Labcd/dG;

    iput-object v0, p0, Labcd/_F;->aM:Labcd/dG;

    iput-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    iput-object v0, p0, Labcd/_F;->j3:Labcd/_F$a;

    return-void
.end method

.method public v5(Labcd/iG;)V
    .registers 4

    :goto_0
    instance-of v0, p1, Labcd/lG;

    if-nez v0, :cond_2f

    instance-of v0, p1, Labcd/dG;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Labcd/dG;

    invoke-super {p0, v0}, Labcd/qG;->FH(Labcd/dG;)V

    goto :goto_20

    :cond_f
    instance-of v0, p1, Labcd/mG;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Labcd/mG;

    invoke-direct {p0, v0}, Labcd/_F;->j6(Labcd/mG;)V

    goto :goto_20

    :cond_1a
    iget v0, p1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Labcd/iG;->EQ:I

    :goto_20
    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    iget-boolean v0, p0, Labcd/_F;->lg:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0, p1}, Labcd/_F;->Zo(Labcd/iG;)V

    :cond_2e
    return-void

    :cond_2f
    iget v0, p1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Labcd/iG;->EQ:I

    iget-boolean v0, p0, Labcd/_F;->lg:Z

    if-eqz v0, :cond_3c

    invoke-direct {p0, p1}, Labcd/_F;->Zo(Labcd/iG;)V

    :cond_3c
    check-cast p1, Labcd/lG;

    invoke-virtual {p1}, Labcd/lG;->j3()Labcd/iG;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method public yS()Labcd/iG;
    .registers 13

    const/4 v0, 0x0

    iput v0, p0, Labcd/_F;->a8:I

    :goto_3
    iget-object v1, p0, Labcd/_F;->Mr:Labcd/_F$a;

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v1, :cond_3b

    :cond_9
    :goto_9
    iget-object v1, p0, Labcd/_F;->QX:Labcd/NF;

    invoke-virtual {v1}, Labcd/NF;->j6()Labcd/iG;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_18

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->Hw()V

    return-object v4

    :cond_18
    iget v5, v1, Labcd/iG;->EQ:I

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1f

    goto :goto_9

    :cond_1f
    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Labcd/iG;->EQ:I

    and-int/2addr v5, v3

    if-nez v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    :goto_29
    iget-boolean v6, p0, Labcd/_F;->lg:Z

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    instance-of v0, v1, Labcd/mG;

    if-eqz v0, :cond_3a

    invoke-direct {p0, v1}, Labcd/_F;->gn(Labcd/iG;)Labcd/_F$a;

    move-result-object v0

    iput-object v4, v0, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v0, p0, Labcd/_F;->Mr:Labcd/_F$a;

    :cond_3a
    return-object v1

    :cond_3b
    iget-object v4, v1, Labcd/_F$a;->FH:[B

    iget v5, v1, Labcd/_F$a;->Hw:I

    :goto_3f
    array-length v6, v4

    if-lt v5, v6, :cond_4a

    iget-object v2, v1, Labcd/_F$a;->j6:Labcd/_F$a;

    iput-object v2, p0, Labcd/_F;->Mr:Labcd/_F$a;

    invoke-direct {p0, v1}, Labcd/_F;->j6(Labcd/_F$a;)V

    goto :goto_3

    :cond_4a
    invoke-static {v4, v5}, Labcd/_F;->j6([BI)I

    move-result v6

    iget-object v7, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v7, v4, v6}, Labcd/uE;->Hw([BI)V

    add-int/lit8 v6, v6, 0x14

    iget-object v7, p0, Labcd/qG;->Hw:Labcd/AE;

    iget-object v8, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v7, v8}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v7

    check-cast v7, Labcd/iG;

    const/4 v8, 0x2

    if-eqz v7, :cond_69

    iget v9, v7, Labcd/iG;->EQ:I

    and-int/2addr v9, v8

    if-eqz v9, :cond_69

    goto/16 :goto_10d

    :cond_69
    invoke-static {v4, v5, v6, v1}, Labcd/_F;->j6([BIILabcd/_F$a;)I

    move-result v5

    ushr-int/lit8 v9, v5, 0xc

    if-eq v9, v3, :cond_e1

    const/16 v10, 0x8

    const/4 v11, 0x3

    if-eq v9, v10, :cond_b8

    const/16 v10, 0xa

    if-eq v9, v10, :cond_b8

    const/16 v7, 0xe

    if-ne v9, v7, :cond_80

    goto/16 :goto_10d

    :cond_80
    new-instance v6, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidMode3:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v0

    const-string v5, "%o"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v0, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iget v0, v1, Labcd/_F$a;->v5:I

    iget v2, v1, Labcd/_F$a;->Zo:I

    invoke-static {v4, v0, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    iget-object v0, v1, Labcd/_F$a;->DW:Labcd/iG;

    aput-object v0, v3, v11

    invoke-static {v7, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b8
    if-nez v7, :cond_c9

    new-instance v0, Labcd/cG;

    iget-object v1, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-direct {v0, v1}, Labcd/cG;-><init>(Labcd/YD;)V

    iput v8, v0, Labcd/iG;->EQ:I

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    return-object v0

    :cond_c9
    instance-of v5, v7, Labcd/cG;

    if-eqz v5, :cond_db

    iget v5, v7, Labcd/iG;->EQ:I

    or-int/2addr v5, v8

    iput v5, v7, Labcd/iG;->EQ:I

    and-int/2addr v5, v3

    if-nez v5, :cond_d6

    return-object v7

    :cond_d6
    iget-boolean v5, p0, Labcd/_F;->lg:Z

    if-eqz v5, :cond_10d

    return-object v7

    :cond_db
    new-instance v0, Labcd/ZC;

    invoke-direct {v0, v7, v11}, Labcd/ZC;-><init>(Labcd/yE;I)V

    throw v0

    :cond_e1
    if-nez v7, :cond_f5

    new-instance v0, Labcd/mG;

    iget-object v1, p0, Labcd/qG;->FH:Labcd/uE;

    invoke-direct {v0, v1}, Labcd/mG;-><init>(Labcd/YD;)V

    iput v8, v0, Labcd/iG;->EQ:I

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    invoke-direct {p0, v0}, Labcd/_F;->VH(Labcd/iG;)Labcd/iG;

    return-object v0

    :cond_f5
    instance-of v5, v7, Labcd/mG;

    if-eqz v5, :cond_110

    iget v5, v7, Labcd/iG;->EQ:I

    or-int/2addr v5, v8

    iput v5, v7, Labcd/iG;->EQ:I

    and-int/2addr v5, v3

    if-nez v5, :cond_105

    invoke-direct {p0, v7}, Labcd/_F;->VH(Labcd/iG;)Labcd/iG;

    return-object v7

    :cond_105
    iget-boolean v5, p0, Labcd/_F;->lg:Z

    if-eqz v5, :cond_10d

    invoke-direct {p0, v7}, Labcd/_F;->VH(Labcd/iG;)Labcd/iG;

    return-object v7

    :cond_10d
    :goto_10d
    move v5, v6

    goto/16 :goto_3f

    :cond_110
    new-instance v0, Labcd/ZC;

    invoke-direct {v0, v7, v8}, Labcd/ZC;-><init>(Labcd/yE;I)V

    goto :goto_117

    :goto_116
    throw v0

    :goto_117
    goto :goto_116
.end method
