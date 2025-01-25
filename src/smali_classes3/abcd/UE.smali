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

    move-result-object p1

    iput-object p1, p0, Labcd/UE;->VH:Ljava/io/File;

    return-void
.end method

.method private DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;
    .registers 15

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_8
    array-length v5, v0

    if-lt v3, v5, :cond_17

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    goto :goto_16

    :cond_12
    invoke-direct {p0, p2}, Labcd/UE;->u7(Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    :goto_16
    return-object p1

    :cond_17
    aget-char v5, v0, v3

    const/16 v6, 0x3a

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1cf

    const/16 v6, 0x40

    const/16 v8, 0x7d

    if-eq v5, v6, :cond_199

    const/16 v6, 0x5e

    const-string v9, "commit"

    if-eq v5, v6, :cond_9d

    const/16 v6, 0x7e

    if-eq v5, v6, :cond_38

    if-nez v4, :cond_32

    goto/16 :goto_1c9

    :cond_32
    new-instance p1, Labcd/rD;

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    if-nez v4, :cond_46

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v4}, Labcd/UE;->j6(Labcd/qG;Ljava/lang/String;)Labcd/iG;

    move-result-object v4

    if-nez v4, :cond_46

    return-object v1

    :cond_46
    invoke-virtual {p1, v4}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v4

    instance-of v5, v4, Labcd/dG;

    if-eqz v5, :cond_97

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    :goto_51
    array-length v8, v0

    if-lt v6, v8, :cond_55

    goto :goto_5d

    :cond_55
    aget-char v8, v0, v6

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_94

    :goto_5d
    sub-int v3, v6, v3

    if-le v3, v7, :cond_7a

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v8, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    :try_start_68
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_6c} :catch_6d

    goto :goto_7b

    :catch_6d
    move-exception p1

    new-instance p1, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidAncestryLength:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Labcd/rD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_7a
    const/4 v3, 0x1

    :goto_7b
    if-gtz v3, :cond_7f

    goto/16 :goto_1c7

    :cond_7f
    check-cast v4, Labcd/dG;

    invoke-virtual {v4}, Labcd/dG;->lg()I

    move-result v5

    if-nez v5, :cond_8a

    move-object v4, v1

    goto/16 :goto_1c7

    :cond_8a
    invoke-virtual {v4, v2}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v4

    invoke-virtual {p1, v4}, Labcd/qG;->DW(Labcd/iG;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_7b

    :cond_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_97
    new-instance p1, Labcd/ZC;

    invoke-direct {p1, v4, v9}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1

    :cond_9d
    if-nez v4, :cond_ab

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v4}, Labcd/UE;->j6(Labcd/qG;Ljava/lang/String;)Labcd/iG;

    move-result-object v4

    if-nez v4, :cond_ab

    return-object v1

    :cond_ab
    add-int/lit8 v5, v3, 0x1

    array-length v6, v0

    if-ge v5, v6, :cond_17c

    aget-char v6, v0, v5

    const/16 v10, 0x7b

    if-eq v6, v10, :cond_117

    packed-switch v6, :pswitch_data_21a

    invoke-virtual {p1, v4}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v4

    instance-of v5, v4, Labcd/dG;

    if-eqz v5, :cond_111

    check-cast v4, Labcd/dG;

    invoke-virtual {v4}, Labcd/dG;->lg()I

    move-result v5

    if-nez v5, :cond_18e

    goto/16 :goto_18c

    :pswitch_cb  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-virtual {p1, v4}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v6

    move v4, v5

    :goto_d0
    array-length v8, v0

    if-lt v4, v8, :cond_d4

    goto :goto_dc

    :cond_d4
    aget-char v8, v0, v4

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_10e

    :goto_dc
    new-instance v8, Ljava/lang/String;

    sub-int v3, v4, v3

    sub-int/2addr v3, v7

    invoke-direct {v8, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    :try_start_e4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_e8} :catch_101

    if-eqz v3, :cond_f9

    invoke-virtual {v6}, Labcd/dG;->lg()I

    move-result v5

    if-le v3, v5, :cond_f2

    move-object v3, v1

    goto :goto_fa

    :cond_f2
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v3

    goto :goto_fa

    :cond_f9
    move-object v3, v6

    :goto_fa
    add-int/lit8 v4, v4, -0x1

    move v11, v4

    move-object v4, v3

    move v3, v11

    goto/16 :goto_1c9

    :catch_101
    move-exception p1

    new-instance p1, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidCommitParentNumber:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Labcd/rD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_10e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    :cond_111
    new-instance p1, Labcd/ZC;

    invoke-direct {p1, v4, v9}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1

    :cond_117
    add-int/lit8 v5, v3, 0x2

    move v6, v5

    :goto_11a
    array-length v10, v0

    if-lt v6, v10, :cond_11f

    move-object v8, v1

    goto :goto_12c

    :cond_11f
    aget-char v10, v0, v6

    if-ne v10, v8, :cond_179

    new-instance v8, Ljava/lang/String;

    sub-int v3, v6, v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v8, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_12c
    if-eqz v8, :cond_173

    const-string v3, "tree"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    invoke-virtual {p1, v4}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v3

    goto/16 :goto_1c4

    :cond_13c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-virtual {p1, v4}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v3

    goto/16 :goto_1c4

    :cond_148
    const-string v3, "blob"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    invoke-virtual {p1, v4}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v4

    instance-of v5, v4, Labcd/cG;

    if-eqz v5, :cond_15a

    goto/16 :goto_1c5

    :cond_15a
    new-instance p1, Labcd/ZC;

    invoke-direct {p1, v4, v3}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1

    :cond_160
    const-string v3, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16d

    invoke-virtual {p1, v4}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v3

    goto :goto_1c4

    :cond_16d
    new-instance p1, Labcd/rD;

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_173
    new-instance p1, Labcd/rD;

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_179
    add-int/lit8 v6, v6, 0x1

    goto :goto_11a

    :cond_17c
    invoke-virtual {p1, v4}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v4

    instance-of v5, v4, Labcd/dG;

    if-eqz v5, :cond_193

    check-cast v4, Labcd/dG;

    invoke-virtual {v4}, Labcd/dG;->lg()I

    move-result v5

    if-nez v5, :cond_18e

    :goto_18c
    move-object v4, v1

    goto :goto_1c9

    :cond_18e
    invoke-virtual {v4, v2}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v4

    goto :goto_1c9

    :cond_193
    new-instance p1, Labcd/ZC;

    invoke-direct {p1, v4, v9}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1

    :cond_199
    add-int/lit8 v5, v3, 0x2

    move v6, v5

    :goto_19c
    array-length v9, v0

    if-lt v6, v9, :cond_1a1

    move-object v8, v1

    goto :goto_1ae

    :cond_1a1
    aget-char v9, v0, v6

    if-ne v9, v8, :cond_1cc

    new-instance v8, Ljava/lang/String;

    sub-int v9, v6, v3

    add-int/lit8 v9, v9, -0x2

    invoke-direct {v8, v0, v5, v9}, Ljava/lang/String;-><init>([CII)V

    :goto_1ae
    if-eqz v8, :cond_1c7

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v3

    invoke-virtual {v3, v4}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-nez v3, :cond_1c0

    return-object v1

    :cond_1c0
    invoke-direct {p0, p1, v3, v8}, Labcd/UE;->j6(Labcd/qG;Labcd/ME;Ljava/lang/String;)Labcd/dG;

    move-result-object v3

    :goto_1c4
    move-object v4, v3

    :goto_1c5
    move v3, v6

    goto :goto_1c9

    :cond_1c7
    :goto_1c7
    add-int/lit8 v3, v6, -0x1

    :goto_1c9
    add-int/2addr v3, v7

    goto/16 :goto_8

    :cond_1cc
    add-int/lit8 v6, v6, 0x1

    goto :goto_19c

    :cond_1cf
    if-nez v4, :cond_1ef

    if-nez v3, :cond_1da

    :try_start_1d3
    const-string v4, "HEAD"

    :goto_1d5
    invoke-direct {p0, p1, v4}, Labcd/UE;->DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;

    move-result-object p2

    goto :goto_1e0

    :cond_1da
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_1df
    .catch Labcd/rD; {:try_start_1d3 .. :try_end_1df} :catch_1e8

    goto :goto_1d5

    :goto_1e0
    if-nez p2, :cond_1e3

    return-object v1

    :cond_1e3
    invoke-virtual {p1, p2}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object p2

    goto :goto_1f3

    :catch_1e8
    move-exception p1

    new-instance p1, Labcd/rD;

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1ef
    invoke-virtual {p1, v4}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object p2

    :goto_1f3
    array-length v4, v0

    sub-int/2addr v4, v7

    if-ne v3, v4, :cond_1fc

    invoke-virtual {p2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_1fc
    invoke-virtual {p1}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object p1

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    array-length v6, v0

    sub-int/2addr v6, v3

    sub-int/2addr v6, v7

    invoke-direct {v4, v0, v5, v6}, Ljava/lang/String;-><init>([CII)V

    new-array v0, v7, [Labcd/YD;

    aput-object p2, v0, v2

    invoke-static {p1, v4, v0}, Labcd/YJ;->j6(Labcd/IE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;

    move-result-object p1

    if-eqz p1, :cond_218

    invoke-virtual {p1, v2}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v1

    :cond_218
    return-object v1

    nop

    :pswitch_data_21a
    .packed-switch 0x30
        :pswitch_cb  #00000030
        :pswitch_cb  #00000031
        :pswitch_cb  #00000032
        :pswitch_cb  #00000033
        :pswitch_cb  #00000034
        :pswitch_cb  #00000035
        :pswitch_cb  #00000036
        :pswitch_cb  #00000037
        :pswitch_cb  #00000038
        :pswitch_cb  #00000039
    .end packed-switch
.end method

.method public static DW(Ljava/lang/String;)Z
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, ".lock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_15
    if-lt v3, v0, :cond_1b

    if-le v4, v2, :cond_1a

    return v2

    :cond_1a
    return v1

    :cond_1b
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_24

    return v1

    :cond_24
    const/16 v7, 0x2a

    if-eq v6, v7, :cond_6c

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_6c

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_6c

    const/16 v7, 0x5e

    if-eq v6, v7, :cond_6c

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_63

    const/16 v7, 0x7e

    if-eq v6, v7, :cond_6c

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    if-eq v6, v8, :cond_58

    if-eq v6, v7, :cond_4d

    const/16 v5, 0x5b

    if-eq v6, v5, :cond_6c

    const/16 v5, 0x5c

    if-eq v6, v5, :cond_6c

    goto :goto_68

    :cond_4d
    if-eqz v3, :cond_57

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_54

    goto :goto_57

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_57
    :goto_57
    return v1

    :cond_58
    if-eqz v5, :cond_62

    if-eq v5, v8, :cond_62

    if-eq v5, v7, :cond_62

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_68

    :cond_62
    return v1

    :cond_63
    const/16 v7, 0x40

    if-ne v5, v7, :cond_68

    return v1

    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_15

    :cond_6c
    return v1
.end method

.method public static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "refs/heads/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v0, "refs/tags/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0xa

    goto :goto_a

    :cond_1a
    const-string v0, "refs/remotes/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_28
    return-object p0
.end method

.method private VH(Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_9
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object p1

    array-length v0, p1
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_11

    if-lez v0, :cond_12

    goto :goto_13

    :catch_11
    move-exception p1

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method private gn(Ljava/lang/String;)Labcd/yE;
    .registers 6

    invoke-static {p1}, Labcd/WD;->j6(Ljava/lang/String;)Labcd/WD;

    move-result-object p1

    invoke-virtual {p0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    :try_start_8
    invoke-virtual {v0, p1}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_32

    if-nez v2, :cond_17

    invoke-virtual {v0}, Labcd/IE;->FH()V

    const/4 p1, 0x0

    return-object p1

    :cond_17
    :try_start_17
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yE;
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_32

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return-object p1

    :cond_2c
    :try_start_2c
    new-instance v2, Labcd/UC;

    invoke-direct {v2, p1, v1}, Labcd/UC;-><init>(Labcd/WD;Ljava/util/Collection;)V

    throw v2
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    throw p1
.end method

.method private j6(Labcd/qG;Labcd/ME;Ljava/lang/String;)Labcd/dG;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_53

    if-ltz v2, :cond_3f

    new-instance p3, Labcd/qH;

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, p0, v3}, Labcd/qH;-><init>(Labcd/UE;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Labcd/qH;->j6(I)Labcd/pH;

    move-result-object p3

    if-eqz p3, :cond_20

    invoke-virtual {p3}, Labcd/pH;->DW()Labcd/yE;

    move-result-object p2

    invoke-virtual {p1, p2}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object p1

    return-object p1

    :cond_20
    new-instance p1, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->reflogEntryNotFound:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {p3, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->invalidReflogRevision:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_53
    move-exception p1

    new-instance p1, Labcd/rD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->invalidReflogRevision:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/rD;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Labcd/qG;Ljava/lang/String;)Labcd/iG;
    .registers 3

    invoke-direct {p0, p2}, Labcd/UE;->u7(Ljava/lang/String;)Labcd/yE;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p1, p2}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    if-eqz p1, :cond_37

    new-instance p2, Labcd/XK;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    :try_start_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_32

    if-nez v0, :cond_23

    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_3b

    :cond_23
    :try_start_23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {v0, p2}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_32

    goto :goto_19

    :catchall_32
    move-exception p1

    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    throw p1

    :cond_37
    const/4 p1, 0x4

    invoke-static {v0, p1}, Labcd/zK;->j6(Ljava/io/File;I)V

    :goto_3b
    return-void
.end method

.method private static j6(C)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_19

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_19

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1b

    const/16 v0, 0x46

    if-le p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method private static j6(Ljava/lang/String;I)Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Labcd/UE;->j6(C)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private u7(Ljava/lang/String;)Labcd/yE;
    .registers 5

    invoke-static {p1}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-static {p1}, Labcd/WD;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p1}, Labcd/UE;->gn(Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_25
    const-string v0, "-g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_64

    if-ltz v0, :cond_64

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/UE;->j6(C)Z

    move-result v2

    if-eqz v2, :cond_64

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/UE;->j6(C)Z

    move-result v2

    if-eqz v2, :cond_64

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Labcd/UE;->j6(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/WD;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-direct {p0, p1}, Labcd/UE;->gn(Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_64
    const/4 p1, 0x0

    return-object p1
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
    .registers 3

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p0}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_5
    invoke-direct {p0, v0, p1}, Labcd/UE;->DW(Labcd/qG;Ljava/lang/String;)Labcd/yE;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object p1

    :catchall_d
    move-exception p1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw p1
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
            "Ljava/util/Set<",
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

    if-nez v0, :cond_f5

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_f5

    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    const-string v2, ".dotest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Labcd/iF;->VH:Labcd/iF;

    return-object v0

    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, ".dotest-merge"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Labcd/iF;->EQ:Labcd/iF;

    return-object v0

    :cond_36
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-apply/rebasing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Labcd/iF;->gn:Labcd/iF;

    return-object v0

    :cond_4a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-apply/applying"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Labcd/iF;->u7:Labcd/iF;

    return-object v0

    :cond_5e
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-apply"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Labcd/iF;->VH:Labcd/iF;

    return-object v0

    :cond_72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-merge/interactive"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_86

    sget-object v0, Labcd/iF;->EQ:Labcd/iF;

    return-object v0

    :cond_86
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "rebase-merge"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Labcd/iF;->tp:Labcd/iF;

    return-object v0

    :cond_9a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "MERGE_HEAD"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bc

    :try_start_ab
    invoke-virtual {p0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KC;->Zo()Z

    move-result v0

    if-nez v0, :cond_b9

    sget-object v0, Labcd/iF;->Hw:Labcd/iF;
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b7} :catch_b8

    return-object v0

    :catch_b8
    move-exception v0

    :cond_b9
    sget-object v0, Labcd/iF;->FH:Labcd/iF;

    return-object v0

    :cond_bc
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "BISECT_LOG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d0

    sget-object v0, Labcd/iF;->we:Labcd/iF;

    return-object v0

    :cond_d0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "CHERRY_PICK_HEAD"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f2

    :try_start_e1
    invoke-virtual {p0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KC;->Zo()Z

    move-result v0

    if-nez v0, :cond_ef

    sget-object v0, Labcd/iF;->Zo:Labcd/iF;
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ed} :catch_ee

    return-object v0

    :catch_ee
    move-exception v0

    :cond_ef
    sget-object v0, Labcd/iF;->v5:Labcd/iF;

    return-object v0

    :cond_f2
    sget-object v0, Labcd/iF;->DW:Labcd/iF;

    return-object v0

    :cond_f5
    :goto_f5
    sget-object v0, Labcd/iF;->j6:Labcd/iF;

    return-object v0
.end method

.method public J8()Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Labcd/UE;->Zo:Ljava/io/File;

    return-object v0

    :cond_9
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    throw v0
.end method

.method public abstract Mr()V
.end method

.method public QX()Z
    .registers 2

    iget-object v0, p0, Labcd/UE;->Zo:Ljava/io/File;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
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

    if-eqz p1, :cond_22

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_10
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_26

    :catchall_1d
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :cond_22
    const/4 p1, 0x4

    invoke-static {v0, p1}, Labcd/zK;->j6(Ljava/io/File;I)V

    :goto_26
    return-void
.end method

.method public a8()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    const-string v2, "MERGE_MSG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_17
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Labcd/IK;->j6([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :cond_23
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

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/ME;)Labcd/ME;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Labcd/ME;)Labcd/ME;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    return-object p1
.end method

.method public j6(Ljava/lang/String;)Labcd/ME;
    .registers 3

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Z)Labcd/RE;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/OE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object p1

    return-object p1
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Labcd/UE;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Labcd/UE;->FH()V

    :cond_b
    return-void
.end method

.method public j6(Labcd/KD;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKD<",
            "*>;)V"
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
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const-string v0, "CHERRY_PICK_HEAD"

    invoke-direct {p0, p1, v0}, Labcd/UE;->j6(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    move-result p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method

.method public lg()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v0, "MERGE_HEAD"

    invoke-direct {p0, v0}, Labcd/UE;->VH(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_16
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_1c
    array-length v3, v0

    if-lt v2, v3, :cond_20

    return-object v1

    :cond_20
    invoke-static {v0, v2}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x28

    invoke-static {v0, v2}, Labcd/IK;->Zo([BI)I

    move-result v2

    goto :goto_1c

    :cond_2e
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    goto :goto_35

    :goto_34
    throw v0

    :goto_35
    goto :goto_34
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_f
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

    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Repository["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Labcd/UE;->VH:Ljava/io/File;

    return-object v0

    :cond_9
    new-instance v0, Labcd/iD;

    invoke-direct {v0}, Labcd/iD;-><init>()V

    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 4

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    return-object v1
.end method

.method public v5(Ljava/lang/String;)Labcd/RE;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object p1

    return-object p1
.end method

.method public v5()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
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

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public abstract we()Labcd/OE;
.end method
