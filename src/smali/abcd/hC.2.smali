.class public Labcd/hC;
.super Ljava/lang/Object;


# static fields
.field private static DW:[I

.field static final j6:Labcd/WD;


# instance fields
.field protected FH:Ljava/lang/String;

.field protected Hw:Ljava/lang/String;

.field protected VH:Labcd/hC$a;

.field protected Zo:Labcd/rE;

.field protected gn:I

.field protected tp:Labcd/WD;

.field protected u7:Labcd/WD;

.field protected v5:Labcd/rE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    invoke-static {v0}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v0

    sput-object v0, Labcd/hC;->j6:Labcd/WD;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;
    .registers 6

    new-instance v0, Labcd/hC;

    invoke-direct {v0}, Labcd/hC;-><init>()V

    iget-object v1, p1, Labcd/hC;->u7:Labcd/WD;

    iput-object v1, v0, Labcd/hC;->u7:Labcd/WD;

    iget-object v1, p1, Labcd/hC;->v5:Labcd/rE;

    iput-object v1, v0, Labcd/hC;->v5:Labcd/rE;

    iget-object v1, p1, Labcd/hC;->FH:Ljava/lang/String;

    iput-object v1, v0, Labcd/hC;->FH:Ljava/lang/String;

    iget-object v1, p2, Labcd/hC;->tp:Labcd/WD;

    iput-object v1, v0, Labcd/hC;->tp:Labcd/WD;

    iget-object v1, p2, Labcd/hC;->Zo:Labcd/rE;

    iput-object v1, v0, Labcd/hC;->Zo:Labcd/rE;

    iget-object v1, p2, Labcd/hC;->Hw:Ljava/lang/String;

    iput-object v1, v0, Labcd/hC;->Hw:Ljava/lang/String;

    iput-object p0, v0, Labcd/hC;->VH:Labcd/hC$a;

    iput p3, v0, Labcd/hC;->gn:I

    return-object v0
.end method

.method public static j6(Labcd/YJ;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YJ;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/hC;->j6(Labcd/YJ;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/YJ;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YJ;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Labcd/YJ;->Zo()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Labcd/YJ;->gn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Labcd/uE;

    invoke-direct {v1}, Labcd/uE;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Labcd/YJ;->EQ()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotBeRecursiveWhenTreesAreIncluded:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Labcd/hC;

    invoke-direct {v2}, Labcd/hC;-><init>()V

    invoke-virtual {p0, v1, v5}, Labcd/YJ;->j6(Labcd/uE;I)V

    invoke-static {v1}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->u7:Labcd/WD;

    invoke-virtual {p0, v1, v6}, Labcd/YJ;->j6(Labcd/uE;I)V

    invoke-static {v1}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {p0, v5}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    invoke-virtual {p0, v6}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-virtual {p0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->FH:Ljava/lang/String;

    iput-object v3, v2, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    sget-object v4, Labcd/rE;->Zo:Labcd/rE;

    if-ne v3, v4, :cond_5

    const-string v3, "/dev/null"

    iput-object v3, v2, Labcd/hC;->FH:Ljava/lang/String;

    sget-object v3, Labcd/hC$a;->j6:Labcd/hC$a;

    iput-object v3, v2, Labcd/hC;->VH:Labcd/hC$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/YJ;->u7()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Labcd/YJ;->j6()V

    goto :goto_0

    :cond_5
    iget-object v3, v2, Labcd/hC;->Zo:Labcd/rE;

    if-ne v3, v4, :cond_6

    const-string v3, "/dev/null"

    iput-object v3, v2, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object v3, Labcd/hC$a;->FH:Labcd/hC$a;

    iput-object v3, v2, Labcd/hC;->VH:Labcd/hC$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v3, v2, Labcd/hC;->u7:Labcd/WD;

    iget-object v4, v2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v3, v4}, Labcd/WD;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Labcd/hC$a;->DW:Labcd/hC$a;

    iput-object v3, v2, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    iget-object v4, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v3, v4}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {v2}, Labcd/hC;->j6(Labcd/hC;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    iget-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    iget-object v4, v2, Labcd/hC;->Zo:Labcd/rE;

    if-eq v3, v4, :cond_4

    sget-object v3, Labcd/hC$a;->DW:Labcd/hC$a;

    iput-object v3, v2, Labcd/hC;->VH:Labcd/hC$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->treeWalkMustHaveExactlyTwoTrees:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static j6(Labcd/hC;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/hC;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/hC;

    invoke-direct {v0}, Labcd/hC;-><init>()V

    invoke-virtual {p0}, Labcd/hC;->Zo()Labcd/WD;

    move-result-object v1

    iput-object v1, v0, Labcd/hC;->u7:Labcd/WD;

    invoke-virtual {p0}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v1

    iput-object v1, v0, Labcd/hC;->v5:Labcd/rE;

    invoke-virtual {p0}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Labcd/hC;->FH:Ljava/lang/String;

    sget-object v1, Labcd/hC;->j6:Labcd/WD;

    iput-object v1, v0, Labcd/hC;->tp:Labcd/WD;

    sget-object v1, Labcd/rE;->Zo:Labcd/rE;

    iput-object v1, v0, Labcd/hC;->Zo:Labcd/rE;

    const-string v1, "/dev/null"

    iput-object v1, v0, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    iput-object v1, v0, Labcd/hC;->VH:Labcd/hC$a;

    new-instance v1, Labcd/hC;

    invoke-direct {v1}, Labcd/hC;-><init>()V

    sget-object v2, Labcd/hC;->j6:Labcd/WD;

    iput-object v2, v1, Labcd/hC;->u7:Labcd/WD;

    sget-object v2, Labcd/rE;->Zo:Labcd/rE;

    iput-object v2, v1, Labcd/hC;->v5:Labcd/rE;

    const-string v2, "/dev/null"

    iput-object v2, v1, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {p0}, Labcd/hC;->FH()Labcd/WD;

    move-result-object v2

    iput-object v2, v1, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {p0}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v2

    iput-object v2, v1, Labcd/hC;->Zo:Labcd/rE;

    invoke-virtual {p0}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object v2, Labcd/hC$a;->j6:Labcd/hC$a;

    iput-object v2, v1, Labcd/hC;->VH:Labcd/hC$a;

    const/4 v2, 0x2

    new-array v2, v2, [Labcd/hC;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/hC;->DW:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/hC$a;->values()[Labcd/hC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/hC$a;->j6:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Labcd/hC;->DW:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public DW()Labcd/hC$a;
    .registers 2

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    return-object v0
.end method

.method public DW(Labcd/hC$b;)Labcd/rE;
    .registers 3

    sget-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v0

    goto :goto_0
.end method

.method public FH()Labcd/WD;
    .registers 2

    iget-object v0, p0, Labcd/hC;->tp:Labcd/WD;

    return-object v0
.end method

.method public FH(Labcd/hC$b;)Ljava/lang/String;
    .registers 3

    sget-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Hw()Labcd/rE;
    .registers 2

    iget-object v0, p0, Labcd/hC;->Zo:Labcd/rE;

    return-object v0
.end method

.method public VH()Labcd/rE;
    .registers 2

    iget-object v0, p0, Labcd/hC;->v5:Labcd/rE;

    return-object v0
.end method

.method public Zo()Labcd/WD;
    .registers 2

    iget-object v0, p0, Labcd/hC;->u7:Labcd/WD;

    return-object v0
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/hC;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Labcd/hC$b;)Labcd/WD;
    .registers 3

    sget-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Labcd/hC;->Zo()Labcd/WD;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/hC;->FH()Labcd/WD;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiffEntry["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/hC;->VH:Labcd/hC$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/hC;->j6()[I

    move-result-object v1

    iget-object v2, p0, Labcd/hC;->VH:Labcd/hC$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Labcd/hC;->gn:I

    return v0
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/hC;->Hw:Ljava/lang/String;

    return-object v0
.end method
