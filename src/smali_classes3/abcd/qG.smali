.class public Labcd/qG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Labcd/dG;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/IE;

.field private final EQ:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Labcd/kG;",
            ">;"
        }
    .end annotation
.end field

.field final FH:Labcd/uE;

.field Hw:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE<",
            "Labcd/iG;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Labcd/jK;

.field private J8:Z

.field VH:I

.field private Zo:I

.field final gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/dG;",
            ">;"
        }
    .end annotation
.end field

.field final j6:Labcd/UE;

.field tp:Labcd/XF;

.field u7:Labcd/LF;

.field private v5:I

.field private we:Labcd/yG;


# direct methods
.method public constructor <init>(Labcd/IE;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Labcd/qG;-><init>(Labcd/UE;Labcd/IE;)V

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/qG;-><init>(Labcd/UE;Labcd/IE;)V

    return-void
.end method

.method private constructor <init>(Labcd/UE;Labcd/IE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x40

    iput v0, p0, Labcd/qG;->v5:I

    const/4 v0, 0x4

    iput v0, p0, Labcd/qG;->VH:I

    iput-object p1, p0, Labcd/qG;->j6:Labcd/UE;

    iput-object p2, p0, Labcd/qG;->DW:Labcd/IE;

    new-instance p1, Labcd/uE;

    invoke-direct {p1}, Labcd/uE;-><init>()V

    iput-object p1, p0, Labcd/qG;->FH:Labcd/uE;

    new-instance p1, Labcd/AE;

    invoke-direct {p1}, Labcd/AE;-><init>()V

    iput-object p1, p0, Labcd/qG;->Hw:Labcd/AE;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    new-instance p1, Labcd/QF;

    invoke-direct {p1}, Labcd/QF;-><init>()V

    iput-object p1, p0, Labcd/qG;->u7:Labcd/LF;

    new-instance p1, Labcd/tG;

    invoke-direct {p1, p0}, Labcd/tG;-><init>(Labcd/qG;)V

    iput-object p1, p0, Labcd/qG;->tp:Labcd/XF;

    sget-object p1, Labcd/kG;->j6:Labcd/kG;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    sget-object p1, Labcd/yG;->j6:Labcd/yG;

    iput-object p1, p0, Labcd/qG;->we:Labcd/yG;

    sget-object p1, Labcd/jK;->j6:Labcd/jK;

    iput-object p1, p0, Labcd/qG;->J0:Labcd/jK;

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/qG;->J8:Z

    return-void
.end method

.method private J8()V
    .registers 3

    iget v0, p0, Labcd/qG;->Zo:I

    if-eqz v0, :cond_13

    iget v1, p0, Labcd/qG;->v5:I

    or-int/2addr v1, v0

    iput v1, p0, Labcd/qG;->v5:I

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Labcd/qG;->VH:I

    and-int/2addr v0, v1

    iput v0, p0, Labcd/qG;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qG;->Zo:I

    :cond_13
    return-void
.end method

.method private Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/qG;->tp:Labcd/XF;

    instance-of v0, v0, Labcd/tG;

    return v0
.end method

.method private j6(Labcd/YD;Labcd/FE;)Labcd/iG;
    .registers 6

    invoke-virtual {p2}, Labcd/FE;->FH()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_36

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    new-instance v0, Labcd/lG;

    invoke-direct {v0, p1}, Labcd/lG;-><init>(Labcd/YD;)V

    invoke-virtual {p0, v0, p2}, Labcd/qG;->j6(Labcd/iG;Labcd/FE;)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Labcd/lG;->j6(Labcd/qG;[B)V

    goto :goto_52

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->badObjectType:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance v0, Labcd/cG;

    invoke-direct {v0, p1}, Labcd/cG;-><init>(Labcd/YD;)V

    goto :goto_41

    :cond_3c
    new-instance v0, Labcd/mG;

    invoke-direct {v0, p1}, Labcd/mG;-><init>(Labcd/YD;)V

    :goto_41
    iget p1, v0, Labcd/iG;->EQ:I

    or-int/2addr p1, v1

    iput p1, v0, Labcd/iG;->EQ:I

    goto :goto_52

    :cond_47
    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Labcd/qG;->j6(Labcd/iG;Labcd/FE;)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Labcd/dG;->j6(Labcd/qG;[B)V

    :goto_52
    iget-object p1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    return-object v0
.end method

.method static synthetic j6(Labcd/qG;Labcd/YD;Labcd/FE;)Labcd/iG;
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/qG;->j6(Labcd/YD;Labcd/FE;)Labcd/iG;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW(Labcd/YD;)Labcd/cG;
    .registers 3

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/cG;

    if-nez v0, :cond_14

    new-instance v0, Labcd/cG;

    invoke-direct {v0, p1}, Labcd/cG;-><init>(Labcd/YD;)V

    iget-object p1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_14
    return-object v0
.end method

.method public DW(Labcd/dG;)V
    .registers 4

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_7

    return-void

    :cond_7
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    invoke-virtual {p1, p0}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_e
    iget v0, p1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/qG;->u7:Labcd/LF;

    invoke-virtual {v0, p1}, Labcd/LF;->j6(Labcd/dG;)V

    return-void
.end method

.method public DW(Labcd/iG;)V
    .registers 3

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9

    invoke-virtual {p1, p0}, Labcd/iG;->j6(Labcd/qG;)V

    :cond_9
    return-void
.end method

.method public DW(Labcd/kG;)V
    .registers 3

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public EQ()V
    .registers 2

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return-void
.end method

.method FH()I
    .registers 6

    iget v0, p0, Labcd/qG;->v5:I

    if-eqz v0, :cond_10

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    iget v1, p0, Labcd/qG;->v5:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Labcd/qG;->v5:I

    return v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->flagsAlreadyCreated:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH(Labcd/YD;)Labcd/dG;
    .registers 3

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/dG;

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iget-object p1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_13
    return-object v0
.end method

.method public FH(Labcd/iG;)Labcd/iG;
    .registers 3

    :goto_0
    instance-of v0, p1, Labcd/lG;

    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/iG;)V

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    check-cast p1, Labcd/lG;

    invoke-virtual {p1}, Labcd/lG;->j3()Labcd/iG;

    move-result-object p1

    goto :goto_0
.end method

.method public FH(Labcd/dG;)V
    .registers 3

    iget v0, p1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Labcd/iG;->EQ:I

    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/dG;)V

    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/dG;)V

    return-void
.end method

.method public Hw(Labcd/YD;)Labcd/iG;
    .registers 3

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object p1

    check-cast p1, Labcd/iG;

    return-object p1
.end method

.method protected Hw()V
    .registers 3

    invoke-direct {p0}, Labcd/qG;->Ws()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->outputHasAlreadyBeenStarted:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public J0()Labcd/_F;
    .registers 3

    new-instance v0, Labcd/_F;

    iget-object v1, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/_F;-><init>(Labcd/IE;)V

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    iput-object v1, v0, Labcd/qG;->Hw:Labcd/AE;

    iget v1, p0, Labcd/qG;->v5:I

    iput v1, v0, Labcd/qG;->v5:I

    return-object v0
.end method

.method public VH(Labcd/YD;)Labcd/dG;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v1, v0, Labcd/dG;

    if-eqz v1, :cond_f

    check-cast v0, Labcd/dG;

    return-object v0

    :cond_f
    new-instance v0, Labcd/ZC;

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object p1

    const-string v1, "commit"

    invoke-direct {v0, p1, v1}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public VH()Labcd/yG;
    .registers 2

    iget-object v0, p0, Labcd/qG;->we:Labcd/yG;

    return-object v0
.end method

.method public Zo()Labcd/IE;
    .registers 2

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    return-object v0
.end method

.method public Zo(Labcd/YD;)Labcd/iG;
    .registers 3

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/iG;

    if-nez v0, :cond_15

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0, p1}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/qG;->j6(Labcd/YD;Labcd/FE;)Labcd/iG;

    move-result-object v0

    goto :goto_18

    :cond_15
    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    :goto_18
    return-object v0
.end method

.method protected Zo(I)V
    .registers 10

    invoke-direct {p0}, Labcd/qG;->J8()V

    or-int/lit8 p1, p1, 0x1

    xor-int/lit8 v0, p1, -0x1

    new-instance v1, Labcd/UF;

    invoke-direct {v1}, Labcd/UF;-><init>()V

    iget-object v2, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_51

    :goto_18
    invoke-virtual {v1}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v2

    if-nez v2, :cond_32

    iget-object p1, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Labcd/QF;

    invoke-direct {p1}, Labcd/QF;-><init>()V

    iput-object p1, p0, Labcd/qG;->u7:Labcd/LF;

    new-instance p1, Labcd/tG;

    invoke-direct {p1, p0}, Labcd/tG;-><init>(Labcd/qG;)V

    iput-object p1, p0, Labcd/qG;->tp:Labcd/XF;

    return-void

    :cond_32
    iget-object v3, v2, Labcd/dG;->J8:[Labcd/dG;

    if-nez v3, :cond_37

    goto :goto_18

    :cond_37
    array-length v4, v3

    const/4 v2, 0x0

    :goto_39
    if-lt v2, v4, :cond_3c

    goto :goto_18

    :cond_3c
    aget-object v5, v3, v2

    iget v6, v5, Labcd/iG;->EQ:I

    and-int v7, v6, v0

    if-nez v7, :cond_45

    goto :goto_4e

    :cond_45
    and-int/2addr v6, p1

    iput v6, v5, Labcd/iG;->EQ:I

    invoke-virtual {v5}, Labcd/dG;->gW()V

    invoke-virtual {v1, v5}, Labcd/UF;->j6(Labcd/dG;)V

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/dG;

    iget v4, v3, Labcd/iG;->EQ:I

    and-int v5, v4, v0

    if-nez v5, :cond_5e

    goto :goto_12

    :cond_5e
    and-int/2addr v4, p1

    iput v4, v3, Labcd/iG;->EQ:I

    invoke-virtual {v3}, Labcd/dG;->gW()V

    invoke-virtual {v1, v3}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_12
.end method

.method public gn()Labcd/jK;
    .registers 2

    iget-object v0, p0, Labcd/qG;->J0:Labcd/jK;

    return-object v0
.end method

.method public gn(Labcd/YD;)Labcd/mG;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v1, v0, Labcd/dG;

    if-eqz v1, :cond_13

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object p1

    goto :goto_1a

    :cond_13
    instance-of v1, v0, Labcd/mG;

    if-eqz v1, :cond_1e

    move-object p1, v0

    check-cast p1, Labcd/mG;

    :goto_1a
    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/iG;)V

    return-object p1

    :cond_1e
    new-instance v0, Labcd/ZC;

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object p1

    const-string v1, "tree"

    invoke-direct {v0, p1, v1}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/dG;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0
    :try_end_4
    .catch Labcd/fD; {:try_start_0 .. :try_end_4} :catch_18
    .catch Labcd/ZC; {:try_start_0 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a

    new-instance v1, Labcd/pG;

    invoke-direct {v1, p0, v0}, Labcd/pG;-><init>(Labcd/qG;Labcd/dG;)V

    return-object v1

    :catch_a
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_18
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Ljava/lang/Iterable;Z)Labcd/MF;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/yE;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)",
            "Labcd/MF;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance p2, Labcd/nG;

    invoke-direct {p2, p0, p1}, Labcd/nG;-><init>(Labcd/qG;Ljava/util/Iterator;)V

    return-object p2

    :cond_24
    new-instance v1, Labcd/oG;

    iget-object v2, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v2, v0, p2}, Labcd/IE;->DW(Ljava/lang/Iterable;Z)Labcd/ZD;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Labcd/oG;-><init>(Labcd/qG;Ljava/util/Iterator;Labcd/ZD;)V

    return-object v1

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yE;

    iget-object v3, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v3, v2}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v3

    check-cast v3, Labcd/iG;

    if-eqz v3, :cond_4a

    iget v4, v3, Labcd/iG;->EQ:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4a

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_4a
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method protected j6(Labcd/YD;)Labcd/dG;
    .registers 3

    new-instance v0, Labcd/dG;

    invoke-direct {v0, p1}, Labcd/dG;-><init>(Labcd/YD;)V

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/fG;
    .registers 4

    new-instance v0, Labcd/fG;

    invoke-virtual {p0}, Labcd/qG;->FH()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Labcd/fG;-><init>(Labcd/qG;Ljava/lang/String;I)V

    return-object v0
.end method

.method public j6(Labcd/YD;I)Labcd/iG;
    .registers 6

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/iG;

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    if-eq p2, v0, :cond_42

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3b

    const/4 v1, 0x3

    if-eq p2, v1, :cond_35

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1c

    new-instance p2, Labcd/lG;

    invoke-direct {p2, p1}, Labcd/lG;-><init>(Labcd/YD;)V

    goto :goto_40

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidGitType:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p2, Labcd/cG;

    invoke-direct {p2, p1}, Labcd/cG;-><init>(Labcd/YD;)V

    goto :goto_40

    :cond_3b
    new-instance p2, Labcd/mG;

    invoke-direct {p2, p1}, Labcd/mG;-><init>(Labcd/YD;)V

    :goto_40
    move-object v0, p2

    goto :goto_47

    :cond_42
    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/YD;)Labcd/dG;

    move-result-object p1

    move-object v0, p1

    :goto_47
    iget-object p1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_4c
    return-object v0
.end method

.method j6(Labcd/dG;)V
    .registers 4

    iget v0, p1, Labcd/iG;->EQ:I

    iget v1, p0, Labcd/qG;->VH:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    invoke-static {p1, v0}, Labcd/dG;->j6(Labcd/dG;I)V

    :cond_a
    return-void
.end method

.method public j6(Labcd/fG;)V
    .registers 6

    iget v0, p0, Labcd/qG;->v5:I

    iget v1, p1, Labcd/fG;->Hw:I

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_29

    iget-object v0, p1, Labcd/fG;->DW:Labcd/qG;

    if-ne v0, p0, :cond_13

    iget p1, p0, Labcd/qG;->VH:I

    or-int/2addr p1, v1

    iput p1, p0, Labcd/qG;->VH:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->flagNotFromThis:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Labcd/fG;->FH:Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->flagIsDisposed:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Labcd/fG;->FH:Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Labcd/hG;)V
    .registers 2

    iget p1, p1, Labcd/hG;->j6:I

    invoke-virtual {p0, p1}, Labcd/qG;->Zo(I)V

    return-void
.end method

.method public j6(Labcd/jK;)V
    .registers 2

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    if-eqz p1, :cond_6

    goto :goto_8

    :cond_6
    sget-object p1, Labcd/jK;->j6:Labcd/jK;

    :goto_8
    iput-object p1, p0, Labcd/qG;->J0:Labcd/jK;

    return-void
.end method

.method public j6(Labcd/kG;Z)V
    .registers 3

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    if-eqz p2, :cond_b

    iget-object p2, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_b
    iget-object p2, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_10
    iget-object p1, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_21

    iget-object p1, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    sget-object p2, Labcd/kG;->j6:Labcd/kG;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_21
    iget-object p1, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    sget-object p2, Labcd/kG;->j6:Labcd/kG;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_30
    return-void
.end method

.method public j6(Labcd/yG;)V
    .registers 2

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    if-eqz p1, :cond_6

    goto :goto_8

    :cond_6
    sget-object p1, Labcd/yG;->j6:Labcd/yG;

    :goto_8
    iput-object p1, p0, Labcd/qG;->we:Labcd/yG;

    return-void
.end method

.method public j6(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/dG;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dG;

    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/dG;)V

    goto :goto_4
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/qG;->J8:Z

    return-void
.end method

.method public final varargs j6([Labcd/fG;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-lt v1, v0, :cond_9

    invoke-virtual {p0, v2}, Labcd/qG;->Zo(I)V

    return-void

    :cond_9
    aget-object v3, p1, v1

    iget v3, v3, Labcd/fG;->Hw:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public j6(Labcd/dG;Labcd/dG;)Z
    .registers 6

    iget-object v0, p0, Labcd/qG;->we:Labcd/yG;

    iget-object v1, p0, Labcd/qG;->J0:Labcd/jK;

    :try_start_4
    invoke-direct {p0}, Labcd/qG;->J8()V

    iget v2, p0, Labcd/qG;->v5:I

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, -0x40

    invoke-virtual {p0, v2}, Labcd/qG;->Zo(I)V

    sget-object v2, Labcd/yG;->Hw:Labcd/yG;

    iput-object v2, p0, Labcd/qG;->we:Labcd/yG;

    sget-object v2, Labcd/jK;->j6:Labcd/jK;

    iput-object v2, p0, Labcd/qG;->J0:Labcd/jK;

    invoke-virtual {p0, p2}, Labcd/qG;->DW(Labcd/dG;)V

    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/dG;)V

    invoke-virtual {p0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object p2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2c

    if-ne p2, p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iput-object v0, p0, Labcd/qG;->we:Labcd/yG;

    iput-object v1, p0, Labcd/qG;->J0:Labcd/jK;

    return p1

    :catchall_2c
    move-exception p1

    iput-object v0, p0, Labcd/qG;->we:Labcd/yG;

    iput-object v1, p0, Labcd/qG;->J0:Labcd/jK;

    throw p1
.end method

.method public j6(Labcd/kG;)Z
    .registers 3

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method j6(Labcd/iG;)[B
    .registers 4

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Labcd/qG;->j6(Labcd/iG;Labcd/FE;)[B

    move-result-object p1

    return-object p1
.end method

.method j6(Labcd/iG;Labcd/FE;)[B
    .registers 4

    const/high16 v0, 0x500000

    :try_start_2
    invoke-virtual {p2, v0}, Labcd/FE;->DW(I)[B

    move-result-object p1
    :try_end_6
    .catch Labcd/cD; {:try_start_2 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p2

    invoke-virtual {p2, p1}, Labcd/cD;->j6(Labcd/YD;)V

    throw p2
.end method

.method public tp()Labcd/dG;
    .registers 2

    iget-object v0, p0, Labcd/qG;->tp:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    return-object v0
.end method

.method public u7()Z
    .registers 2

    iget-boolean v0, p0, Labcd/qG;->J8:Z

    return v0
.end method

.method public v5(Labcd/YD;)Labcd/mG;
    .registers 3

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/mG;

    if-nez v0, :cond_14

    new-instance v0, Labcd/mG;

    invoke-direct {v0, p1}, Labcd/mG;-><init>(Labcd/YD;)V

    iget-object p1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_14
    return-object v0
.end method

.method public v5()V
    .registers 2

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    const/16 v0, -0x40

    iput v0, p0, Labcd/qG;->v5:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qG;->Zo:I

    const/4 v0, 0x4

    iput v0, p0, Labcd/qG;->VH:I

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0}, Labcd/AE;->clear()V

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Labcd/QF;

    invoke-direct {v0}, Labcd/QF;-><init>()V

    iput-object v0, p0, Labcd/qG;->u7:Labcd/LF;

    new-instance v0, Labcd/tG;

    invoke-direct {v0, p0}, Labcd/tG;-><init>(Labcd/qG;)V

    iput-object v0, p0, Labcd/qG;->tp:Labcd/XF;

    return-void
.end method

.method v5(I)V
    .registers 3

    invoke-direct {p0}, Labcd/qG;->Ws()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Labcd/qG;->v5:I

    or-int/2addr v0, p1

    iput v0, p0, Labcd/qG;->v5:I

    xor-int/lit8 p1, p1, -0x1

    iget v0, p0, Labcd/qG;->VH:I

    and-int/2addr p1, v0

    iput p1, p0, Labcd/qG;->VH:I

    goto :goto_18

    :cond_13
    iget v0, p0, Labcd/qG;->Zo:I

    or-int/2addr p1, v0

    iput p1, p0, Labcd/qG;->Zo:I

    :goto_18
    return-void
.end method

.method public final we()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/qG;->Zo(I)V

    return-void
.end method
