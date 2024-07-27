.class public abstract Labcd/UE;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Labcd/HD;


# instance fields
.field private final DW:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final FH:Ljava/io/File;

.field private final Hw:Labcd/pK;

.field private final VH:Ljava/io/File;

.field private final Zo:Ljava/io/File;

.field private final v5:Labcd/HD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/HD;

    invoke-direct {v0}, Labcd/HD;-><init>()V

    sput-object v0, Labcd/UE;->j6:Labcd/HD;

    return-void
.end method

.method protected constructor <init>(Labcd/bE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Labcd/UE;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Labcd/HD;

    invoke-direct {v0}, Labcd/HD;-><init>()V

    iput-object v0, p0, Labcd/UE;->v5:Labcd/HD;

    invoke-virtual {p1}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/UE;->FH:Ljava/io/File;

    invoke-virtual {p1}, Labcd/bE;->Hw()Labcd/pK;

    move-result-object v0

    iput-object v0, p0, Labcd/UE;->Hw:Labcd/pK;

    invoke-virtual {p1}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/UE;->Zo:Ljava/io/File;

    invoke-virtual {p1}, Labcd/bE;->Zo()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/UE;->VH:Ljava/io/File;

    return-void
.end method

.method private DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;
    .registers 14

    const/16 v10, 0x7d

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object v0, v1

    move v3, v4

    :goto_0
    array-length v2, v8

    if-lt v3, v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    :goto_1
    move-object v1, v0

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    invoke-direct {p0, p2}, Labcd/UE;->u7(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    goto :goto_1

    :cond_2
    aget-char v2, v8, v3

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_24

    const/16 v5, 0x40

    if-eq v2, v5, :cond_21

    const/16 v5, 0x5e

    if-eq v2, v5, :cond_e

    const/16 v5, 0x7e

    if-eq v2, v5, :cond_5

    if-nez v0, :cond_4

    move v2, v3

    :cond_3
    :goto_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Labcd/rD;

    invoke-direct {v0, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Labcd/UE;->j6(Labcd/qG;Ljava/lang/String;)Labcd/iG;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v5

    instance-of v0, v5, Labcd/dG;

    if-eqz v0, :cond_d

    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_4
    array-length v6, v8

    if-lt v2, v6, :cond_9

    :cond_7
    sub-int v3, v2, v3

    if-le v3, v7, :cond_a

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v6, v8, v0, v3}, Ljava/lang/String;-><init>([CII)V

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move-object v0, v5

    :goto_5
    if-gtz v3, :cond_b

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_9
    aget-char v6, v8, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v0, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidAncestryLength:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Labcd/rD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v0, v5

    move v3, v7

    goto :goto_5

    :cond_b
    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->lg()I

    move-result v5

    if-nez v5, :cond_c

    move-object v0, v1

    goto :goto_6

    :cond_c
    invoke-virtual {v0, v4}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/qG;->DW(Labcd/iG;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_d
    new-instance v0, Labcd/ZC;

    const-string v1, "commit"

    invoke-direct {v0, v5, v1}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Labcd/UE;->j6(Labcd/qG;Ljava/lang/String;)Labcd/iG;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_f
    add-int/lit8 v5, v3, 0x1

    array-length v2, v8

    if-ge v5, v2, :cond_1f

    aget-char v2, v8, v5

    const/16 v6, 0x7b

    if-eq v2, v6, :cond_17

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    instance-of v2, v0, Labcd/dG;

    if-eqz v2, :cond_12

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->lg()I

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    move-object v0, v1

    move v2, v3

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v0, v4}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v0

    move v2, v3

    goto/16 :goto_3

    :cond_12
    new-instance v1, Labcd/ZC;

    const-string v2, "commit"

    invoke-direct {v1, v0, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    move v2, v5

    :goto_7
    array-length v6, v8

    if-lt v2, v6, :cond_15

    :cond_13
    new-instance v6, Ljava/lang/String;

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v6, v8, v5, v3}, Ljava/lang/String;-><init>([CII)V

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Labcd/dG;->lg()I

    move-result v5

    if-le v3, v5, :cond_16

    move-object v0, v1

    :cond_14
    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    :cond_15
    aget-char v6, v8, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v0

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v0, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidCommitParentNumber:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Labcd/rD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_17
    add-int/lit8 v5, v3, 0x2

    move v2, v5

    :goto_9
    array-length v6, v8

    if-lt v2, v6, :cond_18

    move-object v3, v1

    :goto_a
    if-eqz v3, :cond_1d

    const-string v5, "tree"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p1, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    goto/16 :goto_3

    :cond_18
    aget-char v6, v8, v2

    if-ne v6, v10, :cond_1e

    new-instance v6, Ljava/lang/String;

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v6, v8, v5, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    goto :goto_a

    :cond_19
    const-string v5, "commit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {p1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    goto/16 :goto_3

    :cond_1a
    const-string v5, "blob"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {p1, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v3, v0, Labcd/cG;

    if-nez v3, :cond_3

    new-instance v1, Labcd/ZC;

    const-string v2, "blob"

    invoke-direct {v1, v0, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v1

    :cond_1b
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p1, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    goto/16 :goto_3

    :cond_1c
    new-instance v0, Labcd/rD;

    invoke-direct {v0, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Labcd/rD;

    invoke-direct {v0, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    invoke-virtual {p1, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v2, v0, Labcd/dG;

    if-eqz v2, :cond_20

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->lg()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0, v4}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v0

    move v2, v3

    goto/16 :goto_3

    :cond_20
    new-instance v1, Labcd/ZC;

    const-string v2, "commit"

    invoke-direct {v1, v0, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v1

    :cond_21
    add-int/lit8 v5, v3, 0x2

    move v2, v5

    :goto_b
    array-length v6, v8

    if-lt v2, v6, :cond_22

    move-object v5, v1

    :goto_c
    if-eqz v5, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v3

    invoke-virtual {v3, v0}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, v5}, Labcd/UE;->j6(Labcd/qG;Labcd/ME;Ljava/lang/String;)Labcd/dG;

    move-result-object v0

    goto/16 :goto_3

    :cond_22
    aget-char v6, v8, v2

    if-ne v6, v10, :cond_23

    new-instance v6, Ljava/lang/String;

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x2

    invoke-direct {v6, v8, v5, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v6

    goto :goto_c

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    if-nez v0, :cond_26

    if-nez v3, :cond_25

    :try_start_2
    const-string v0, "HEAD"

    invoke-direct {p0, p1, v0}, Labcd/UE;->DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;
    :try_end_2
    .catch Labcd/rD; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    :goto_e
    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_27

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    goto/16 :goto_2

    :cond_25
    :try_start_3
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v8, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Labcd/UE;->DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;
    :try_end_3
    .catch Labcd/rD; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_d

    :catch_2
    move-exception v0

    new-instance v0, Labcd/rD;

    invoke-direct {v0, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {p1, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    goto :goto_e

    :cond_27
    invoke-virtual {p1}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    array-length v9, v8

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v5, v8, v6, v3}, Ljava/lang/String;-><init>([CII)V

    new-array v3, v7, [Labcd/YD;

    aput-object v0, v3, v4

    invoke-static {v2, v5, v3}, Labcd/YJ;->j6(Labcd/IE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static DW(Ljava/lang/String;)Z
    .registers 11

    const/16 v9, 0x2f

    const/16 v8, 0x2e

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, ".lock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    move v3, v1

    move v5, v1

    :goto_1
    if-lt v5, v6, :cond_3

    if-le v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x20

    if-gt v4, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v7, 0x2a

    if-eq v4, v7, :cond_c

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_c

    const/16 v7, 0x3f

    if-eq v4, v7, :cond_c

    const/16 v7, 0x5e

    if-eq v4, v7, :cond_c

    const/16 v7, 0x7b

    if-eq v4, v7, :cond_b

    const/16 v7, 0x7e

    if-eq v4, v7, :cond_c

    if-eq v4, v8, :cond_9

    if-eq v4, v9, :cond_6

    const/16 v3, 0x5b

    if-eq v4, v3, :cond_c

    const/16 v3, 0x5c

    if-eq v4, v3, :cond_c

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    add-int/lit8 v3, v6, -0x1

    if-ne v5, v3, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    if-eq v3, v8, :cond_a

    if-eq v3, v9, :cond_a

    add-int/lit8 v3, v6, -0x1

    if-ne v5, v3, :cond_5

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    const/16 v7, 0x40

    if-ne v3, v7, :cond_5

    move v0, v1

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_0
.end method

.method public static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "refs/heads/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "refs/tags/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "refs/remotes/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private VH(Ljava/lang/String;)[B
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v0

    array-length v2, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private gn(Ljava/lang/String;)Labcd/yE;
    .registers 7

    invoke-static {p1}, Labcd/WD;->j6(Ljava/lang/String;)Labcd/WD;

    move-result-object v0

    invoke-virtual {p0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Labcd/IE;->FH()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Labcd/IE;->FH()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v3, Labcd/UC;

    invoke-direct {v3, v0, v2}, Labcd/UC;-><init>(Labcd/WD;Ljava/util/Collection;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/IE;->FH()V

    throw v0
.end method

.method private j6(Labcd/qG;Labcd/ME;Ljava/lang/String;)Labcd/dG;
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_1

    new-instance v1, Labcd/qH;

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Labcd/qH;-><init>(Labcd/UE;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Labcd/qH;->j6(I)Labcd/pH;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Labcd/pH;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->reflogEntryNotFound:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidReflogRevision:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidReflogRevision:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/qG;Ljava/lang/String;)Labcd/iG;
    .registers 4

    invoke-direct {p0, p2}, Labcd/UE;->u7(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/yE;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v1, Labcd/XK;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {v0, v1}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    throw v0

    :cond_1
    const/4 v1, 0x4

    invoke-static {v0, v1}, Labcd/zK;->j6(Ljava/io/File;I)V

    goto :goto_1
.end method

.method private static j6(C)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-le p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;I)Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Labcd/UE;->j6(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private u7(Ljava/lang/String;)Labcd/yE;
    .registers 5

    invoke-static {p1}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Labcd/WD;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Labcd/UE;->gn(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "-g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-ltz v0, :cond_3

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/UE;->j6(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/UE;->j6(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Labcd/UE;->j6(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/WD;->DW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Labcd/UE;->gn(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/UE;->j6(Z)V

    return-void
.end method

.method public abstract EQ()Labcd/xE;
.end method

.method public FH(Ljava/lang/String;)Labcd/yE;
    .registers 4

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p0}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    invoke-direct {p0, v0, p1}, Labcd/UE;->DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw v1
.end method

.method protected FH()V
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->j6()V

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/OE;->j6()V

    return-void
.end method

.method public Hw()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public J0()Labcd/iF;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Labcd/iF;->j6:Labcd/iF;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    const-string v2, ".dotest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Labcd/iF;->VH:Labcd/iF;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, ".dotest-merge"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Labcd/iF;->EQ:Labcd/iF;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-apply/rebasing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Labcd/iF;->gn:Labcd/iF;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-apply/applying"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Labcd/iF;->u7:Labcd/iF;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-apply"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Labcd/iF;->VH:Labcd/iF;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-merge/interactive"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Labcd/iF;->EQ:Labcd/iF;

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-merge"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Labcd/iF;->tp:Labcd/iF;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "MERGE_HEAD"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_0
    invoke-virtual {p0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KC;->Zo()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Labcd/iF;->Hw:Labcd/iF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_9
    sget-object v0, Labcd/iF;->FH:Labcd/iF;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "BISECT_LOG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Labcd/iF;->we:Labcd/iF;

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "CHERRY_PICK_HEAD"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_1
    invoke-virtual {p0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KC;->Zo()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Labcd/iF;->Zo:Labcd/iF;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_c
    sget-object v0, Labcd/iF;->v5:Labcd/iF;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Labcd/iF;->DW:Labcd/iF;

    goto/16 :goto_0
.end method

.method public J8()Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/UE;->Zo:Ljava/io/File;

    return-object v0

    :cond_0
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    throw v0
.end method

.method public abstract Mr()V
.end method

.method public QX()Z
    .registers 2

    iget-object v0, p0, Labcd/UE;->Zo:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U2()Labcd/KC;
    .registers 3

    invoke-virtual {p0}, Labcd/UE;->tp()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/KC;->DW(Ljava/io/File;Labcd/pK;)Labcd/KC;

    move-result-object v0

    return-object v0
.end method

.method public VH()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/UE;->FH:Ljava/io/File;

    return-object v0
.end method

.method public Ws()V
    .registers 2

    iget-object v0, p0, Labcd/UE;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public XL()Labcd/KC;
    .registers 4

    new-instance v0, Labcd/TE;

    invoke-direct {v0, p0}, Labcd/TE;-><init>(Labcd/UE;)V

    invoke-virtual {p0}, Labcd/UE;->tp()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    invoke-static {v1, v2, v0}, Labcd/KC;->j6(Ljava/io/File;Labcd/pK;Labcd/FD;)Labcd/KC;

    move-result-object v0

    return-object v0
.end method

.method public abstract Zo()Labcd/jF;
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/UE;->FH:Ljava/io/File;

    const-string v2, "MERGE_MSG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Labcd/zK;->j6(Ljava/io/File;I)V

    goto :goto_0
.end method

.method public a8()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "MERGE_MSG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Labcd/IK;->j6([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    throw v0
.end method

.method public aM()Labcd/EE;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->Hw()Labcd/EE;

    move-result-object v0

    return-object v0
.end method

.method public gn()Labcd/pK;
    .registers 2

    iget-object v0, p0, Labcd/UE;->Hw:Labcd/pK;

    return-object v0
.end method

.method public j3()Labcd/IE;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/YD;I)Labcd/FE;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/xE;->j6(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/ME;)Labcd/ME;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Labcd/ME;)Labcd/ME;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)Labcd/ME;
    .registers 3

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Z)Labcd/RE;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/OE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    return-object v0
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Labcd/UE;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/UE;->FH()V

    :cond_0
    return-void
.end method

.method public j6(Labcd/KD;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKD",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Labcd/KD;->j6(Labcd/UE;)V

    iget-object v0, p0, Labcd/UE;->v5:Labcd/HD;

    invoke-virtual {v0, p1}, Labcd/HD;->j6(Labcd/KD;)V

    sget-object v0, Labcd/UE;->j6:Labcd/HD;

    invoke-virtual {v0, p1}, Labcd/HD;->j6(Labcd/KD;)V

    return-void
.end method

.method public j6(Labcd/yE;)V
    .registers 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const-string v1, "CHERRY_PICK_HEAD"

    invoke-direct {p0, v0, v1}, Labcd/UE;->j6(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MERGE_HEAD"

    invoke-direct {p0, p1, v0}, Labcd/UE;->j6(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public abstract j6(Z)V
.end method

.method public j6(Labcd/YD;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/xE;->j6(Labcd/YD;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lg()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "MERGE_HEAD"

    invoke-direct {p0, v0}, Labcd/UE;->VH(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v2, v0}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x28

    invoke-static {v2, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    goto :goto_1

    :cond_2
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Repository["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public tp()Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/UE;->VH:Ljava/io/File;

    return-object v0

    :cond_0
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "HEAD"

    invoke-virtual {p0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v5(Ljava/lang/String;)Labcd/RE;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Labcd/OE;->DW(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public abstract we()Labcd/OE;
.end method
