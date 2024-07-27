.class public Labcd/iB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Labcd/pB;",
        ">;"
    }
.end annotation


# static fields
.field private static FH:[I


# instance fields
.field private Hw:Labcd/vF;

.field private v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    sget-object v0, Labcd/vF;->Hw:Labcd/BF;

    iput-object v0, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/iB;->v5:Ljava/util/List;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/iB;->FH:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Labcd/iB;->FH:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method private j6(Ljava/lang/StringBuilder;Labcd/yE;Labcd/yE;)V
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v0, p3}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->XL()Labcd/RE$a;

    move-result-object v1

    invoke-static {}, Labcd/iB;->FH()[I

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->updatingRefFailed:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "HEAD"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {p2}, Labcd/YD;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Labcd/LB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->couldNotLockHEAD:Ljava/lang/String;

    invoke-virtual {v0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Labcd/LB;-><init>(Ljava/lang/String;Labcd/ME;Labcd/RE$a;)V

    throw v2

    :cond_1
    return-void
.end method


# virtual methods
.method public call()Labcd/pB;
    .registers 15

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v1, p0, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v1, p0, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->noMergeHeadSpecified:Ljava/lang/String;

    :goto_0
    new-instance v2, Labcd/PB;

    invoke-direct {v2, v1}, Labcd/PB;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->mergeStrategyDoesNotSupportHeads:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/iB;->Hw:Labcd/vF;

    invoke-virtual {v3}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v1, "merge "

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Labcd/qG;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v12, v1}, Labcd/qG;-><init>(Labcd/UE;)V
    :try_end_0
    .catch Labcd/VC; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Labcd/iB;->v5:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    move-object v3, v2

    :goto_1
    invoke-virtual {v12, v3}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v2

    invoke-interface {v5}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v12, v2}, Labcd/qG;->DW(Labcd/iG;)V

    new-instance v9, Labcd/NC;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v4

    invoke-virtual {v2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v6

    invoke-direct {v9, v1, v4, v6}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V
    :try_end_1
    .catch Labcd/VC; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v9, v1}, Labcd/NC;->j6(Z)V

    invoke-virtual {v9}, Labcd/NC;->j6()Z

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-interface {v5}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v4

    invoke-interface {v4}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v1

    invoke-virtual {v1, v3}, Labcd/RE;->DW(Labcd/YD;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Labcd/RE;->j6(Labcd/YD;)V

    const-string v3, "initial pull"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Labcd/RE;->XL()Labcd/RE$a;

    move-result-object v1

    sget-object v3, Labcd/RE$a;->Hw:Labcd/RE$a;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/dB;->j6(Z)V

    const/4 v1, 0x2

    new-array v4, v1, [Labcd/yE;
    :try_end_2
    .catch Labcd/VC; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    aput-object v2, v4, v7

    :try_start_3
    new-instance v1, Labcd/pB;

    sget-object v5, Labcd/pB$a;->j6:Labcd/pB$a;

    iget-object v6, p0, Labcd/iB;->Hw:Labcd/vF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v8}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_3
    .catch Labcd/VC; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v12}, Labcd/qG;->EQ()V

    :goto_2
    return-object v1

    :cond_2
    :try_start_4
    new-instance v1, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v1, v2}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Labcd/VC; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v1

    move-object v11, v9

    :goto_3
    move-object v2, v1

    move-object v3, v11

    :goto_4
    if-nez v3, :cond_b

    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_5
    new-instance v3, Labcd/KB;

    invoke-direct {v3, v1, v2}, Labcd/KB;-><init>(Ljava/util/List;Labcd/VC;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v12

    :goto_6
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Labcd/qG;->EQ()V

    :cond_3
    throw v1

    :cond_4
    :try_start_6
    invoke-virtual {v12, v6}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/dB;->j6(Z)V

    sget-object v7, Labcd/pB$a;->DW:Labcd/pB$a;

    iget-object v8, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance v3, Labcd/pB;

    const/4 v1, 0x2

    new-array v6, v1, [Labcd/yE;

    const/4 v1, 0x0

    aput-object v4, v6, v1

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_6
    .catch Labcd/VC; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v12}, Labcd/qG;->EQ()V

    move-object v1, v3

    goto :goto_2

    :cond_5
    :try_start_7
    invoke-virtual {v12, v4, v2}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/pB$a;->j6:Labcd/pB$a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Labcd/NC;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v3

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v5

    invoke-virtual {v2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v7

    invoke-direct {v9, v1, v3, v5, v7}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V
    :try_end_7
    .catch Labcd/VC; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {v9, v1}, Labcd/NC;->j6(Z)V

    invoke-virtual {v9}, Labcd/NC;->j6()Z

    invoke-direct {p0, v10, v2, v6}, Labcd/iB;->j6(Ljava/lang/StringBuilder;Labcd/yE;Labcd/yE;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/dB;->j6(Z)V

    sget-object v5, Labcd/pB$a;->j6:Labcd/pB$a;

    iget-object v6, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance v1, Labcd/pB;

    const/4 v3, 0x2

    new-array v10, v3, [Labcd/yE;

    const/4 v3, 0x0

    aput-object v4, v10, v3

    const/4 v3, 0x1

    aput-object v2, v10, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_8
    .catch Labcd/VC; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v12}, Labcd/qG;->EQ()V

    goto/16 :goto_2

    :cond_6
    :try_start_9
    new-instance v3, Labcd/sF;

    invoke-direct {v3}, Labcd/sF;-><init>()V

    iget-object v6, p0, Labcd/iB;->v5:Ljava/util/List;

    invoke-virtual {v3, v6, v5}, Labcd/sF;->j6(Ljava/util/List;Labcd/ME;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3, v9}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v5, 0x1

    new-array v5, v5, [Labcd/yE;

    const/4 v6, 0x0

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Labcd/UE;->j6(Ljava/util/List;)V

    iget-object v3, p0, Labcd/iB;->Hw:Labcd/vF;

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3, v5}, Labcd/vF;->j6(Labcd/UE;)Labcd/wF;

    move-result-object v5

    instance-of v3, v5, Labcd/xF;

    if-eqz v3, :cond_7

    move-object v0, v5

    check-cast v0, Labcd/xF;

    move-object v3, v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "BASE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "HEAD"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v3, v6}, Labcd/xF;->j6([Ljava/lang/String;)V

    new-instance v1, Labcd/WJ;

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v6}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v3, v1}, Labcd/xF;->j6(Labcd/_J;)V

    const/4 v1, 0x2

    new-array v1, v1, [Labcd/YD;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    const/4 v6, 0x1

    aput-object v2, v1, v6

    invoke-virtual {v5, v1}, Labcd/wF;->j6([Labcd/YD;)Z

    move-result v6

    invoke-virtual {v3}, Labcd/xF;->gn()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Labcd/xF;->VH()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v3}, Labcd/xF;->u7()Ljava/util/List;

    move-result-object v1

    move v3, v6

    :goto_7
    const-string v6, ": Merge made by "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Labcd/iB;->Hw:Labcd/vF;

    invoke-virtual {v6}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    new-instance v9, Labcd/NC;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v3

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v6}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v6

    invoke-virtual {v5}, Labcd/wF;->FH()Labcd/yE;

    move-result-object v5

    invoke-direct {v9, v1, v3, v6, v5}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V
    :try_end_9
    .catch Labcd/VC; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {v9, v1}, Labcd/NC;->j6(Z)V

    invoke-virtual {v9}, Labcd/NC;->j6()Z

    new-instance v1, Labcd/cB;

    invoke-virtual {p0}, Labcd/dB;->DW()Labcd/UE;

    move-result-object v3

    invoke-direct {v1, v3}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v1}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/ZA;->FH(Ljava/lang/String;)Labcd/ZA;

    invoke-virtual {v1}, Labcd/ZA;->call()Labcd/dG;

    move-result-object v10

    invoke-virtual {v10}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v4}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v2}, Labcd/iG;->getId()Labcd/yE;

    sget-object v5, Labcd/pB$a;->Hw:Labcd/pB$a;

    iget-object v6, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance v1, Labcd/pB;

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-array v11, v7, [Labcd/yE;

    const/4 v7, 0x0

    aput-object v4, v11, v7

    const/4 v4, 0x1

    aput-object v2, v11, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object v4, v11

    invoke-direct/range {v1 .. v8}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_a
    .catch Labcd/VC; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {v12}, Labcd/qG;->EQ()V

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x2

    :try_start_b
    new-array v1, v1, [Labcd/YD;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Labcd/wF;->j6([Labcd/YD;)Z

    move-result v3

    move-object v1, v11

    move-object v8, v11

    move-object v7, v11

    goto :goto_7

    :cond_8
    if-eqz v8, :cond_9

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Labcd/UE;->j6(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Labcd/wF;->j6(II)Labcd/dG;

    move-result-object v3

    invoke-virtual {v4}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v2}, Labcd/iG;->getId()Labcd/yE;

    sget-object v5, Labcd/pB$a;->FH:Labcd/pB$a;

    iget-object v6, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance v1, Labcd/pB;

    const/4 v10, 0x0

    const/4 v9, 0x2

    new-array v13, v9, [Labcd/yE;

    const/4 v9, 0x0

    aput-object v4, v13, v9

    const/4 v4, 0x1

    aput-object v2, v13, v4

    const/4 v9, 0x0

    move-object v2, v10

    move-object v4, v13

    invoke-direct/range {v1 .. v9}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_b
    .catch Labcd/VC; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v12}, Labcd/qG;->EQ()V

    goto/16 :goto_2

    :cond_9
    :try_start_c
    new-instance v3, Labcd/sF;

    invoke-direct {v3}, Labcd/sF;-><init>()V

    invoke-virtual {v3, v9, v1}, Labcd/sF;->j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3, v1}, Labcd/UE;->Zo(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Labcd/wF;->j6(II)Labcd/dG;

    move-result-object v3

    invoke-virtual {v4}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v2}, Labcd/iG;->getId()Labcd/yE;

    sget-object v5, Labcd/pB$a;->v5:Labcd/pB$a;

    iget-object v6, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance v1, Labcd/pB;

    const/4 v9, 0x0

    const/4 v8, 0x2

    new-array v10, v8, [Labcd/yE;

    const/4 v8, 0x0

    aput-object v4, v10, v8

    const/4 v4, 0x1

    aput-object v2, v10, v4

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_c
    .catch Labcd/VC; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v12}, Labcd/qG;->EQ()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v11, v12

    :goto_8
    :try_start_d
    new-instance v2, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfMergeCommand:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_6

    :cond_a
    :try_start_e
    new-instance v1, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v1, v2}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catch Labcd/VC; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v12, v11

    move-object v3, v11

    goto/16 :goto_4

    :cond_b
    :try_start_f
    invoke-virtual {v3}, Labcd/NC;->DW()Ljava/util/List;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v1

    goto/16 :goto_5

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v1

    move-object v11, v9

    goto/16 :goto_3

    :catch_6
    move-exception v1

    move-object v11, v9

    goto/16 :goto_3

    :cond_c
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/iB;->call()Labcd/pB;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/ME;)Labcd/iB;
    .registers 3

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public j6(Labcd/YD;)Labcd/iB;
    .registers 3

    invoke-virtual {p1}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Labcd/iB;->j6(Ljava/lang/String;Labcd/YD;)Labcd/iB;

    return-object p0
.end method

.method public j6(Ljava/lang/String;Labcd/YD;)Labcd/iB;
    .registers 6

    new-instance v0, Labcd/BE$c;

    sget-object v1, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-virtual {p2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {p0, v0}, Labcd/iB;->j6(Labcd/ME;)Labcd/iB;

    return-object p0
.end method
