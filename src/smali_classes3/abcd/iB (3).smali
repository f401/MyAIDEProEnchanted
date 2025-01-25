.class public Labcd/iB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
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
            "Ljava/util/List<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    sget-object p1, Labcd/vF;->Hw:Labcd/BF;

    iput-object p1, p0, Labcd/iB;->Hw:Labcd/vF;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Labcd/iB;->v5:Ljava/util/List;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/iB;->FH:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

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
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v1

    :goto_2e
    :try_start_2e
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    move-exception v1

    :goto_39
    :try_start_39
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v1

    :goto_44
    :try_start_44
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    :try_start_4f
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v1

    :goto_65
    :try_start_65
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    :try_start_71
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    move-exception v1

    :goto_7d
    sput-object v0, Labcd/iB;->FH:[I

    return-object v0
.end method

.method private j6(Ljava/lang/StringBuilder;Labcd/yE;Labcd/yE;)V
    .registers 9

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v0, p3}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->XL()Labcd/RE$a;

    move-result-object p1

    invoke-static {}, Labcd/iB;->FH()[I

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p3, p3, v3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4f

    const/4 v4, 0x4

    if-eq p3, v4, :cond_4e

    const/4 v4, 0x6

    if-eq p3, v4, :cond_4e

    const/4 v4, 0x7

    if-eq p3, v4, :cond_4f

    new-instance p3, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->updatingRefFailed:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    invoke-virtual {p2}, Labcd/YD;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4e
    return-void

    :cond_4f
    new-instance p2, Labcd/LB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->couldNotLockHEAD:Ljava/lang/String;

    invoke-virtual {v0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Labcd/LB;-><init>(Ljava/lang/String;Labcd/ME;Labcd/RE$a;)V

    throw p2
.end method


# virtual methods
.method public call()Labcd/pB;
    .registers 26

    move-object/from16 v1, p0

    const-string v2, "HEAD"

    invoke-virtual/range {p0 .. p0}, Labcd/dB;->j6()V

    iget-object v3, v1, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_47

    iget-object v2, v1, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->noMergeHeadSpecified:Ljava/lang/String;

    goto :goto_41

    :cond_21
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->mergeStrategyDoesNotSupportHeads:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, v1, Labcd/iB;->Hw:Labcd/vF;

    invoke-virtual {v4}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v1, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_41
    new-instance v3, Labcd/PB;

    invoke-direct {v3, v2}, Labcd/PB;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_47
    const/4 v3, 0x0

    :try_start_48
    iget-object v7, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v7, v2}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v7

    if-eqz v7, :cond_2c0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "merge "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Labcd/qG;

    iget-object v10, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v9, v10}, Labcd/qG;-><init>(Labcd/UE;)V
    :try_end_5e
    .catch Labcd/VC; {:try_start_48 .. :try_end_5e} :catch_2e5
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5e} :catch_2cf
    .catchall {:try_start_48 .. :try_end_5e} :catchall_2cc

    :try_start_5e
    iget-object v10, v1, Labcd/iB;->v5:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labcd/ME;

    invoke-interface {v10}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v11

    if-nez v11, :cond_77

    invoke-interface {v10}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v11

    :cond_77
    invoke-virtual {v9, v11}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v14

    invoke-interface {v7}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v12

    if-nez v12, :cond_e8

    invoke-virtual {v9, v14}, Labcd/qG;->DW(Labcd/iG;)V

    new-instance v2, Labcd/NC;

    iget-object v8, v1, Labcd/dB;->j6:Labcd/UE;

    iget-object v10, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v10}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v10

    invoke-virtual {v14}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v12

    invoke-direct {v2, v8, v10, v12}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V
    :try_end_95
    .catch Labcd/VC; {:try_start_5e .. :try_end_95} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_95} :catch_2af
    .catchall {:try_start_5e .. :try_end_95} :catchall_2f9

    :try_start_95
    invoke-virtual {v2, v6}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    iget-object v8, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-interface {v7}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v7

    invoke-interface {v7}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v7

    invoke-virtual {v7, v11}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v7, v3}, Labcd/RE;->j6(Labcd/YD;)V

    const-string v3, "initial pull"

    invoke-virtual {v7, v3, v5}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v7}, Labcd/RE;->XL()Labcd/RE$a;

    move-result-object v3

    sget-object v7, Labcd/RE$a;->Hw:Labcd/RE$a;

    if-ne v3, v7, :cond_d8

    invoke-virtual {v1, v5}, Labcd/dB;->j6(Z)V

    new-array v15, v4, [Labcd/yE;
    :try_end_c1
    .catch Labcd/VC; {:try_start_95 .. :try_end_c1} :catch_e4
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_c1} :catch_2af
    .catchall {:try_start_95 .. :try_end_c1} :catchall_2f9

    aput-object v14, v15, v6

    :try_start_c3
    new-instance v3, Labcd/pB;

    sget-object v16, Labcd/pB$a;->j6:Labcd/pB$a;

    iget-object v4, v1, Labcd/iB;->Hw:Labcd/vF;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v3

    move-object v13, v14

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v19}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_d4
    .catch Labcd/VC; {:try_start_c3 .. :try_end_d4} :catch_e4
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_d4} :catch_2af
    .catchall {:try_start_c3 .. :try_end_d4} :catchall_2f9

    invoke-virtual {v9}, Labcd/qG;->EQ()V

    return-object v3

    :cond_d8
    :try_start_d8
    new-instance v3, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v3, v4}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e4
    .catch Labcd/VC; {:try_start_d8 .. :try_end_e4} :catch_e4
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e4} :catch_2af
    .catchall {:try_start_d8 .. :try_end_e4} :catchall_2f9

    :catch_e4
    move-exception v0

    move-object v3, v0

    goto/16 :goto_2ba

    :cond_e8
    :try_start_e8
    invoke-virtual {v9, v12}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v13

    invoke-virtual {v9, v14, v13}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v11

    if-eqz v11, :cond_10f

    invoke-virtual {v1, v5}, Labcd/dB;->j6(Z)V

    sget-object v16, Labcd/pB$a;->DW:Labcd/pB$a;

    iget-object v2, v1, Labcd/iB;->Hw:Labcd/vF;

    new-instance v7, Labcd/pB;

    new-array v15, v4, [Labcd/yE;

    aput-object v13, v15, v5

    aput-object v14, v15, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v7

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v19}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_10b
    .catch Labcd/VC; {:try_start_e8 .. :try_end_10b} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_10b} :catch_2af
    .catchall {:try_start_e8 .. :try_end_10b} :catchall_2f9

    invoke-virtual {v9}, Labcd/qG;->EQ()V

    return-object v7

    :cond_10f
    :try_start_10f
    invoke-virtual {v9, v13, v14}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v11

    if-eqz v11, :cond_164

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Labcd/pB$a;->j6:Labcd/pB$a;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/NC;

    iget-object v7, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v13}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v10

    iget-object v11, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v11}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v11

    invoke-virtual {v14}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v15

    invoke-direct {v2, v7, v10, v11, v15}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V
    :try_end_13d
    .catch Labcd/VC; {:try_start_10f .. :try_end_13d} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_13d} :catch_2af
    .catchall {:try_start_10f .. :try_end_13d} :catchall_2f9

    :try_start_13d
    invoke-virtual {v2, v6}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    invoke-direct {v1, v8, v14, v12}, Labcd/iB;->j6(Ljava/lang/StringBuilder;Labcd/yE;Labcd/yE;)V

    invoke-virtual {v1, v5}, Labcd/dB;->j6(Z)V

    sget-object v16, Labcd/pB$a;->j6:Labcd/pB$a;

    iget-object v3, v1, Labcd/iB;->Hw:Labcd/vF;

    new-instance v7, Labcd/pB;

    new-array v15, v4, [Labcd/yE;

    aput-object v13, v15, v5

    aput-object v14, v15, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v7

    move-object v13, v14

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v19}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_160
    .catch Labcd/VC; {:try_start_13d .. :try_end_160} :catch_e4
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_160} :catch_2af
    .catchall {:try_start_13d .. :try_end_160} :catchall_2f9

    invoke-virtual {v9}, Labcd/qG;->EQ()V

    return-object v7

    :cond_164
    :try_start_164
    new-instance v11, Labcd/sF;

    invoke-direct {v11}, Labcd/sF;-><init>()V

    iget-object v12, v1, Labcd/iB;->v5:Ljava/util/List;

    invoke-virtual {v11, v12, v7}, Labcd/sF;->j6(Ljava/util/List;Labcd/ME;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v11, v7}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v11, v1, Labcd/dB;->j6:Labcd/UE;

    new-array v12, v6, [Labcd/yE;

    invoke-interface {v10}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v15

    aput-object v15, v12, v5

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Labcd/UE;->j6(Ljava/util/List;)V

    iget-object v11, v1, Labcd/iB;->Hw:Labcd/vF;

    iget-object v12, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v11, v12}, Labcd/vF;->j6(Labcd/UE;)Labcd/wF;

    move-result-object v11

    instance-of v12, v11, Labcd/xF;

    if-eqz v12, :cond_1cb

    move-object v12, v11

    check-cast v12, Labcd/xF;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const-string v16, "BASE"

    aput-object v16, v15, v5

    aput-object v2, v15, v6

    invoke-interface {v10}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v4

    invoke-virtual {v12, v15}, Labcd/xF;->j6([Ljava/lang/String;)V

    new-instance v2, Labcd/WJ;

    iget-object v10, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v2, v10}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v12, v2}, Labcd/xF;->j6(Labcd/_J;)V

    new-array v2, v4, [Labcd/YD;

    aput-object v13, v2, v5

    aput-object v14, v2, v6

    invoke-virtual {v11, v2}, Labcd/wF;->j6([Labcd/YD;)Z

    move-result v2

    invoke-virtual {v12}, Labcd/xF;->gn()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v12}, Labcd/xF;->VH()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v12}, Labcd/xF;->u7()Ljava/util/List;

    move-result-object v12

    move-object/from16 v21, v10

    move-object/from16 v22, v15

    goto :goto_1da

    :cond_1cb
    new-array v2, v4, [Labcd/YD;

    aput-object v13, v2, v5

    aput-object v14, v2, v6

    invoke-virtual {v11, v2}, Labcd/wF;->j6([Labcd/YD;)Z

    move-result v2

    move-object v12, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v21

    :goto_1da
    const-string v10, ": Merge made by "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Labcd/iB;->Hw:Labcd/vF;

    invoke-virtual {v10}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_249

    new-instance v2, Labcd/NC;

    iget-object v7, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v13}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v10

    iget-object v12, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v12}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v12

    invoke-virtual {v11}, Labcd/wF;->FH()Labcd/yE;

    move-result-object v11

    invoke-direct {v2, v7, v10, v12, v11}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V
    :try_end_204
    .catch Labcd/VC; {:try_start_164 .. :try_end_204} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_204} :catch_2af
    .catchall {:try_start_164 .. :try_end_204} :catchall_2f9

    :try_start_204
    invoke-virtual {v2, v6}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    new-instance v3, Labcd/cB;

    invoke-virtual/range {p0 .. p0}, Labcd/dB;->DW()Labcd/UE;

    move-result-object v7

    invoke-direct {v3, v7}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v3}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Labcd/ZA;->FH(Ljava/lang/String;)Labcd/ZA;

    invoke-virtual {v3}, Labcd/ZA;->call()Labcd/dG;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v13}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v14}, Labcd/iG;->getId()Labcd/yE;

    sget-object v19, Labcd/pB$a;->Hw:Labcd/pB$a;

    iget-object v3, v1, Labcd/iB;->Hw:Labcd/vF;

    new-instance v7, Labcd/pB;

    const/16 v17, 0x0

    new-array v4, v4, [Labcd/yE;

    aput-object v13, v4, v5

    aput-object v14, v4, v6

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v7

    move-object/from16 v18, v4

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v22}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_245
    .catch Labcd/VC; {:try_start_204 .. :try_end_245} :catch_e4
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_245} :catch_2af
    .catchall {:try_start_204 .. :try_end_245} :catchall_2f9

    invoke-virtual {v9}, Labcd/qG;->EQ()V

    return-object v7

    :cond_249
    if-eqz v22, :cond_27b

    :try_start_24b
    iget-object v2, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v3}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v2, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v3}, Labcd/UE;->j6(Ljava/util/List;)V

    invoke-virtual {v11, v5, v6}, Labcd/wF;->j6(II)Labcd/dG;

    move-result-object v17

    invoke-virtual {v13}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v14}, Labcd/iG;->getId()Labcd/yE;

    sget-object v19, Labcd/pB$a;->FH:Labcd/pB$a;

    iget-object v2, v1, Labcd/iB;->Hw:Labcd/vF;

    new-instance v7, Labcd/pB;

    const/16 v16, 0x0

    new-array v4, v4, [Labcd/yE;

    aput-object v13, v4, v5

    aput-object v14, v4, v6

    const/16 v23, 0x0

    move-object v15, v7

    move-object/from16 v18, v4

    move-object/from16 v20, v2

    invoke-direct/range {v15 .. v23}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_277
    .catch Labcd/VC; {:try_start_24b .. :try_end_277} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_277} :catch_2af
    .catchall {:try_start_24b .. :try_end_277} :catchall_2f9

    invoke-virtual {v9}, Labcd/qG;->EQ()V

    return-object v7

    :cond_27b
    :try_start_27b
    new-instance v2, Labcd/sF;

    invoke-direct {v2}, Labcd/sF;-><init>()V

    invoke-virtual {v2, v7, v12}, Labcd/sF;->j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v7, v2}, Labcd/UE;->Zo(Ljava/lang/String;)V

    invoke-virtual {v11, v5, v6}, Labcd/wF;->j6(II)Labcd/dG;

    move-result-object v17

    invoke-virtual {v13}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v14}, Labcd/iG;->getId()Labcd/yE;

    sget-object v19, Labcd/pB$a;->v5:Labcd/pB$a;

    iget-object v2, v1, Labcd/iB;->Hw:Labcd/vF;

    new-instance v7, Labcd/pB;

    const/16 v16, 0x0

    new-array v4, v4, [Labcd/yE;

    aput-object v13, v4, v5

    aput-object v14, v4, v6

    const/16 v22, 0x0

    move-object v15, v7

    move-object/from16 v18, v4

    move-object/from16 v20, v2

    invoke-direct/range {v15 .. v22}, Labcd/pB;-><init>(Labcd/yE;Labcd/yE;[Labcd/yE;Labcd/pB$a;Labcd/vF;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2ab
    .catch Labcd/VC; {:try_start_27b .. :try_end_2ab} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_27b .. :try_end_2ab} :catch_2af
    .catchall {:try_start_27b .. :try_end_2ab} :catchall_2f9

    invoke-virtual {v9}, Labcd/qG;->EQ()V

    return-object v7

    :catch_2af
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    goto :goto_2d1

    :catch_2b3
    move-exception v0

    move-object v2, v0

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    :goto_2ba
    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_2e8

    :cond_2c0
    :try_start_2c0
    new-instance v2, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v2, v4}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2cc
    .catch Labcd/VC; {:try_start_2c0 .. :try_end_2cc} :catch_2e5
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2cc} :catch_2cf
    .catchall {:try_start_2c0 .. :try_end_2cc} :catchall_2cc

    :catchall_2cc
    move-exception v0

    move-object v2, v0

    goto :goto_2fc

    :catch_2cf
    move-exception v0

    move-object v2, v0

    :goto_2d1
    :try_start_2d1
    new-instance v4, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfMergeCommand:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-static {v7, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e5
    .catchall {:try_start_2d1 .. :try_end_2e5} :catchall_2cc

    :catch_2e5
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    :goto_2e8
    if-nez v3, :cond_2ef

    :try_start_2ea
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2f3

    :cond_2ef
    invoke-virtual {v3}, Labcd/NC;->DW()Ljava/util/List;

    move-result-object v3

    :goto_2f3
    new-instance v4, Labcd/KB;

    invoke-direct {v4, v3, v2}, Labcd/KB;-><init>(Ljava/util/List;Labcd/VC;)V

    throw v4
    :try_end_2f9
    .catchall {:try_start_2ea .. :try_end_2f9} :catchall_2f9

    :catchall_2f9
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    :goto_2fc
    if-eqz v3, :cond_301

    invoke-virtual {v3}, Labcd/qG;->EQ()V

    :cond_301
    throw v2
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
    .registers 5

    new-instance v0, Labcd/BE$c;

    sget-object v1, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-virtual {p2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {p0, v0}, Labcd/iB;->j6(Labcd/ME;)Labcd/iB;

    return-object p0
.end method
