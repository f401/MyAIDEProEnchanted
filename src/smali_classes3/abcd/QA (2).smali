.class public Labcd/QA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# static fields
.field private static FH:[I


# instance fields
.field private EQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/lang/String;

.field private VH:Labcd/_A$a;

.field private Zo:Z

.field private gn:Ljava/lang/String;

.field private tp:Labcd/RA;

.field private u7:Labcd/dG;

.field private v5:Z


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/QA;->v5:Z

    iput-boolean p1, p0, Labcd/QA;->Zo:Z

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/QA;->gn:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Labcd/QA;->EQ:Ljava/util/List;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/QA;->FH:[I

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
    sput-object v0, Labcd/QA;->FH:[I

    return-object v0
.end method

.method private VH()V
    .registers 6

    iget-object v0, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Labcd/QA;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refs/heads/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_22
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->branchNameInvalid:Ljava/lang/String;

    iget-object v1, p0, Labcd/QA;->Hw:Ljava/lang/String;

    if-nez v1, :cond_2e

    const-string v1, "<null>"

    :cond_2e
    new-instance v2, Labcd/QB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/QB;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    return-void
.end method

.method private Zo()Labcd/yE;
    .registers 6

    iget-object v0, p0, Labcd/QA;->u7:Labcd/dG;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Labcd/iG;->getId()Labcd/yE;

    return-object v0

    :cond_8
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v1, p0, Labcd/QA;->gn:Ljava/lang/String;

    const-string v2, "HEAD"

    if-nez v1, :cond_11

    move-object v1, v2

    :cond_11
    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-nez v0, :cond_32

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    iget-object v1, p0, Labcd/QA;->gn:Ljava/lang/String;

    if-eqz v1, :cond_22

    move-object v2, v1

    :cond_22
    new-instance v1, Labcd/ZB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    return-object v0
.end method

.method private j6(Labcd/ME;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object p1

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/QA;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/QA;->Hw:Ljava/lang/String;

    return-object p0
.end method

.method public DW(Z)Labcd/QA;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-boolean p1, p0, Labcd/QA;->v5:Z

    return-object p0
.end method

.method public FH(Ljava/lang/String;)Labcd/QA;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/QA;->gn:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/QA;->u7:Labcd/dG;

    return-object p0
.end method

.method protected Hw()Labcd/QA;
    .registers 16

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v1

    :try_start_d
    invoke-virtual {v1}, Labcd/KC;->Hw()Labcd/PC;

    move-result-object v2

    new-instance v3, Labcd/YJ;

    invoke-virtual {v0}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/YJ;-><init>(Labcd/IE;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Labcd/YJ;->j6(Z)V

    iget-object v5, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-static {v5}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v5

    invoke-virtual {v3, v5}, Labcd/YJ;->j6(Labcd/jK;)V

    iget-object v5, p0, Labcd/QA;->u7:Labcd/dG;

    const/4 v6, 0x0

    if-nez v5, :cond_31

    iget-object v5, p0, Labcd/QA;->gn:Ljava/lang/String;

    if-nez v5, :cond_31

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    if-nez v4, :cond_44

    invoke-direct {p0}, Labcd/QA;->Zo()Labcd/yE;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v4

    invoke-virtual {v4}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YJ;->j6(Labcd/YD;)I

    goto :goto_4c

    :cond_44
    new-instance v4, Labcd/RC;

    invoke-direct {v4, v1}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v3, v4}, Labcd/YJ;->j6(Labcd/TJ;)I

    :goto_4c
    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v5

    invoke-virtual {v5}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v5
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_93

    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Labcd/YJ;->EQ()Z

    move-result v7

    if-nez v7, :cond_72

    invoke-virtual {v2}, Labcd/PC;->j6()Z
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_8b

    :try_start_65
    invoke-virtual {v3}, Labcd/YJ;->J0()V

    invoke-virtual {v5}, Labcd/IE;->FH()V
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_93

    invoke-virtual {v1}, Labcd/KC;->tp()V

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object p0

    :cond_72
    :try_start_72
    invoke-virtual {v3, v6}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v10

    invoke-virtual {v3, v6}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v11

    new-instance v14, Labcd/PA;

    invoke-virtual {v3}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v9

    move-object v7, v14

    move-object v8, p0

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Labcd/PA;-><init>(Labcd/QA;Ljava/lang/String;Labcd/yE;Labcd/rE;Ljava/io/File;Labcd/IE;)V

    invoke-virtual {v2, v14}, Labcd/PC;->j6(Labcd/PC$b;)V
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_8b

    goto :goto_5c

    :catchall_8b
    move-exception v2

    :try_start_8c
    invoke-virtual {v3}, Labcd/YJ;->J0()V

    invoke-virtual {v5}, Labcd/IE;->FH()V

    throw v2
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v2

    invoke-virtual {v1}, Labcd/KC;->tp()V

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    goto :goto_9c

    :goto_9b
    throw v2

    :goto_9c
    goto :goto_9b
.end method

.method public call()Labcd/ME;
    .registers 12

    const-string v0, "HEAD"

    invoke-virtual {p0}, Labcd/dB;->j6()V

    invoke-direct {p0}, Labcd/QA;->VH()V

    :try_start_8
    iget-object v1, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_25

    invoke-virtual {p0}, Labcd/QA;->Hw()Labcd/QA;

    sget-object v0, Labcd/RA;->j6:Labcd/RA;

    iput-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    invoke-virtual {p0, v3}, Labcd/dB;->j6(Z)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_180
    .catchall {:try_start_8 .. :try_end_1c} :catchall_17e

    iget-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v0, :cond_24

    sget-object v0, Labcd/RA;->DW:Labcd/RA;

    iput-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    :cond_24
    return-object v2

    :cond_25
    :try_start_25
    iget-boolean v1, p0, Labcd/QA;->Zo:Z

    if-eqz v1, :cond_4e

    new-instance v1, Labcd/cB;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v4}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v1}, Labcd/cB;->DW()Labcd/_A;

    move-result-object v1

    iget-object v4, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v4}, Labcd/_A;->j6(Ljava/lang/String;)Labcd/_A;

    invoke-direct {p0}, Labcd/QA;->Zo()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/_A;->DW(Ljava/lang/String;)Labcd/_A;

    iget-object v4, p0, Labcd/QA;->VH:Labcd/_A$a;

    if-eqz v4, :cond_4b

    invoke-virtual {v1, v4}, Labcd/_A;->j6(Labcd/_A$a;)Labcd/_A;

    :cond_4b
    invoke-virtual {v1}, Labcd/_A;->call()Labcd/ME;

    :cond_4e
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1, v0}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/QA;->j6(Labcd/ME;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkout: moving from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v6, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_168

    new-instance v7, Labcd/qG;

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v7, v8}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-nez v1, :cond_80

    move-object v1, v2

    goto :goto_84

    :cond_80
    invoke-virtual {v7, v1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    :goto_84
    invoke-virtual {v7, v5}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v5

    if-nez v1, :cond_8c

    move-object v1, v2

    goto :goto_90

    :cond_8c
    invoke-virtual {v1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    :goto_90
    new-instance v7, Labcd/NC;

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v9, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v9}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v9

    invoke-virtual {v5}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v10

    invoke-direct {v7, v8, v1, v9, v10}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    invoke-virtual {v7, v6}, Labcd/NC;->j6(Z)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_a4} :catch_180
    .catchall {:try_start_25 .. :try_end_a4} :catchall_17e

    :try_start_a4
    invoke-virtual {v7}, Labcd/NC;->j6()Z
    :try_end_a7
    .catch Labcd/VC; {:try_start_a4 .. :try_end_a7} :catch_159
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_180
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_17e

    :try_start_a7
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v8, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v8}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-eqz v1, :cond_be

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "refs/heads/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_be

    goto :goto_bf

    :cond_be
    move-object v2, v1

    :goto_bf
    iget-object v1, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-static {v1}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    if-nez v2, :cond_cb

    const/4 v9, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v9, 0x0

    :goto_cc
    invoke-virtual {v8, v0, v9}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    iget-boolean v8, p0, Labcd/QA;->v5:Z

    invoke-virtual {v0, v8}, Labcd/RE;->j6(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " to "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    if-eqz v2, :cond_f8

    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    move-result-object v0

    goto :goto_ff

    :cond_f8
    invoke-virtual {v0, v5}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v0

    :goto_ff
    invoke-virtual {p0, v3}, Labcd/dB;->j6(Z)V

    invoke-static {}, Labcd/QA;->FH()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_11a

    const/4 v4, 0x4

    if-eq v1, v4, :cond_11a

    const/4 v4, 0x5

    if-eq v1, v4, :cond_11a

    const/4 v4, 0x6

    if-eq v1, v4, :cond_11a

    const/4 v1, 0x0

    goto :goto_11b

    :cond_11a
    const/4 v1, 0x1

    :goto_11b
    if-eqz v1, :cond_141

    invoke-virtual {v7}, Labcd/NC;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_135

    new-instance v0, Labcd/RA;

    sget-object v1, Labcd/RA$a;->Hw:Labcd/RA$a;

    invoke-virtual {v7}, Labcd/NC;->FH()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    :goto_132
    iput-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    goto :goto_138

    :cond_135
    sget-object v0, Labcd/RA;->j6:Labcd/RA;
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_137} :catch_180
    .catchall {:try_start_a7 .. :try_end_137} :catchall_17e

    goto :goto_132

    :goto_138
    iget-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v0, :cond_140

    sget-object v0, Labcd/RA;->DW:Labcd/RA;

    iput-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    :cond_140
    return-object v2

    :cond_141
    :try_start_141
    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->checkoutUnexpectedResult:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_159
    move-exception v0

    new-instance v1, Labcd/RA;

    sget-object v2, Labcd/RA$a;->FH:Labcd/RA$a;

    invoke-virtual {v7}, Labcd/NC;->DW()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    throw v0

    :cond_168
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/QA;->Hw:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_17e} :catch_180
    .catchall {:try_start_141 .. :try_end_17e} :catchall_17e

    :catchall_17e
    move-exception v0

    goto :goto_18b

    :catch_180
    move-exception v0

    :try_start_181
    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_18b
    .catchall {:try_start_181 .. :try_end_18b} :catchall_17e

    :goto_18b
    iget-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v1, :cond_193

    sget-object v1, Labcd/RA;->DW:Labcd/RA;

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    :cond_193
    goto :goto_195

    :goto_194
    throw v0

    :goto_195
    goto :goto_194
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/QA;->call()Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/QA;
    .registers 3

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public v5()Labcd/RA;
    .registers 2

    iget-object v0, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v0, :cond_6

    sget-object v0, Labcd/RA;->FH:Labcd/RA;

    :cond_6
    return-object v0
.end method
