.class public Labcd/tB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/tB$a;,
        Labcd/tB$b;,
        Labcd/tB$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Labcd/AB;",
        ">;"
    }
.end annotation


# static fields
.field private static FH:[I

.field private static Hw:[I

.field private static Zo:[I

.field private static v5:[I


# instance fields
.field private final EQ:Ljava/io/File;

.field private VH:Labcd/tB$b;

.field private gn:Labcd/dG;

.field private final tp:Labcd/qG;

.field private u7:Labcd/LE;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    sget-object v0, Labcd/tB$b;->j6:Labcd/tB$b;

    iput-object v0, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iput-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object p1

    const-string v1, "rebase-merge"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    return-void
.end method

.method private EQ()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/tB$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v2, "git-rebase-todo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    array-length v4, v0

    if-lt v3, v4, :cond_18

    return-object v1

    :cond_18
    invoke-static {v0, v3}, Labcd/IK;->Zo([BI)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1f
    const/4 v8, 0x3

    if-ge v6, v8, :cond_82

    if-lt v7, v4, :cond_25

    goto :goto_82

    :cond_25
    const/16 v9, 0x20

    const/4 v10, 0x1

    if-eqz v6, :cond_59

    if-eq v6, v10, :cond_43

    const/4 v8, 0x2

    if-eq v6, v8, :cond_30

    goto :goto_80

    :cond_30
    if-nez v5, :cond_33

    goto :goto_80

    :cond_33
    sub-int v7, v4, v3

    new-array v8, v7, [B

    iput-object v8, v5, Labcd/tB$c;->FH:[B

    iget-object v8, v5, Labcd/tB$c;->FH:[B

    invoke-static {v0, v3, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto :goto_80

    :cond_43
    if-nez v5, :cond_46

    goto :goto_80

    :cond_46
    invoke-static {v0, v3, v9}, Labcd/IK;->j6([BIC)I

    move-result v7

    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v3

    sub-int/2addr v9, v10

    invoke-direct {v8, v0, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v8}, Labcd/WD;->j6(Ljava/lang/String;)Labcd/WD;

    move-result-object v3

    iput-object v3, v5, Labcd/tB$c;->DW:Labcd/WD;

    goto :goto_7f

    :cond_59
    invoke-static {v0, v3, v9}, Labcd/IK;->j6([BIC)I

    move-result v7

    new-instance v9, Ljava/lang/String;

    sub-int v11, v7, v3

    sub-int/2addr v11, v10

    invoke-direct {v9, v0, v3, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v11, 0x23

    if-ne v3, v11, :cond_70

    move v3, v7

    const/4 v6, 0x3

    goto :goto_80

    :cond_70
    invoke-static {v9}, Labcd/tB$a;->j6(Ljava/lang/String;)Labcd/tB$a;

    move-result-object v3

    if-eqz v3, :cond_7f

    new-instance v5, Labcd/tB$c;

    invoke-static {v9}, Labcd/tB$a;->j6(Ljava/lang/String;)Labcd/tB$a;

    move-result-object v3

    invoke-direct {v5, v3}, Labcd/tB$c;-><init>(Labcd/tB$a;)V

    :cond_7f
    :goto_7f
    move v3, v7

    :goto_80
    add-int/2addr v6, v10

    goto :goto_1f

    :cond_82
    :goto_82
    move v3, v4

    goto :goto_14
.end method

.method private FH(Labcd/dG;)Z
    .registers 9

    const-string v0, "HEAD"

    :try_start_2
    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    new-instance v2, Labcd/NC;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v4

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v5

    invoke-virtual {p1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v0, v3}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {v0, p1}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object p1

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_56

    const/4 v0, 0x5

    if-eq p1, v0, :cond_56

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4e

    goto :goto_56

    :cond_4e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not rewind to upstream commit"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_56
    .catchall {:try_start_2 .. :try_end_56} :catchall_61

    :cond_56
    :goto_56
    iget-object p1, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->EQ()V

    iget-object p1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {p1}, Labcd/LE;->j6()V

    return v3

    :catchall_61
    move-exception p1

    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    throw p1
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/tB;->Hw:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/WA$a;->values()[Labcd/WA$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/WA$a;->FH:Labcd/WA$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/WA$a;->DW:Labcd/WA$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/WA$a;->j6:Labcd/WA$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    sput-object v0, Labcd/tB;->Hw:[I

    return-object v0
.end method

.method private Hw(Labcd/dG;)Labcd/AB;
    .registers 6

    invoke-virtual {p1}, Labcd/dG;->Mr()Labcd/KE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/tB;->j6(Labcd/KE;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v2, "author-script"

    invoke-direct {p0, v1, v2, v0}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "message"

    invoke-virtual {p1}, Labcd/dG;->a8()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/iC;

    invoke-direct {v1, v0}, Labcd/iC;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1, v2}, Labcd/iC;->j6(Labcd/UE;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Labcd/iC;->j6(Labcd/YD;Labcd/YD;)V

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "patch"

    invoke-direct {p0, v1, v0, v2}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/IE;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v1

    invoke-virtual {v1}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopped-sha"

    invoke-direct {p0, v0, v2, v1}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Labcd/yE;)V

    new-instance v0, Labcd/AB;

    invoke-direct {v0, p1}, Labcd/AB;-><init>(Labcd/dG;)V

    return-object v0
.end method

.method static synthetic Hw()[I
    .registers 3

    sget-object v0, Labcd/tB;->FH:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/tB$b;->values()[Labcd/tB$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/tB$b;->Hw:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/tB$b;->DW:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/tB$b;->FH:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    sput-object v0, Labcd/tB;->FH:[I

    return-object v0
.end method

.method private VH()V
    .registers 6

    iget-object v0, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3b

    invoke-static {}, Labcd/tB;->Zo()[I

    move-result-object v0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1d

    return-void

    :cond_1d
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wrongRepositoryState:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-static {}, Labcd/tB;->Zo()[I

    move-result-object v0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    if-eqz v0, :cond_53

    return-void

    :cond_53
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->missingRequiredParameter:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "upstream"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wrongRepositoryState:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic Zo()[I
    .registers 3

    sget-object v0, Labcd/tB;->Zo:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/iF;->values()[Labcd/iF;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/iF;->u7:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v1

    :goto_18
    :try_start_18
    sget-object v1, Labcd/iF;->j6:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v1

    :goto_23
    :try_start_23
    sget-object v1, Labcd/iF;->we:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v1

    :goto_2f
    :try_start_2f
    sget-object v1, Labcd/iF;->v5:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception v1

    :goto_3a
    :try_start_3a
    sget-object v1, Labcd/iF;->Zo:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v1

    :goto_45
    :try_start_45
    sget-object v1, Labcd/iF;->FH:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception v1

    :goto_50
    :try_start_50
    sget-object v1, Labcd/iF;->Hw:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v1

    :goto_5b
    :try_start_5b
    sget-object v1, Labcd/iF;->VH:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v1

    :goto_66
    :try_start_66
    sget-object v1, Labcd/iF;->EQ:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v1

    :goto_72
    :try_start_72
    sget-object v1, Labcd/iF;->tp:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v1

    :goto_7e
    :try_start_7e
    sget-object v1, Labcd/iF;->gn:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_89

    goto :goto_8a

    :catch_89
    move-exception v1

    :goto_8a
    :try_start_8a
    sget-object v1, Labcd/iF;->DW:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_93} :catch_94

    goto :goto_95

    :catch_94
    move-exception v1

    :goto_95
    sput-object v0, Labcd/tB;->Zo:[I

    return-object v0
.end method

.method private gn()Labcd/dG;
    .registers 6

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD^{tree}"

    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v1

    :try_start_10
    new-instance v2, Labcd/NC;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v2, v3, v1, v0}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v2}, Labcd/NC;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_4c

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x3

    invoke-static {v3, v2}, Labcd/zK;->j6(Ljava/io/File;I)V
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_66

    goto :goto_29

    :cond_4c
    :goto_4c
    invoke-virtual {v1}, Labcd/KC;->tp()V

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_66
    move-exception v0

    invoke-virtual {v1}, Labcd/KC;->tp()V

    throw v0

    :cond_6b
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotRebaseWithoutCurrentHead:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :goto_77
    throw v0

    :goto_78
    goto :goto_77
.end method

.method private j6(Labcd/AB;)Labcd/AB;
    .registers 10

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    const-string v1, "ORIG_HEAD"

    invoke-direct {p0, v0, v1}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->abortingRebase:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {p1}, Labcd/AB;->j6()Labcd/AB$a;

    move-result-object v1

    sget-object v2, Labcd/AB$a;->Hw:Labcd/AB$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_e3

    const-string v2, "HEAD"

    if-eqz v1, :cond_5d

    :try_start_3b
    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4, v2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    new-instance v4, Labcd/NC;

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    iget-object v7, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v7}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v7

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    invoke-direct {v4, v6, v1, v7, v0}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    goto :goto_6e

    :cond_5d
    new-instance v4, Labcd/NC;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v6}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v6

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    invoke-direct {v4, v1, v6, v0}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V

    :goto_6e
    invoke-virtual {v4, v5}, Labcd/NC;->j6(Z)V

    invoke-virtual {v4}, Labcd/NC;->j6()Z

    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V
    :try_end_79
    .catchall {:try_start_3b .. :try_end_79} :catchall_e3

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    :try_start_7e
    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "head-name"

    invoke-direct {p0, v0, v1}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refs/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->resettingHead:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v4, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1, v2, v5}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    move-result-object v0

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_cb

    const/4 v1, 0x5

    if-eq v0, v1, :cond_cb

    const/4 v1, 0x6

    if-ne v0, v1, :cond_bf

    goto :goto_cb

    :cond_bf
    new-instance p1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->abortingRebaseFailed:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cb
    :goto_cb
    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v0, v3}, Labcd/zK;->j6(Ljava/io/File;I)V

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Labcd/yE;)V
    :try_end_d6
    .catchall {:try_start_7e .. :try_end_d6} :catchall_dc

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    return-object p1

    :catchall_dc
    move-exception p1

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    throw p1

    :catchall_e3
    move-exception p1

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    throw p1
.end method

.method private j6(Ljava/lang/String;Labcd/dG;Labcd/dG;)Labcd/dG;
    .registers 10

    invoke-virtual {p3}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-lt v3, v1, :cond_98

    if-nez v4, :cond_e

    const/4 p1, 0x0

    return-object p1

    :cond_e
    new-instance v0, Labcd/QA;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/QA;-><init>(Labcd/UE;)V

    :try_start_15
    invoke-virtual {p3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QA;->DW(Ljava/lang/String;)Labcd/QA;

    invoke-virtual {v0}, Labcd/QA;->call()Labcd/ME;

    const-string v0, "refs/heads/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, p1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object p1

    invoke-virtual {p1, p2}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {p1, p3}, Labcd/RE;->DW(Labcd/YD;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fast-foward from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    iget-object p2, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {p1, p2}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;

    move-result-object p1

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_76

    const/4 p2, 0x5

    if-eq p1, p2, :cond_76

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6e

    goto :goto_76

    :cond_6e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not fast-forward"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_76
    .catch Labcd/YB; {:try_start_15 .. :try_end_76} :catch_8d
    .catch Labcd/ZB; {:try_start_15 .. :try_end_76} :catch_82
    .catch Labcd/QB; {:try_start_15 .. :try_end_76} :catch_77

    :cond_76
    :goto_76
    return-object p3

    :catch_77
    move-exception p1

    new-instance p2, Labcd/SB;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_82
    move-exception p1

    new-instance p2, Labcd/SB;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_8d
    move-exception p1

    new-instance p2, Labcd/SB;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_98
    aget-object v5, v0, v3

    invoke-virtual {v5, p2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v5

    if-eqz v5, :cond_a1

    const/4 v4, 0x1

    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object p1

    array-length p2, p1

    :goto_a
    if-lez p2, :cond_18

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p1, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_18
    :goto_18
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(I)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v4, "git-rebase-todo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v5, "done"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_30
    :try_start_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, p1, :cond_38

    goto :goto_3e

    :cond_38
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_af

    :goto_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_da

    if-nez p1, :cond_ab

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_a6

    if-nez v2, :cond_99

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_98

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_93

    if-nez v1, :cond_86

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_98

    :cond_86
    :try_start_86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_93

    goto :goto_7c

    :catchall_93
    move-exception v0

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    throw v0

    :cond_98
    :goto_98
    return-void

    :cond_99
    :try_start_99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_a6

    goto :goto_5a

    :catchall_a6
    move-exception v0

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    throw v0

    :cond_ab
    :try_start_ab
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_af
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_ba

    goto/16 :goto_30

    :cond_ba
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_cd

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Labcd/tB$a;->j6(Ljava/lang/String;)Labcd/tB$a;

    move-result-object v9

    if-eqz v9, :cond_cd

    goto :goto_ce

    :cond_cd
    const/4 v6, 0x0

    :goto_ce
    if-eqz v6, :cond_d5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :cond_d5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d8
    .catchall {:try_start_ab .. :try_end_d8} :catchall_da

    goto/16 :goto_30

    :catchall_da
    move-exception p1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_e0

    :goto_df
    throw p1

    :goto_e0
    goto :goto_df
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_a
    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_1c
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method

.method private j6(Ljava/lang/String;Labcd/dG;)V
    .registers 8

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, p1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object p2

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-string v0, "Updating HEAD failed"

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_31

    if-eq p2, v2, :cond_31

    if-ne p2, v1, :cond_2b

    goto :goto_31

    :cond_2b
    new-instance p1, Labcd/SB;

    invoke-direct {p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    :goto_31
    iget-object p2, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v4, "HEAD"

    invoke-virtual {p2, v4}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object p2

    invoke-virtual {p2, p1}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    move-result-object p1

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v3, :cond_54

    if-eq p1, v2, :cond_54

    if-ne p1, v1, :cond_4e

    goto :goto_54

    :cond_4e
    new-instance p1, Labcd/SB;

    invoke-direct {p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    :goto_54
    return-void
.end method

.method private tp()Labcd/AB;
    .registers 12

    const-string v0, " "

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1fa

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    if-eqz v5, :cond_1fa

    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v5

    invoke-interface {v5}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_25

    :cond_23
    const-string v5, "detached HEAD"

    :goto_25
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_1e6

    iget-object v2, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v2, v1}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v2

    iget-object v6, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v7, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v7}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v6, v7}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v6

    iget-object v7, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v7, v6, v2}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v7

    if-eqz v7, :cond_47

    sget-object v0, Labcd/AB;->FH:Labcd/AB;

    return-object v0

    :cond_47
    iget-object v7, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v7, v2, v6}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v6

    if-eqz v6, :cond_7a

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->resettingHead:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v3}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-direct {p0, v0}, Labcd/tB;->FH(Labcd/dG;)Z

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-direct {p0, v5, v0}, Labcd/tB;->j6(Ljava/lang/String;Labcd/dG;)V

    sget-object v0, Labcd/AB;->Hw:Labcd/AB;

    return-object v0

    :cond_7a
    iget-object v6, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jgit/JGitText;->obtainingCommitsForCherryPick:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Labcd/LE;->j6(Ljava/lang/String;I)V

    new-instance v6, Labcd/cB;

    iget-object v7, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v6, v7}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v6}, Labcd/cB;->EQ()Labcd/hB;

    move-result-object v6

    iget-object v7, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v6, v7, v2}, Labcd/hB;->j6(Labcd/YD;Labcd/YD;)Labcd/hB;

    invoke-virtual {v6}, Labcd/hB;->call()Ljava/lang/Iterable;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1b2

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v2}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v2

    const-string v7, "ORIG_HEAD"

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v7, v8}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v7, "head"

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v7, v8}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v7, "head-name"

    invoke-direct {p0, v2, v7, v5}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    iget-object v5, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    const-string v7, "onto"

    invoke-direct {p0, v2, v7, v5}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v5, "interactive"

    const-string v7, ""

    invoke-direct {p0, v2, v5, v7}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v10, "git-rebase-todo"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "# Created by EGit: rebasing "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v7}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onto "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    :try_start_127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v5}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_136
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_13a
    .catchall {:try_start_127 .. :try_end_13a} :catchall_1ad

    if-nez v7, :cond_178

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->rewinding:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v5, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v5}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Labcd/LE;->j6(Ljava/lang/String;I)V

    :try_start_15d
    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-direct {p0, v0}, Labcd/tB;->FH(Labcd/dG;)Z

    move-result v0
    :try_end_163
    .catchall {:try_start_15d .. :try_end_163} :catchall_171

    if-nez v0, :cond_16a

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v0, v3}, Labcd/zK;->j6(Ljava/io/File;I)V

    :cond_16a
    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    const/4 v0, 0x0

    return-object v0

    :catchall_171
    move-exception v0

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v1, v3}, Labcd/zK;->j6(Ljava/io/File;I)V

    throw v0

    :cond_178
    :try_start_178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/dG;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v8, Labcd/tB$a;->j6:Labcd/tB$a;

    invoke-virtual {v8}, Labcd/tB$a;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Labcd/IE;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v8

    invoke-virtual {v8}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1ac
    .catchall {:try_start_178 .. :try_end_1ac} :catchall_1ad

    goto :goto_136

    :catchall_1ad
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    throw v0

    :cond_1b2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/dG;

    invoke-virtual {v7}, Labcd/dG;->lg()I

    move-result v8

    if-ne v8, v3, :cond_1c3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a2

    :cond_1c3
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->canOnlyCherryPickCommitsWithOneParent:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v7}, Labcd/dG;->lg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e6
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fa
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    goto :goto_20f

    :goto_20e
    throw v0

    :goto_20f
    goto :goto_20e
.end method

.method private u7()Labcd/dG;
    .registers 4

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KC;->Zo()Z

    move-result v1

    if-nez v1, :cond_6d

    new-instance v1, Labcd/YJ;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v2}, Labcd/YJ;-><init>(Labcd/UE;)V

    invoke-virtual {v1}, Labcd/YJ;->J8()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/YJ;->j6(Z)V

    new-instance v2, Labcd/RC;

    invoke-direct {v2, v0}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v1, v2}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD^{tree}"

    invoke-virtual {v0, v2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/YD;)I

    sget-object v0, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {v1}, Labcd/YJ;->EQ()Z

    move-result v0

    invoke-virtual {v1}, Labcd/YJ;->J0()V

    if-eqz v0, :cond_5f

    new-instance v0, Labcd/cB;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v0}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v0

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v2, "message"

    invoke-direct {p0, v1, v2}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ZA;->j6(Ljava/lang/String;)Labcd/ZA;

    invoke-direct {p0}, Labcd/tB;->we()Labcd/KE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ZA;->j6(Labcd/KE;)Labcd/ZA;

    invoke-virtual {v0}, Labcd/ZA;->call()Labcd/dG;

    move-result-object v0

    return-object v0

    :cond_5f
    const/4 v0, 0x0

    return-object v0

    :cond_61
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotRebaseWithoutCurrentHead:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance v0, Labcd/_B;

    invoke-direct {v0}, Labcd/_B;-><init>()V

    throw v0
.end method

.method static synthetic v5()[I
    .registers 3

    sget-object v0, Labcd/tB;->v5:[I

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
    sput-object v0, Labcd/tB;->v5:[I

    return-object v0
.end method

.method private we()Labcd/KE;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v2, "author-script"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_9
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_d} :catch_12

    invoke-virtual {p0, v0}, Labcd/tB;->j6([B)Labcd/KE;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public DW(Labcd/dG;)Labcd/dG;
    .registers 7

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_51

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v1, v4}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    iget-object v2, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v2, p1, v1}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object p1

    :cond_27
    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_36
    const-string v0, "detached HEAD"

    :goto_38
    invoke-direct {p0, v0, v1, p1}, Labcd/tB;->j6(Ljava/lang/String;Labcd/dG;Labcd/dG;)Labcd/dG;

    move-result-object p1

    return-object p1

    :cond_3d
    new-instance p1, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    new-instance p1, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public call()Labcd/AB;
    .registers 13

    invoke-virtual {p0}, Labcd/dB;->j6()V

    invoke-direct {p0}, Labcd/tB;->VH()V

    :try_start_6
    invoke-static {}, Labcd/tB;->Hw()[I

    move-result-object v0

    iget-object v1, p0, Labcd/tB;->VH:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_16a

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_47

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_30

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1f

    goto :goto_4e

    :cond_1f
    :try_start_1f
    sget-object v0, Labcd/AB;->DW:Labcd/AB;

    invoke-direct {p0, v0}, Labcd/tB;->j6(Labcd/AB;)Labcd/AB;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception v0

    :try_start_26
    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_30
    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v4, "onto"

    invoke-direct {p0, v0, v4}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iput-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    goto :goto_4e

    :cond_47
    invoke-direct {p0}, Labcd/tB;->tp()Labcd/AB;

    move-result-object v0

    if-eqz v0, :cond_4e

    return-object v0

    :cond_4e
    :goto_4e
    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5c

    sget-object v0, Labcd/AB;->DW:Labcd/AB;

    invoke-direct {p0, v0}, Labcd/tB;->j6(Labcd/AB;)Labcd/AB;

    return-object v0

    :cond_5c
    iget-object v0, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v4, Labcd/tB$b;->DW:Labcd/tB$b;

    if-ne v0, v4, :cond_67

    invoke-direct {p0}, Labcd/tB;->u7()Labcd/dG;

    move-result-object v0

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    iget-object v4, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v5, Labcd/tB$b;->FH:Labcd/tB$b;

    if-ne v4, v5, :cond_72

    invoke-direct {p0}, Labcd/tB;->gn()Labcd/dG;

    move-result-object v0

    :cond_72
    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v4

    invoke-direct {p0}, Labcd/tB;->EQ()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a5

    if-eqz v0, :cond_a2

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v2, "head-name"

    invoke-direct {p0, v1, v2}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/tB;->j6(Ljava/lang/String;Labcd/dG;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v0, v3}, Labcd/zK;->j6(Ljava/io/File;I)V

    if-eqz v7, :cond_9f

    sget-object v0, Labcd/AB;->Hw:Labcd/AB;

    return-object v0

    :cond_9f
    sget-object v0, Labcd/AB;->j6:Labcd/AB;

    return-object v0

    :cond_a2
    sget-object v0, Labcd/AB;->Hw:Labcd/AB;

    return-object v0

    :cond_a5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tB$c;

    invoke-direct {p0, v3}, Labcd/tB;->j6(I)V

    iget-object v0, v0, Labcd/tB$c;->DW:Labcd/WD;

    invoke-virtual {v4, v0}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    if-ne v7, v3, :cond_162

    iget-object v7, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YD;

    invoke-virtual {v7, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iget-object v7, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v7}, Labcd/LE;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_d8

    new-instance v1, Labcd/AB;

    invoke-direct {v1, v0}, Labcd/AB;-><init>(Labcd/dG;)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_d7} :catch_16a

    return-object v1

    :cond_d8
    :try_start_d8
    iget-object v7, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jgit/JGitText;->applyingCommit:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Labcd/tB;->DW(Labcd/dG;)Labcd/dG;

    move-result-object v7

    if-eqz v7, :cond_f7

    const/4 v8, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v8, 0x0

    :goto_f8
    if-nez v8, :cond_152

    new-instance v9, Labcd/cB;

    iget-object v10, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v9, v10}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v9}, Labcd/cB;->Zo()Labcd/SA;

    move-result-object v9

    invoke-virtual {v9, v0}, Labcd/SA;->j6(Labcd/YD;)Labcd/SA;

    invoke-virtual {v9}, Labcd/SA;->call()Labcd/WA;

    move-result-object v9

    invoke-static {}, Labcd/tB;->FH()[I

    move-result-object v10

    invoke-virtual {v9}, Labcd/WA;->FH()Labcd/WA$a;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v3, :cond_14d

    if-eq v10, v2, :cond_12b

    if-eq v10, v1, :cond_121

    goto :goto_152

    :cond_121
    invoke-direct {p0, v0}, Labcd/tB;->Hw(Labcd/dG;)Labcd/AB;

    move-result-object v0
    :try_end_125
    .catchall {:try_start_d8 .. :try_end_125} :catchall_15b

    :try_start_125
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12a} :catch_16a

    return-object v0

    :cond_12b
    :try_start_12b
    iget-object v1, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v2, Labcd/tB$b;->j6:Labcd/tB$b;

    if-ne v1, v2, :cond_143

    new-instance v0, Labcd/AB;

    invoke-virtual {v9}, Labcd/WA;->j6()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/AB;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Labcd/tB;->j6(Labcd/AB;)Labcd/AB;
    :try_end_13d
    .catchall {:try_start_12b .. :try_end_13d} :catchall_15b

    :try_start_13d
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_142} :catch_16a

    return-object v0

    :cond_143
    :try_start_143
    invoke-direct {p0, v0}, Labcd/tB;->Hw(Labcd/dG;)Labcd/AB;

    move-result-object v0
    :try_end_147
    .catchall {:try_start_143 .. :try_end_147} :catchall_15b

    :try_start_147
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14c} :catch_16a

    return-object v0

    :cond_14d
    :try_start_14d
    invoke-virtual {v9}, Labcd/WA;->DW()Labcd/dG;

    move-result-object v0
    :try_end_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_15b

    goto :goto_153

    :cond_152
    :goto_152
    move-object v0, v7

    :goto_153
    :try_start_153
    iget-object v7, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v7}, Labcd/LE;->j6()V

    move v7, v8

    goto/16 :goto_82

    :catchall_15b
    move-exception v0

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    throw v0

    :cond_162
    new-instance v0, Labcd/SB;

    const-string v1, "Could not resolve uniquely the abbreviated object ID"

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_16a} :catch_16a

    :catch_16a
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_176

    :goto_175
    throw v1

    :goto_176
    goto :goto_175
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/tB;->call()Labcd/AB;

    move-result-object v0

    return-object v0
.end method

.method j6([B)Labcd/KE;
    .registers 12

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    array-length v4, p1

    if-lt v3, v4, :cond_10

    goto :goto_1f

    :cond_10
    invoke-static {p1, v3}, Labcd/IK;->Zo([BI)I

    move-result v4

    if-ne v4, v3, :cond_17

    goto :goto_1f

    :cond_17
    const/16 v5, 0x3d

    invoke-static {p1, v3, v5}, Labcd/IK;->j6([BIC)I

    move-result v5

    if-ne v5, v4, :cond_82

    :goto_1f
    const-string p1, "GIT_AUTHOR_NAME"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const-string p1, "GIT_AUTHOR_EMAIL"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    const-string p1, "GIT_AUTHOR_DATE"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_5b

    const/4 v0, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v0, -0x1

    :goto_5c
    const/4 v2, 0x3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x5

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v4, :cond_81

    if-eqz v5, :cond_81

    new-instance v1, Labcd/KE;

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, p1

    mul-int v8, v3, v0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_81
    return-object v1

    :cond_82
    add-int/lit8 v6, v5, -0x1

    invoke-static {p1, v3, v6}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v4, -0x2

    invoke-static {p1, v5, v6}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_c
.end method

.method public j6(Labcd/LE;)Labcd/tB;
    .registers 2

    iput-object p1, p0, Labcd/tB;->u7:Labcd/LE;

    return-object p0
.end method

.method public j6(Labcd/YD;)Labcd/tB;
    .registers 7

    :try_start_0
    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iput-object v0, p0, Labcd/tB;->gn:Labcd/dG;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->couldNotReadObjectWhileParsingCommit:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Labcd/dG;)Labcd/tB;
    .registers 2

    iput-object p1, p0, Labcd/tB;->gn:Labcd/dG;

    return-object p0
.end method

.method public j6(Labcd/tB$b;)Labcd/tB;
    .registers 2

    iput-object p1, p0, Labcd/tB;->VH:Labcd/tB$b;

    return-object p0
.end method

.method j6(Labcd/KE;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GIT_AUTHOR_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GIT_AUTHOR_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GIT_AUTHOR_DATE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
