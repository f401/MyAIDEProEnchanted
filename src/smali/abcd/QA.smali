.class public Labcd/QA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
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
            "Ljava/util/List",
            "<",
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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    iput-boolean v0, p0, Labcd/QA;->v5:Z

    iput-boolean v0, p0, Labcd/QA;->Zo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/QA;->gn:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/QA;->EQ:Ljava/util/List;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/QA;->FH:[I

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
    sput-object v0, Labcd/QA;->FH:[I

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

.method private VH()V
    .registers 6

    iget-object v0, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/QA;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refs/heads/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jgit/JGitText;->branchNameInvalid:Ljava/lang/String;

    iget-object v0, p0, Labcd/QA;->Hw:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "<null>"

    :cond_1
    new-instance v2, Labcd/QB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/QB;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method private Zo()Labcd/yE;
    .registers 6

    iget-object v0, p0, Labcd/QA;->u7:Labcd/dG;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/iG;->getId()Labcd/yE;

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v0, p0, Labcd/QA;->gn:Ljava/lang/String;
    :try_end_0
    .catch Labcd/UC; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "HEAD"

    if-nez v0, :cond_2

    const-string v0, "HEAD"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;
    :try_end_1
    .catch Labcd/UC; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v2, v0, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    iget-object v0, p0, Labcd/QA;->gn:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    new-instance v1, Labcd/ZB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/QA;->gn:Ljava/lang/String;
    :try_end_2
    .catch Labcd/UC; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
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

    if-eqz v0, :cond_0

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .registers 3

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/QA;->gn:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/QA;->u7:Labcd/dG;

    return-object p0
.end method

.method protected Hw()Labcd/QA;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v7, Labcd/qG;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v7, v2}, Labcd/qG;-><init>(Labcd/UE;)V

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8}, Labcd/KC;->Hw()Labcd/PC;

    move-result-object v9

    new-instance v10, Labcd/YJ;

    invoke-virtual {v7}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v2

    invoke-direct {v10, v2}, Labcd/YJ;-><init>(Labcd/IE;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Labcd/YJ;->j6(Z)V

    iget-object v2, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-static {v2}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v2

    invoke-virtual {v10, v2}, Labcd/YJ;->j6(Labcd/jK;)V

    iget-object v2, p0, Labcd/QA;->u7:Labcd/dG;

    if-nez v2, :cond_0

    iget-object v2, p0, Labcd/QA;->gn:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/QA;->Zo()Labcd/yE;

    move-result-object v0

    invoke-virtual {v7, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    invoke-virtual {v10, v0}, Labcd/YJ;->j6(Labcd/YD;)I

    :goto_1
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v5

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :goto_2
    :try_start_1
    invoke-virtual {v10}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Labcd/PC;->j6()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10}, Labcd/YJ;->J0()V

    invoke-virtual {v6}, Labcd/IE;->FH()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v8}, Labcd/KC;->tp()V

    invoke-virtual {v7}, Labcd/qG;->EQ()V

    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v0, Labcd/RC;

    invoke-direct {v0, v8}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v10, v0}, Labcd/YJ;->j6(Labcd/TJ;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Labcd/KC;->tp()V

    invoke-virtual {v7}, Labcd/qG;->EQ()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v10, v0}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v4

    new-instance v0, Labcd/PA;

    invoke-virtual {v10}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Labcd/PA;-><init>(Labcd/QA;Ljava/lang/String;Labcd/yE;Labcd/rE;Ljava/io/File;Labcd/IE;)V

    invoke-virtual {v9, v0}, Labcd/PC;->j6(Labcd/PC$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v10}, Labcd/YJ;->J0()V

    invoke-virtual {v6}, Labcd/IE;->FH()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public call()Labcd/ME;
    .registers 11

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/dB;->j6()V

    invoke-direct {p0}, Labcd/QA;->VH()V

    :try_start_0
    iget-object v3, p0, Labcd/QA;->EQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Labcd/QA;->Hw()Labcd/QA;

    sget-object v1, Labcd/RA;->j6:Labcd/RA;

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/dB;->j6(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v1, :cond_0

    sget-object v1, Labcd/RA;->DW:Labcd/RA;

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-boolean v3, p0, Labcd/QA;->Zo:Z

    if-eqz v3, :cond_3

    new-instance v3, Labcd/cB;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v3, v4}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v3}, Labcd/cB;->DW()Labcd/_A;

    move-result-object v3

    iget-object v4, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Labcd/_A;->j6(Ljava/lang/String;)Labcd/_A;

    invoke-direct {p0}, Labcd/QA;->Zo()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/_A;->DW(Ljava/lang/String;)Labcd/_A;

    iget-object v4, p0, Labcd/QA;->VH:Labcd/_A$a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Labcd/QA;->VH:Labcd/_A$a;

    invoke-virtual {v3, v4}, Labcd/_A;->j6(Labcd/_A$a;)Labcd/_A;

    :cond_2
    invoke-virtual {v3}, Labcd/_A;->call()Labcd/ME;

    :cond_3
    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/QA;->j6(Labcd/ME;)Ljava/lang/String;

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

    if-eqz v5, :cond_c

    new-instance v6, Labcd/qG;

    iget-object v7, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v6, v7}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v0

    :goto_1
    invoke-virtual {v6, v5}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v5

    if-nez v3, :cond_5

    move-object v3, v0

    :goto_2
    new-instance v6, Labcd/NC;

    iget-object v7, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v8}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v8

    invoke-virtual {v5}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v9

    invoke-direct {v6, v7, v3, v8, v9}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Labcd/NC;->j6(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Labcd/NC;->j6()Z
    :try_end_2
    .catch Labcd/VC; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v7, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v7}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "refs/heads/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    :goto_3
    iget-object v3, p0, Labcd/QA;->Hw:Ljava/lang/String;

    invoke-static {v3}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    if-nez v0, :cond_6

    move v3, v2

    :goto_4
    const-string v9, "HEAD"

    invoke-virtual {v8, v9, v3}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v3

    iget-boolean v8, p0, Labcd/QA;->v5:Z

    invoke-virtual {v3, v8}, Labcd/RE;->j6(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " to "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    move-result-object v3

    :goto_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Labcd/dB;->j6(Z)V

    invoke-static {}, Labcd/QA;->FH()[I

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    const/4 v5, 0x5

    if-eq v4, v5, :cond_8

    const/4 v5, 0x6

    if-eq v4, v5, :cond_8

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v6}, Labcd/NC;->FH()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Labcd/RA;

    sget-object v2, Labcd/RA$a;->Hw:Labcd/RA$a;

    invoke-virtual {v6}, Labcd/NC;->FH()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    iget-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v1, :cond_0

    sget-object v1, Labcd/RA;->DW:Labcd/RA;

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v6, v3}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v3

    goto/16 :goto_2

    :cond_6
    move v3, v1

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v5}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v3}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v3

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    sget-object v1, Labcd/RA;->j6:Labcd/RA;

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    if-nez v1, :cond_a

    sget-object v1, Labcd/RA;->DW:Labcd/RA;

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    :cond_a
    throw v0

    :cond_b
    :try_start_6
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->checkoutUnexpectedResult:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/RA;

    sget-object v2, Labcd/RA$a;->FH:Labcd/RA$a;

    invoke-virtual {v6}, Labcd/NC;->DW()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    iput-object v1, p0, Labcd/QA;->tp:Labcd/RA;

    throw v0

    :cond_c
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/QA;->Hw:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    move-object v0, v3

    goto/16 :goto_3
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

    if-nez v0, :cond_0

    sget-object v0, Labcd/RA;->FH:Labcd/RA;

    :cond_0
    return-object v0
.end method
