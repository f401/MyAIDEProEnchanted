.class public Labcd/qG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Labcd/dG;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/IE;

.field private final EQ:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Labcd/kG;",
            ">;"
        }
    .end annotation
.end field

.field final FH:Labcd/uE;

.field Hw:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/qG;->FH:Labcd/uE;

    new-instance v0, Labcd/AE;

    invoke-direct {v0}, Labcd/AE;-><init>()V

    iput-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    new-instance v0, Labcd/QF;

    invoke-direct {v0}, Labcd/QF;-><init>()V

    iput-object v0, p0, Labcd/qG;->u7:Labcd/LF;

    new-instance v0, Labcd/tG;

    invoke-direct {v0, p0}, Labcd/tG;-><init>(Labcd/qG;)V

    iput-object v0, p0, Labcd/qG;->tp:Labcd/XF;

    sget-object v0, Labcd/kG;->j6:Labcd/kG;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    sget-object v0, Labcd/yG;->j6:Labcd/yG;

    iput-object v0, p0, Labcd/qG;->we:Labcd/yG;

    sget-object v0, Labcd/jK;->j6:Labcd/jK;

    iput-object v0, p0, Labcd/qG;->J0:Labcd/jK;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/qG;->J8:Z

    return-void
.end method

.method private J8()V
    .registers 3

    iget v0, p0, Labcd/qG;->Zo:I

    if-eqz v0, :cond_0

    iget v1, p0, Labcd/qG;->v5:I

    or-int/2addr v1, v0

    iput v1, p0, Labcd/qG;->v5:I

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Labcd/qG;->VH:I

    and-int/2addr v0, v1

    iput v0, p0, Labcd/qG;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qG;->Zo:I

    :cond_0
    return-void
.end method

.method private Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/qG;->tp:Labcd/XF;

    instance-of v0, v0, Labcd/tG;

    return v0
.end method

.method private j6(Labcd/YD;Labcd/FE;)Labcd/iG;
    .registers 8

    const/4 v3, 0x1

    invoke-virtual {p2}, Labcd/FE;->FH()I

    move-result v0

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Labcd/lG;

    invoke-direct {v0, p1}, Labcd/lG;-><init>(Labcd/YD;)V

    invoke-virtual {p0, v0, p2}, Labcd/qG;->j6(Labcd/iG;Labcd/FE;)[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Labcd/lG;->j6(Labcd/qG;[B)V

    :goto_0
    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->badObjectType:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Labcd/cG;

    invoke-direct {v0, p1}, Labcd/cG;-><init>(Labcd/YD;)V

    iget v1, v0, Labcd/iG;->EQ:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Labcd/iG;->EQ:I

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/mG;

    invoke-direct {v0, p1}, Labcd/mG;-><init>(Labcd/YD;)V

    iget v1, v0, Labcd/iG;->EQ:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Labcd/iG;->EQ:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Labcd/qG;->j6(Labcd/iG;Labcd/FE;)[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Labcd/dG;->j6(Labcd/qG;[B)V

    goto :goto_0
.end method

.method static synthetic j6(Labcd/qG;Labcd/YD;Labcd/FE;)Labcd/iG;
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/qG;->j6(Labcd/YD;Labcd/FE;)Labcd/iG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DW(Labcd/YD;)Labcd/cG;
    .registers 4

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/cG;

    if-nez v0, :cond_0

    new-instance v0, Labcd/cG;

    invoke-direct {v0, p1}, Labcd/cG;-><init>(Labcd/YD;)V

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_0
    return-object v0
.end method

.method public DW(Labcd/dG;)V
    .registers 4

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_1
    iget v0, p1, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/qG;->u7:Labcd/LF;

    invoke-virtual {v0, p1}, Labcd/LF;->j6(Labcd/dG;)V

    goto :goto_0
.end method

.method public DW(Labcd/iG;)V
    .registers 3

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Labcd/iG;->j6(Labcd/qG;)V

    :cond_0
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

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    iget v1, p0, Labcd/qG;->v5:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Labcd/qG;->v5:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->flagsAlreadyCreated:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH(Labcd/YD;)Labcd/dG;
    .registers 4

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/dG;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_0
    return-object v0
.end method

.method public FH(Labcd/iG;)Labcd/iG;
    .registers 4

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Labcd/lG;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    check-cast v0, Labcd/lG;

    invoke-virtual {v0}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v0

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

    move-result-object v0

    check-cast v0, Labcd/iG;

    return-object v0
.end method

.method protected Hw()V
    .registers 3

    invoke-direct {p0}, Labcd/qG;->Ws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
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
    .registers 5

    invoke-virtual {p0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v1, v0, Labcd/dG;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/dG;

    return-object v0

    :cond_0
    new-instance v0, Labcd/ZC;

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object v1

    const-string v2, "commit"

    invoke-direct {v0, v1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

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

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0, p1}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/qG;->j6(Labcd/YD;Labcd/FE;)Labcd/iG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method protected Zo(I)V
    .registers 11

    invoke-direct {p0}, Labcd/qG;->J8()V

    or-int/lit8 v1, p1, 0x1

    xor-int/lit8 v2, v1, -0x1

    new-instance v3, Labcd/UF;

    invoke-direct {v3}, Labcd/UF;-><init>()V

    iget-object v0, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v3}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/qG;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Labcd/QF;

    invoke-direct {v0}, Labcd/QF;-><init>()V

    iput-object v0, p0, Labcd/qG;->u7:Labcd/LF;

    new-instance v0, Labcd/tG;

    invoke-direct {v0, p0}, Labcd/tG;-><init>(Labcd/qG;)V

    iput-object v0, p0, Labcd/qG;->tp:Labcd/XF;

    return-void

    :cond_2
    iget-object v4, v0, Labcd/dG;->J8:[Labcd/dG;

    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    iget v7, v6, Labcd/iG;->EQ:I

    and-int v8, v7, v2

    if-nez v8, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    and-int/2addr v7, v1

    iput v7, v6, Labcd/iG;->EQ:I

    invoke-virtual {v6}, Labcd/dG;->gW()V

    invoke-virtual {v3, v6}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dG;

    iget v5, v0, Labcd/iG;->EQ:I

    and-int v6, v5, v2

    if-eqz v6, :cond_0

    and-int/2addr v5, v1

    iput v5, v0, Labcd/iG;->EQ:I

    invoke-virtual {v0}, Labcd/dG;->gW()V

    invoke-virtual {v3, v0}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_0
.end method

.method public gn()Labcd/jK;
    .registers 2

    iget-object v0, p0, Labcd/qG;->J0:Labcd/jK;

    return-object v0
.end method

.method public gn(Labcd/YD;)Labcd/mG;
    .registers 5

    invoke-virtual {p0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v1, v0, Labcd/dG;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    return-object v0

    :cond_0
    instance-of v1, v0, Labcd/mG;

    if-eqz v1, :cond_1

    check-cast v0, Labcd/mG;

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/ZC;

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object v1

    const-string v2, "tree"

    invoke-direct {v0, v1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Labcd/dG;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Labcd/qG;->tp()Labcd/dG;
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Labcd/ZC; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Labcd/pG;

    invoke-direct {v1, p0, v0}, Labcd/pG;-><init>(Labcd/qG;Labcd/dG;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Ljava/lang/Iterable;Z)Labcd/MF;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/yE;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)",
            "Labcd/MF;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/nG;

    invoke-direct {v0, p0, v1}, Labcd/nG;-><init>(Labcd/qG;Ljava/util/Iterator;)V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Labcd/oG;

    iget-object v3, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v3, v2, p2}, Labcd/IE;->DW(Ljava/lang/Iterable;Z)Labcd/ZD;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Labcd/oG;-><init>(Labcd/qG;Ljava/util/Iterator;Labcd/ZD;)V

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/yE;

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, v1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/iG;

    if-eqz v0, :cond_2

    iget v5, v0, Labcd/iG;->EQ:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/iG;

    if-nez v0, :cond_0

    if-eq p2, v2, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    new-instance v0, Labcd/lG;

    invoke-direct {v0, p1}, Labcd/lG;-><init>(Labcd/YD;)V

    :goto_0
    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidGitType:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Labcd/cG;

    invoke-direct {v0, p1}, Labcd/cG;-><init>(Labcd/YD;)V

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/mG;

    invoke-direct {v0, p1}, Labcd/mG;-><init>(Labcd/YD;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Labcd/qG;->j6(Labcd/YD;)Labcd/dG;

    move-result-object v0

    goto :goto_0
.end method

.method j6(Labcd/dG;)V
    .registers 4

    iget v0, p1, Labcd/iG;->EQ:I

    iget v1, p0, Labcd/qG;->VH:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Labcd/dG;->j6(Labcd/dG;I)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/fG;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v0, p0, Labcd/qG;->v5:I

    iget v1, p1, Labcd/fG;->Hw:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Labcd/fG;->DW:Labcd/qG;

    if-ne v0, p0, :cond_0

    iget v0, p0, Labcd/qG;->VH:I

    or-int/2addr v0, v1

    iput v0, p0, Labcd/qG;->VH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->flagNotFromThis:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Labcd/fG;->FH:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->flagIsDisposed:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Labcd/fG;->FH:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Labcd/hG;)V
    .registers 3

    iget v0, p1, Labcd/hG;->j6:I

    invoke-virtual {p0, v0}, Labcd/qG;->Zo(I)V

    return-void
.end method

.method public j6(Labcd/jK;)V
    .registers 2

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Labcd/qG;->J0:Labcd/jK;

    return-void

    :cond_0
    sget-object p1, Labcd/jK;->j6:Labcd/jK;

    goto :goto_0
.end method

.method public j6(Labcd/kG;Z)V
    .registers 5

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    if-eqz p2, :cond_1

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    sget-object v1, Labcd/kG;->j6:Labcd/kG;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    sget-object v1, Labcd/kG;->j6:Labcd/kG;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public j6(Labcd/yG;)V
    .registers 2

    invoke-virtual {p0}, Labcd/qG;->Hw()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Labcd/qG;->we:Labcd/yG;

    return-void

    :cond_0
    sget-object p1, Labcd/yG;->j6:Labcd/yG;

    goto :goto_0
.end method

.method public j6(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/dG;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dG;

    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/dG;)V

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/qG;->J8:Z

    return-void
.end method

.method public final varargs j6([Labcd/fG;)V
    .registers 6

    const/4 v1, 0x0

    array-length v3, p1

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {p0, v2}, Labcd/qG;->Zo(I)V

    return-void

    :cond_0
    aget-object v1, p1, v0

    iget v1, v1, Labcd/fG;->Hw:I

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public j6(Labcd/dG;Labcd/dG;)Z
    .registers 6

    iget-object v1, p0, Labcd/qG;->we:Labcd/yG;

    iget-object v2, p0, Labcd/qG;->J0:Labcd/jK;

    :try_start_0
    invoke-direct {p0}, Labcd/qG;->J8()V

    iget v0, p0, Labcd/qG;->v5:I

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, -0x40

    invoke-virtual {p0, v0}, Labcd/qG;->Zo(I)V

    sget-object v0, Labcd/yG;->Hw:Labcd/yG;

    iput-object v0, p0, Labcd/qG;->we:Labcd/yG;

    sget-object v0, Labcd/jK;->j6:Labcd/jK;

    iput-object v0, p0, Labcd/qG;->J0:Labcd/jK;

    invoke-virtual {p0, p2}, Labcd/qG;->DW(Labcd/dG;)V

    invoke-virtual {p0, p1}, Labcd/qG;->DW(Labcd/dG;)V

    invoke-virtual {p0}, Labcd/qG;->tp()Labcd/dG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-object v1, p0, Labcd/qG;->we:Labcd/yG;

    iput-object v2, p0, Labcd/qG;->J0:Labcd/jK;

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/qG;->we:Labcd/yG;

    iput-object v2, p0, Labcd/qG;->J0:Labcd/jK;

    throw v0
.end method

.method public j6(Labcd/kG;)Z
    .registers 3

    iget-object v0, p0, Labcd/qG;->EQ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method j6(Labcd/iG;)[B
    .registers 4

    iget-object v0, p0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Labcd/qG;->j6(Labcd/iG;Labcd/FE;)[B

    move-result-object v0

    return-object v0
.end method

.method j6(Labcd/iG;Labcd/FE;)[B
    .registers 4

    const/high16 v0, 0x500000

    :try_start_0
    invoke-virtual {p2, v0}, Labcd/FE;->DW(I)[B
    :try_end_0
    .catch Labcd/cD; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Labcd/cD;->j6(Labcd/YD;)V

    throw v0
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
    .registers 4

    iget-object v0, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/mG;

    if-nez v0, :cond_0

    new-instance v0, Labcd/mG;

    invoke-direct {v0, p1}, Labcd/mG;-><init>(Labcd/YD;)V

    iget-object v1, p0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_0
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
    .registers 4

    invoke-direct {p0}, Labcd/qG;->Ws()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/qG;->v5:I

    or-int/2addr v0, p1

    iput v0, p0, Labcd/qG;->v5:I

    xor-int/lit8 v0, p1, -0x1

    iget v1, p0, Labcd/qG;->VH:I

    and-int/2addr v0, v1

    iput v0, p0, Labcd/qG;->VH:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Labcd/qG;->Zo:I

    or-int/2addr v0, p1

    iput v0, p0, Labcd/qG;->Zo:I

    goto :goto_0
.end method

.method public final we()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/qG;->Zo(I)V

    return-void
.end method
