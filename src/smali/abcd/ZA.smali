.class public Labcd/ZA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Labcd/dG;",
        ">;"
    }
.end annotation


# static fields
.field private static FH:[I


# instance fields
.field private EQ:Z

.field private Hw:Labcd/KE;

.field private J0:Ljava/lang/String;

.field private VH:Z

.field private Zo:Ljava/lang/String;

.field private gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Z

.field private u7:[Z

.field private v5:Labcd/KE;

.field private we:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/ZA;->we:Ljava/util/List;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/ZA;->FH:[I

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
    sput-object v0, Labcd/ZA;->FH:[I

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

.method private Hw(Ljava/lang/String;)I
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, p1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private j6(Labcd/yE;Labcd/KC;)Labcd/KC;
    .registers 27

    invoke-virtual/range {p2 .. p2}, Labcd/KC;->Hw()Labcd/PC;

    move-result-object v12

    invoke-static {}, Labcd/KC;->gn()Labcd/KC;

    move-result-object v13

    invoke-virtual {v13}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Z

    move-object/from16 v0, p0

    iput-object v4, v0, Labcd/ZA;->u7:[Z

    new-instance v14, Labcd/YJ;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v14, v4}, Labcd/YJ;-><init>(Labcd/UE;)V

    new-instance v4, Labcd/RC;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v14, v4}, Labcd/YJ;->j6(Labcd/TJ;)I

    move-result v15

    new-instance v4, Labcd/WJ;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v4, v5}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v14, v4}, Labcd/YJ;->j6(Labcd/TJ;)I

    move-result v16

    if-eqz p1, :cond_2

    new-instance v4, Labcd/qG;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v4, v5}, Labcd/qG;-><init>(Labcd/UE;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v4

    invoke-virtual {v14, v4}, Labcd/YJ;->j6(Labcd/YD;)I

    move-result v4

    move v6, v4

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Labcd/YJ;->j6(Z)V

    const/4 v9, 0x1

    const/4 v7, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v14}, Labcd/YJ;->EQ()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/ZA;->u7:[Z

    array-length v6, v5

    if-lt v4, v6, :cond_a

    if-nez v9, :cond_9

    invoke-virtual {v12}, Labcd/PC;->j6()Z

    invoke-virtual {v8}, Labcd/MC;->DW()V

    return-object v13

    :cond_2
    const/4 v4, -0x1

    move v6, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Labcd/ZA;->Hw(Ljava/lang/String;)I

    move-result v18

    const/4 v4, -0x1

    if-eq v6, v4, :cond_7

    const-class v4, Labcd/UJ;

    invoke-virtual {v14, v6, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v4

    check-cast v4, Labcd/UJ;

    move-object v11, v4

    :goto_3
    if-ltz v18, :cond_10

    const-class v4, Labcd/RC;

    invoke-virtual {v14, v15, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v4

    check-cast v4, Labcd/RC;

    const-class v5, Labcd/WJ;

    move/from16 v0, v16

    invoke-virtual {v14, v0, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v5

    check-cast v5, Labcd/WJ;

    if-nez v4, :cond_8

    if-nez v11, :cond_8

    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_1

    if-eqz v5, :cond_f

    new-instance v10, Labcd/QC;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Labcd/QC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/_J;->j3()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Labcd/QC;->DW(J)V

    invoke-virtual {v5}, Labcd/_J;->aM()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Labcd/QC;->j6(J)V

    invoke-virtual {v5, v4}, Labcd/_J;->j6(Labcd/RC;)Labcd/rE;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Labcd/QC;->j6(Labcd/rE;)V

    if-eqz v4, :cond_4

    invoke-virtual {v5, v4}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v5, v11}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_5
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_d

    invoke-virtual {v5}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v4

    invoke-virtual {v10, v4}, Labcd/QC;->j6(Labcd/YD;)V

    move-object v4, v7

    :goto_6
    new-instance v7, Labcd/YA;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1, v10}, Labcd/YA;-><init>(Labcd/ZA;Ljava/lang/String;Labcd/QC;)V

    invoke-virtual {v12, v7}, Labcd/PC;->j6(Labcd/PC$b;)V

    invoke-virtual {v8, v10}, Labcd/MC;->DW(Labcd/QC;)V

    if-eqz v9, :cond_6

    if-eqz v11, :cond_13

    invoke-virtual {v11, v5}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v11}, Labcd/TJ;->VH()I

    move-result v7

    invoke-virtual {v5}, Labcd/TJ;->VH()I

    move-result v5

    if-eq v7, v5, :cond_6

    move-object v5, v8

    :goto_7
    const/4 v7, 0x0

    move-object v8, v5

    move v9, v7

    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/ZA;->u7:[Z

    const/4 v7, 0x1

    aput-boolean v7, v5, v18

    move-object v7, v4

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    move-object v11, v4

    goto/16 :goto_3

    :cond_8
    const/4 v10, 0x1

    goto :goto_4

    :cond_9
    new-instance v4, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->emptyCommit:Ljava/lang/String;

    invoke-direct {v4, v5}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    aget-boolean v5, v5, v4

    if-eqz v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_b
    new-instance v5, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jgit/JGitText;->entryNotFoundByPath:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    sget-object v4, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v10}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v5}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v4

    invoke-virtual {v10, v4}, Labcd/QC;->j6(Labcd/YD;)V

    move-object v4, v7

    goto/16 :goto_6

    :cond_e
    if-nez v7, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v4

    :goto_9
    invoke-virtual {v5}, Labcd/_J;->a8()Ljava/io/InputStream;

    move-result-object v7

    const/16 v19, 0x3

    :try_start_0
    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2, v7}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Labcd/QC;->j6(Labcd/YD;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_6

    :catchall_0
    move-exception v4

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v4

    :cond_f
    new-instance v4, Labcd/PC$a;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Labcd/PC$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Labcd/PC;->j6(Labcd/PC$b;)V

    if-eqz v9, :cond_11

    if-eqz v11, :cond_11

    move-object v5, v8

    move-object v4, v7

    goto/16 :goto_7

    :cond_10
    if-eqz v11, :cond_0

    new-instance v4, Labcd/QC;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Labcd/QC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/QC;->j6(Labcd/YD;)V

    invoke-virtual {v11}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {v8, v4}, Labcd/MC;->DW(Labcd/QC;)V

    goto/16 :goto_1

    :cond_11
    move-object v4, v7

    goto/16 :goto_8

    :cond_12
    move-object v4, v7

    goto :goto_9

    :cond_13
    move-object v5, v8

    goto/16 :goto_7
.end method

.method private j6(Labcd/iF;)V
    .registers 9

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/ZA;->v5:Labcd/KE;

    if-nez v0, :cond_0

    new-instance v0, Labcd/KE;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/KE;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/ZA;->v5:Labcd/KE;

    :cond_0
    iget-object v0, p0, Labcd/ZA;->Hw:Labcd/KE;

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ZA;->v5:Labcd/KE;

    iput-object v0, p0, Labcd/ZA;->Hw:Labcd/KE;

    :cond_1
    sget-object v0, Labcd/iF;->Hw:Labcd/iF;

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->lg()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/ZA;->we:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->a8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/ZA;->Zo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    iget-object v0, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_3

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionOccurredDuringReadingOfGIT_DIR:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "MERGE_MSG"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionOccurredDuringReadingOfGIT_DIR:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "MERGE_HEAD"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Labcd/WB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->commitMessageNotSpecified:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/WB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/yE;)V
    .registers 7

    iget-object v0, p0, Labcd/ZA;->we:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ZA;->we:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    :goto_0
    iget-object v1, p0, Labcd/ZA;->Hw:Labcd/KE;

    iget-object v2, p0, Labcd/ZA;->v5:Labcd/KE;

    iget-object v3, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Labcd/mK;->j6(Labcd/yE;Labcd/yE;Labcd/KE;Labcd/KE;Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    invoke-static {v1, v0}, Labcd/mK;->j6(Ljava/lang/String;Labcd/yE;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nChange-Id: I"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    invoke-virtual {v3}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\nChange-Id: I"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/ZA;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-boolean v0, p0, Labcd/ZA;->VH:Z

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->illegalCombinationOfArguments:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "--only"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "--all"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Z)Labcd/ZA;
    .registers 7

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Labcd/ZA;->VH:Z

    return-object p0

    :cond_0
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->illegalCombinationOfArguments:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "--all"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "--only"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH(Ljava/lang/String;)Labcd/ZA;
    .registers 2

    iput-object p1, p0, Labcd/ZA;->J0:Ljava/lang/String;

    return-object p0
.end method

.method public call()Labcd/dG;
    .registers 12

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v2

    invoke-virtual {v2}, Labcd/iF;->Hw()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v2}, Labcd/ZA;->j6(Labcd/iF;)V

    :try_start_0
    iget-boolean v1, p0, Labcd/ZA;->VH:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->QX()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Labcd/cB;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v3}, Labcd/cB;-><init>(Labcd/UE;)V
    :try_end_0
    .catch Labcd/zD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Labcd/cB;->j6()Labcd/OA;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Labcd/OA;->j6(Ljava/lang/String;)Labcd/OA;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Labcd/OA;->DW(Z)Labcd/OA;

    invoke-virtual {v1}, Labcd/OA;->call()Labcd/KC;
    :try_end_1
    .catch Labcd/UB; {:try_start_1 .. :try_end_1} :catch_1
    .catch Labcd/zD; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :try_start_2
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v3, "HEAD"

    invoke-virtual {v1, v3}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v3, "HEAD^{commit}"

    invoke-virtual {v1, v3}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v1, p0, Labcd/ZA;->tp:Z

    if-eqz v1, :cond_5

    new-instance v1, Labcd/qG;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v4}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v1, v3}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {v1}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v1

    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_4

    :cond_1
    :goto_1
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->XL()Labcd/KC;
    :try_end_2
    .catch Labcd/zD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :try_start_3
    iget-object v1, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v3, v0}, Labcd/ZA;->j6(Labcd/yE;Labcd/KC;)Labcd/KC;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->aM()Labcd/EE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    :try_start_4
    invoke-virtual {v0, v4}, Labcd/KC;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v1

    iget-boolean v5, p0, Labcd/ZA;->EQ:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, v1}, Labcd/ZA;->j6(Labcd/yE;)V

    :cond_3
    new-instance v5, Labcd/fE;

    invoke-direct {v5}, Labcd/fE;-><init>()V

    iget-object v6, p0, Labcd/ZA;->v5:Labcd/KE;

    invoke-virtual {v5, v6}, Labcd/fE;->DW(Labcd/KE;)V

    iget-object v6, p0, Labcd/ZA;->Hw:Labcd/KE;

    invoke-virtual {v5, v6}, Labcd/fE;->j6(Labcd/KE;)V

    iget-object v6, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Labcd/fE;->j6(Ljava/lang/String;)V

    iget-object v6, p0, Labcd/ZA;->we:Ljava/util/List;

    invoke-virtual {v5, v6}, Labcd/fE;->j6(Ljava/util/List;)V

    invoke-virtual {v5, v1}, Labcd/fE;->j6(Labcd/YD;)V

    invoke-virtual {v4, v5}, Labcd/EE;->j6(Labcd/fE;)Labcd/yE;

    move-result-object v5

    invoke-virtual {v4}, Labcd/EE;->FH()V

    new-instance v6, Labcd/qG;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v6, v1}, Labcd/qG;-><init>(Labcd/UE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v6, v5}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v7

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v8, "HEAD"

    invoke-virtual {v1, v8}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v8

    invoke-virtual {v8, v5}, Labcd/RE;->DW(Labcd/YD;)V

    iget-object v1, p0, Labcd/ZA;->J0:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Labcd/ZA;->J0:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v8, v3}, Labcd/RE;->j6(Labcd/YD;)V

    :goto_3
    invoke-virtual {v8}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v1

    invoke-static {}, Labcd/ZA;->FH()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v10, :cond_c

    const/4 v9, 0x4

    if-eq v3, v9, :cond_9

    const/4 v9, 0x5

    if-eq v3, v9, :cond_9

    const/4 v9, 0x6

    if-eq v3, v9, :cond_9

    const/4 v2, 0x7

    if-eq v3, v2, :cond_c

    new-instance v2, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->updatingRefFailed:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "HEAD"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Labcd/YD;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x2

    aput-object v1, v7, v5

    invoke-static {v3, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v6}, Labcd/qG;->EQ()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v4}, Labcd/EE;->Hw()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Labcd/KC;->tp()V

    throw v1
    :try_end_8
    .catch Labcd/zD; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :try_start_9
    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catch Labcd/zD; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfCommitCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_a
    iget-object v4, p0, Labcd/ZA;->we:Ljava/util/List;
    :try_end_a
    .catch Labcd/zD; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    aget-object v5, v1, v0

    :try_start_b
    invoke-virtual {v5}, Labcd/iG;->getId()Labcd/yE;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Labcd/ZA;->we:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_b
    .catch Labcd/zD; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    :cond_6
    :try_start_c
    iget-boolean v1, p0, Labcd/ZA;->tp:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_7

    const-string v1, "commit (amend): "

    :goto_4
    :try_start_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Labcd/RE;->j6(Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :cond_7
    const-string v1, "commit: "

    goto :goto_4

    :cond_8
    :try_start_e
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v1

    invoke-virtual {v8, v1}, Labcd/RE;->j6(Labcd/YD;)V

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/dB;->j6(Z)V

    sget-object v1, Labcd/iF;->Hw:Labcd/iF;

    if-ne v2, v1, :cond_b

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/UE;->j6(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_a
    :goto_5
    :try_start_f
    invoke-virtual {v6}, Labcd/qG;->EQ()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v4}, Labcd/EE;->Hw()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    invoke-virtual {v0}, Labcd/KC;->tp()V
    :try_end_11
    .catch Labcd/zD; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    return-object v7

    :cond_b
    :try_start_12
    sget-object v1, Labcd/iF;->Zo:Labcd/iF;

    if-ne v2, v1, :cond_a

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/UE;->j6(Labcd/yE;)V

    goto :goto_5

    :cond_c
    new-instance v2, Labcd/LB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->couldNotLockHEAD:Ljava/lang/String;

    invoke-virtual {v8}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v5

    invoke-direct {v2, v3, v5, v1}, Labcd/LB;-><init>(Ljava/lang/String;Labcd/ME;Labcd/RE$a;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_d
    :try_start_13
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Labcd/zD; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    :cond_e
    new-instance v1, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotCommitOnARepoWithState:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/ZA;->call()Labcd/dG;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/KE;)Labcd/ZA;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/ZA;->Hw:Labcd/KE;

    return-object p0
.end method

.method public j6(Ljava/lang/String;)Labcd/ZA;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    return-object p0
.end method
