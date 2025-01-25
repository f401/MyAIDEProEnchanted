.class public Labcd/ZA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/ZA;->gn:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Labcd/ZA;->we:Ljava/util/List;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/ZA;->FH:[I

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
    sput-object v0, Labcd/ZA;->FH:[I

    return-object v0
.end method

.method private Hw(Ljava/lang/String;)I
    .registers 9

    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    const/4 p1, -0x1

    return p1

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, p1

    :goto_17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    return v2

    :cond_1e
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_17
.end method

.method private j6(Labcd/yE;Labcd/KC;)Labcd/KC;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Labcd/KC;->Hw()Labcd/PC;

    move-result-object v2

    invoke-static {}, Labcd/KC;->gn()Labcd/KC;

    move-result-object v3

    invoke-virtual {v3}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v4

    iget-object v5, v1, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Z

    iput-object v5, v1, Labcd/ZA;->u7:[Z

    new-instance v5, Labcd/YJ;

    iget-object v6, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v5, v6}, Labcd/YJ;-><init>(Labcd/UE;)V

    new-instance v6, Labcd/RC;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v5, v6}, Labcd/YJ;->j6(Labcd/TJ;)I

    move-result v6

    new-instance v7, Labcd/WJ;

    iget-object v8, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v7, v8}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v5, v7}, Labcd/YJ;->j6(Labcd/TJ;)I

    move-result v7

    const/4 v8, -0x1

    if-eqz v0, :cond_4a

    new-instance v9, Labcd/qG;

    iget-object v10, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v9, v10}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v9, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    invoke-virtual {v5, v0}, Labcd/YJ;->j6(Labcd/YD;)I

    move-result v0

    goto :goto_4b

    :cond_4a
    const/4 v0, -0x1

    :goto_4b
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Labcd/YJ;->j6(Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_51
    invoke-virtual {v5}, Labcd/YJ;->EQ()Z

    move-result v13

    if-nez v13, :cond_58

    goto :goto_89

    :cond_58
    invoke-virtual {v5}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Labcd/ZA;->Hw(Ljava/lang/String;)I

    move-result v15

    if-eq v0, v8, :cond_6b

    const-class v8, Labcd/UJ;

    invoke-virtual {v5, v0, v8}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v8

    check-cast v8, Labcd/UJ;

    goto :goto_6c

    :cond_6b
    const/4 v8, 0x0

    :goto_6c
    if-ltz v15, :cond_16f

    const-class v10, Labcd/RC;

    invoke-virtual {v5, v6, v10}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v10

    check-cast v10, Labcd/RC;

    const-class v14, Labcd/WJ;

    invoke-virtual {v5, v7, v14}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v14

    check-cast v14, Labcd/WJ;

    if-nez v10, :cond_85

    if-nez v8, :cond_85

    const/16 v17, 0x0

    goto :goto_87

    :cond_85
    const/16 v17, 0x1

    :goto_87
    if-nez v17, :cond_c7

    :goto_89
    const/4 v0, 0x0

    :goto_8a
    iget-object v5, v1, Labcd/ZA;->u7:[Z

    array-length v6, v5

    if-lt v0, v6, :cond_a4

    if-nez v11, :cond_98

    invoke-virtual {v2}, Labcd/PC;->j6()Z

    invoke-virtual {v4}, Labcd/MC;->DW()V

    return-object v3

    :cond_98
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->emptyCommit:Ljava/lang/String;

    invoke-direct {v0, v2}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    aget-boolean v5, v5, v0

    if-eqz v5, :cond_ab

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_ab
    new-instance v2, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->entryNotFoundByPath:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v1, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v4, v16

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c7
    const/16 v16, 0x0

    if-eqz v14, :cond_156

    new-instance v9, Labcd/QC;

    invoke-direct {v9, v13}, Labcd/QC;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v5

    move/from16 v19, v6

    invoke-virtual {v14}, Labcd/_J;->j3()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Labcd/QC;->DW(J)V

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual {v14}, Labcd/_J;->aM()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Labcd/QC;->j6(J)V

    invoke-virtual {v14, v10}, Labcd/_J;->j6(Labcd/RC;)Labcd/rE;

    move-result-object v3

    invoke-virtual {v9, v3}, Labcd/QC;->j6(Labcd/rE;)V

    if-eqz v10, :cond_f5

    invoke-virtual {v14, v10}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v3

    if-nez v3, :cond_fe

    :cond_f5
    if-eqz v8, :cond_100

    invoke-virtual {v14, v8}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v3

    if-nez v3, :cond_fe

    goto :goto_100

    :cond_fe
    const/4 v3, 0x1

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v3, 0x0

    :goto_101
    if-eqz v3, :cond_10b

    :goto_103
    invoke-virtual {v14}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v3

    invoke-virtual {v9, v3}, Labcd/QC;->j6(Labcd/YD;)V

    goto :goto_12f

    :cond_10b
    sget-object v3, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v9}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    goto :goto_103

    :cond_118
    if-nez v12, :cond_120

    iget-object v3, v1, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v12

    :cond_120
    invoke-virtual {v14}, Labcd/_J;->a8()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x3

    :try_start_125
    invoke-virtual {v12, v4, v5, v6, v3}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object v4

    invoke-virtual {v9, v4}, Labcd/QC;->j6(Labcd/YD;)V
    :try_end_12c
    .catchall {:try_start_125 .. :try_end_12c} :catchall_151

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :goto_12f
    new-instance v3, Labcd/YA;

    invoke-direct {v3, v1, v13, v9}, Labcd/YA;-><init>(Labcd/ZA;Ljava/lang/String;Labcd/QC;)V

    invoke-virtual {v2, v3}, Labcd/PC;->j6(Labcd/PC$b;)V

    move-object/from16 v4, v21

    invoke-virtual {v4, v9}, Labcd/MC;->DW(Labcd/QC;)V

    if-eqz v11, :cond_169

    if-eqz v8, :cond_168

    invoke-virtual {v8, v14}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v3

    if-eqz v3, :cond_168

    invoke-virtual {v8}, Labcd/TJ;->VH()I

    move-result v3

    invoke-virtual {v14}, Labcd/TJ;->VH()I

    move-result v5

    if-eq v3, v5, :cond_169

    goto :goto_168

    :catchall_151
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_156
    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move/from16 v19, v6

    new-instance v3, Labcd/PC$a;

    invoke-direct {v3, v13}, Labcd/PC$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Labcd/PC;->j6(Labcd/PC$b;)V

    if-eqz v11, :cond_169

    if-eqz v8, :cond_169

    :cond_168
    :goto_168
    const/4 v11, 0x0

    :cond_169
    iget-object v3, v1, Labcd/ZA;->u7:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, v15

    goto :goto_18e

    :cond_16f
    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move/from16 v19, v6

    const/4 v5, 0x1

    if-eqz v8, :cond_18e

    new-instance v3, Labcd/QC;

    invoke-direct {v3, v13}, Labcd/QC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v6

    invoke-virtual {v3, v6}, Labcd/QC;->j6(Labcd/YD;)V

    invoke-virtual {v8}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v6

    invoke-virtual {v3, v6}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {v4, v3}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_18e
    :goto_18e
    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v3, v20

    const/4 v8, -0x1

    const/4 v9, 0x1

    goto/16 :goto_51
.end method

.method private j6(Labcd/iF;)V
    .registers 8

    iget-object v0, p0, Labcd/ZA;->v5:Labcd/KE;

    if-nez v0, :cond_d

    new-instance v0, Labcd/KE;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/KE;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/ZA;->v5:Labcd/KE;

    :cond_d
    iget-object v0, p0, Labcd/ZA;->Hw:Labcd/KE;

    if-nez v0, :cond_15

    iget-object v0, p0, Labcd/ZA;->v5:Labcd/KE;

    iput-object v0, p0, Labcd/ZA;->Hw:Labcd/KE;

    :cond_15
    sget-object v0, Labcd/iF;->Hw:Labcd/iF;

    if-ne p1, v0, :cond_63

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_1c
    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->lg()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Labcd/ZA;->we:Ljava/util/List;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_4a

    iget-object v2, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    if-nez v2, :cond_63

    :try_start_28
    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->a8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/ZA;->Zo:Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_63

    :catch_31
    move-exception v2

    new-instance v3, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->exceptionOccurredDuringReadingOfGIT_DIR:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "MERGE_MSG"

    aput-object v5, v1, v0

    aput-object v2, v1, p1

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4a
    move-exception v2

    new-instance v3, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->exceptionOccurredDuringReadingOfGIT_DIR:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "MERGE_HEAD"

    aput-object v5, v1, v0

    aput-object v2, v1, p1

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_63
    :goto_63
    iget-object p1, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    if-eqz p1, :cond_68

    return-void

    :cond_68
    new-instance p1, Labcd/WB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->commitMessageNotSpecified:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/WB;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Labcd/yE;)V
    .registers 7

    iget-object v0, p0, Labcd/ZA;->we:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/ZA;->we:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iget-object v1, p0, Labcd/ZA;->Hw:Labcd/KE;

    iget-object v2, p0, Labcd/ZA;->v5:Labcd/KE;

    iget-object v3, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Labcd/mK;->j6(Labcd/yE;Labcd/yE;Labcd/KE;Labcd/KE;Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    iget-object v0, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    invoke-static {v0, p1}, Labcd/mK;->j6(Ljava/lang/String;Labcd/yE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    if-eqz p1, :cond_5b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nChange-Id: I"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    invoke-virtual {v3}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    :cond_5b
    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/ZA;
    .registers 7

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-boolean v0, p0, Labcd/ZA;->VH:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_28

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1a
    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    return-object p0

    :cond_28
    new-instance p1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->illegalCombinationOfArguments:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "--only"

    aput-object v4, v3, v2

    const-string v2, "--all"

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Z)Labcd/ZA;
    .registers 6

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean p1, p0, Labcd/ZA;->VH:Z

    return-object p0

    :cond_e
    new-instance p1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->illegalCombinationOfArguments:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "--all"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "--only"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public FH(Ljava/lang/String;)Labcd/ZA;
    .registers 2

    iput-object p1, p0, Labcd/ZA;->J0:Ljava/lang/String;

    return-object p0
.end method

.method public call()Labcd/dG;
    .registers 15

    const-string v0, "HEAD"

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v1

    invoke-virtual {v1}, Labcd/iF;->Hw()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1ae

    invoke-direct {p0, v1}, Labcd/ZA;->j6(Labcd/iF;)V

    :try_start_16
    iget-boolean v2, p0, Labcd/ZA;->VH:Z

    if-eqz v2, :cond_4c

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->QX()Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4c

    new-instance v2, Labcd/cB;

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v2, v5}, Labcd/cB;-><init>(Labcd/UE;)V
    :try_end_31
    .catch Labcd/zD; {:try_start_16 .. :try_end_31} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_31} :catch_19f

    :try_start_31
    invoke-virtual {v2}, Labcd/cB;->j6()Labcd/OA;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Labcd/OA;->j6(Ljava/lang/String;)Labcd/OA;

    invoke-virtual {v2, v3}, Labcd/OA;->DW(Z)Labcd/OA;

    invoke-virtual {v2}, Labcd/OA;->call()Labcd/KC;
    :try_end_40
    .catch Labcd/UB; {:try_start_31 .. :try_end_40} :catch_41
    .catch Labcd/zD; {:try_start_31 .. :try_end_40} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_40} :catch_19f

    goto :goto_4c

    :catch_41
    move-exception v0

    :try_start_42
    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4c
    :goto_4c
    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v0}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v2

    if-eqz v2, :cond_193

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v5, "HEAD^{commit}"

    invoke-virtual {v2, v5}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_88

    iget-boolean v5, p0, Labcd/ZA;->tp:Z

    if-eqz v5, :cond_83

    new-instance v5, Labcd/qG;

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v5, v6}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v5, v2}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v5

    invoke-virtual {v5}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v5

    const/4 v6, 0x0

    :goto_72
    array-length v7, v5

    if-lt v6, v7, :cond_76

    goto :goto_88

    :cond_76
    iget-object v7, p0, Labcd/ZA;->we:Ljava/util/List;
    :try_end_78
    .catch Labcd/zD; {:try_start_42 .. :try_end_78} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_78} :catch_19f

    aget-object v8, v5, v6

    :try_start_7a
    invoke-virtual {v8}, Labcd/iG;->getId()Labcd/yE;

    invoke-interface {v7, v4, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    :cond_83
    iget-object v5, p0, Labcd/ZA;->we:Ljava/util/List;

    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_88
    :goto_88
    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v5
    :try_end_8e
    .catch Labcd/zD; {:try_start_7a .. :try_end_8e} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8e} :catch_19f

    :try_start_8e
    iget-object v6, p0, Labcd/ZA;->gn:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9a

    invoke-direct {p0, v2, v5}, Labcd/ZA;->j6(Labcd/yE;Labcd/KC;)Labcd/KC;

    move-result-object v5

    :cond_9a
    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v6}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v6
    :try_end_a0
    .catchall {:try_start_8e .. :try_end_a0} :catchall_18e

    :try_start_a0
    invoke-virtual {v5, v6}, Labcd/KC;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v7

    iget-boolean v8, p0, Labcd/ZA;->EQ:Z

    if-eqz v8, :cond_ab

    invoke-direct {p0, v7}, Labcd/ZA;->j6(Labcd/yE;)V

    :cond_ab
    new-instance v8, Labcd/fE;

    invoke-direct {v8}, Labcd/fE;-><init>()V

    iget-object v9, p0, Labcd/ZA;->v5:Labcd/KE;

    invoke-virtual {v8, v9}, Labcd/fE;->DW(Labcd/KE;)V

    iget-object v9, p0, Labcd/ZA;->Hw:Labcd/KE;

    invoke-virtual {v8, v9}, Labcd/fE;->j6(Labcd/KE;)V

    iget-object v9, p0, Labcd/ZA;->Zo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Labcd/fE;->j6(Ljava/lang/String;)V

    iget-object v9, p0, Labcd/ZA;->we:Ljava/util/List;

    invoke-virtual {v8, v9}, Labcd/fE;->j6(Ljava/util/List;)V

    invoke-virtual {v8, v7}, Labcd/fE;->j6(Labcd/YD;)V

    invoke-virtual {v6, v8}, Labcd/EE;->j6(Labcd/fE;)Labcd/yE;

    move-result-object v7

    invoke-virtual {v6}, Labcd/EE;->FH()V

    new-instance v8, Labcd/qG;

    iget-object v9, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v8, v9}, Labcd/qG;-><init>(Labcd/UE;)V
    :try_end_d5
    .catchall {:try_start_a0 .. :try_end_d5} :catchall_189

    :try_start_d5
    invoke-virtual {v8, v7}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v9

    iget-object v10, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v10, v0}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v10

    invoke-virtual {v10, v7}, Labcd/RE;->DW(Labcd/YD;)V

    iget-object v11, p0, Labcd/ZA;->J0:Ljava/lang/String;

    if-eqz v11, :cond_ea

    :goto_e6
    invoke-virtual {v10, v11, v4}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    goto :goto_104

    :cond_ea
    iget-boolean v11, p0, Labcd/ZA;->tp:Z
    :try_end_ec
    .catchall {:try_start_d5 .. :try_end_ec} :catchall_184

    if-eqz v11, :cond_f1

    const-string v11, "commit (amend): "

    goto :goto_f3

    :cond_f1
    const-string v11, "commit: "

    :goto_f3
    :try_start_f3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_e6

    :goto_104
    if-eqz v2, :cond_10a

    :goto_106
    invoke-virtual {v10, v2}, Labcd/RE;->j6(Labcd/YD;)V

    goto :goto_10f

    :cond_10a
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v2

    goto :goto_106

    :goto_10f
    invoke-virtual {v10}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v2

    invoke-static {}, Labcd/ZA;->FH()[I

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x2

    if-eq v11, v12, :cond_174

    const/4 v13, 0x4

    if-eq v11, v13, :cond_149

    const/4 v13, 0x5

    if-eq v11, v13, :cond_149

    const/4 v13, 0x6

    if-eq v11, v13, :cond_149

    const/4 v1, 0x7

    if-eq v11, v1, :cond_174

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v9

    iget-object v9, v9, Lorg/eclipse/jgit/JGitText;->updatingRefFailed:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-virtual {v7}, Labcd/YD;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    aput-object v2, v10, v12

    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_149
    invoke-virtual {p0, v4}, Labcd/dB;->j6(Z)V

    sget-object v0, Labcd/iF;->Hw:Labcd/iF;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_15c

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, v2}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, v2}, Labcd/UE;->j6(Ljava/util/List;)V

    goto :goto_16a

    :cond_15c
    sget-object v0, Labcd/iF;->Zo:Labcd/iF;

    if-ne v1, v0, :cond_16a

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, v2}, Labcd/UE;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, v2}, Labcd/UE;->j6(Labcd/yE;)V
    :try_end_16a
    .catchall {:try_start_f3 .. :try_end_16a} :catchall_184

    :cond_16a
    :goto_16a
    :try_start_16a
    invoke-virtual {v8}, Labcd/qG;->EQ()V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_189

    :try_start_16d
    invoke-virtual {v6}, Labcd/EE;->Hw()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_18e

    :try_start_170
    invoke-virtual {v5}, Labcd/KC;->tp()V
    :try_end_173
    .catch Labcd/zD; {:try_start_170 .. :try_end_173} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_173} :catch_19f

    return-object v9

    :cond_174
    :try_start_174
    new-instance v0, Labcd/LB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->couldNotLockHEAD:Ljava/lang/String;

    invoke-virtual {v10}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Labcd/LB;-><init>(Ljava/lang/String;Labcd/ME;Labcd/RE$a;)V

    throw v0
    :try_end_184
    .catchall {:try_start_174 .. :try_end_184} :catchall_184

    :catchall_184
    move-exception v0

    :try_start_185
    invoke-virtual {v8}, Labcd/qG;->EQ()V

    throw v0
    :try_end_189
    .catchall {:try_start_185 .. :try_end_189} :catchall_189

    :catchall_189
    move-exception v0

    :try_start_18a
    invoke-virtual {v6}, Labcd/EE;->Hw()V

    throw v0
    :try_end_18e
    .catchall {:try_start_18a .. :try_end_18e} :catchall_18e

    :catchall_18e
    move-exception v0

    :try_start_18f
    invoke-virtual {v5}, Labcd/KC;->tp()V

    throw v0

    :cond_193
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19f
    .catch Labcd/zD; {:try_start_18f .. :try_end_19f} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_19f} :catch_19f

    :catch_19f
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfCommitCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1ac
    move-exception v0

    throw v0

    :cond_1ae
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotCommitOnARepoWithState:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    goto :goto_1c7

    :goto_1c6
    throw v0

    :goto_1c7
    goto :goto_1c6
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
