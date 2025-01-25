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

    iget-object p1, p1, Labcd/hC;->FH:Ljava/lang/String;

    iput-object p1, v0, Labcd/hC;->FH:Ljava/lang/String;

    iget-object p1, p2, Labcd/hC;->tp:Labcd/WD;

    iput-object p1, v0, Labcd/hC;->tp:Labcd/WD;

    iget-object p1, p2, Labcd/hC;->Zo:Labcd/rE;

    iput-object p1, v0, Labcd/hC;->Zo:Labcd/rE;

    iget-object p1, p2, Labcd/hC;->Hw:Ljava/lang/String;

    iput-object p1, v0, Labcd/hC;->Hw:Ljava/lang/String;

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
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/hC;->j6(Labcd/YJ;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/YJ;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YJ;",
            "Z)",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/YJ;->Zo()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ac

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Labcd/YJ;->gn()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1c

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->cannotBeRecursiveWhenTreesAreIncluded:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Labcd/uE;

    invoke-direct {v1}, Labcd/uE;-><init>()V

    :cond_26
    :goto_26
    invoke-virtual {p0}, Labcd/YJ;->EQ()Z

    move-result v2

    if-nez v2, :cond_2d

    return-object v0

    :cond_2d
    new-instance v2, Labcd/hC;

    invoke-direct {v2}, Labcd/hC;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Labcd/YJ;->j6(Labcd/uE;I)V

    invoke-static {v1}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v4

    iput-object v4, v2, Labcd/hC;->u7:Labcd/WD;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Labcd/YJ;->j6(Labcd/uE;I)V

    invoke-static {v1}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v5

    iput-object v5, v2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {p0, v3}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    invoke-virtual {p0, v4}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-virtual {p0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Labcd/hC;->FH:Ljava/lang/String;

    iput-object v3, v2, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    sget-object v4, Labcd/rE;->Zo:Labcd/rE;

    const-string v5, "/dev/null"

    if-ne v3, v4, :cond_6c

    iput-object v5, v2, Labcd/hC;->FH:Ljava/lang/String;

    sget-object v3, Labcd/hC$a;->j6:Labcd/hC$a;

    :goto_66
    iput-object v3, v2, Labcd/hC;->VH:Labcd/hC$a;

    :goto_68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_6c
    iget-object v3, v2, Labcd/hC;->Zo:Labcd/rE;

    if-ne v3, v4, :cond_75

    iput-object v5, v2, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object v3, Labcd/hC$a;->FH:Labcd/hC$a;

    goto :goto_66

    :cond_75
    iget-object v3, v2, Labcd/hC;->u7:Labcd/WD;

    iget-object v4, v2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v3, v4}, Labcd/WD;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    sget-object v3, Labcd/hC$a;->DW:Labcd/hC$a;

    iput-object v3, v2, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    iget-object v4, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v3, v4}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v3

    if-eqz v3, :cond_8e

    goto :goto_68

    :cond_8e
    invoke-static {v2}, Labcd/hC;->j6(Labcd/hC;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9f

    :cond_96
    iget-object v3, v2, Labcd/hC;->v5:Labcd/rE;

    iget-object v4, v2, Labcd/hC;->Zo:Labcd/rE;

    if-eq v3, v4, :cond_9f

    sget-object v3, Labcd/hC$a;->DW:Labcd/hC$a;

    goto :goto_66

    :cond_9f
    :goto_9f
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Labcd/YJ;->u7()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Labcd/YJ;->j6()V

    goto/16 :goto_26

    :cond_ac
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->treeWalkMustHaveExactlyTwoTrees:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b9

    :goto_b8
    throw p0

    :goto_b9
    goto :goto_b8
.end method

.method static j6(Labcd/hC;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/hC;",
            ")",
            "Ljava/util/List<",
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

    sget-object v2, Labcd/rE;->Zo:Labcd/rE;

    iput-object v2, v0, Labcd/hC;->Zo:Labcd/rE;

    const-string v2, "/dev/null"

    iput-object v2, v0, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object v3, Labcd/hC$a;->FH:Labcd/hC$a;

    iput-object v3, v0, Labcd/hC;->VH:Labcd/hC$a;

    new-instance v3, Labcd/hC;

    invoke-direct {v3}, Labcd/hC;-><init>()V

    iput-object v1, v3, Labcd/hC;->u7:Labcd/WD;

    sget-object v1, Labcd/rE;->Zo:Labcd/rE;

    iput-object v1, v3, Labcd/hC;->v5:Labcd/rE;

    iput-object v2, v3, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {p0}, Labcd/hC;->FH()Labcd/WD;

    move-result-object v1

    iput-object v1, v3, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {p0}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v1

    iput-object v1, v3, Labcd/hC;->Zo:Labcd/rE;

    invoke-virtual {p0}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object p0, Labcd/hC$a;->j6:Labcd/hC$a;

    iput-object p0, v3, Labcd/hC;->VH:Labcd/hC$a;

    const/4 p0, 0x2

    new-array p0, p0, [Labcd/hC;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    aput-object v3, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/hC;->DW:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/hC$a;->values()[Labcd/hC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/hC$a;->j6:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    :try_start_38
    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v1

    :goto_43
    sput-object v0, Labcd/hC;->DW:[I

    return-object v0
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

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Labcd/hC;->VH()Labcd/rE;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public FH()Labcd/WD;
    .registers 2

    iget-object v0, p0, Labcd/hC;->tp:Labcd/WD;

    return-object v0
.end method

.method public FH(Labcd/hC$b;)Ljava/lang/String;
    .registers 3

    sget-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
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

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Labcd/hC;->Zo()Labcd/WD;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Labcd/hC;->FH()Labcd/WD;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

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

    if-eq v1, v2, :cond_59

    const/4 v2, 0x2

    if-eq v1, v2, :cond_56

    const/4 v2, 0x3

    if-eq v1, v2, :cond_56

    const/4 v2, 0x4

    const-string v3, "->"

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_32

    goto :goto_5e

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_56
    iget-object v1, p0, Labcd/hC;->FH:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    iget-object v1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
