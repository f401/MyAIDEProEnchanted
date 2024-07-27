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
        "LdB",
        "<",
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
    .registers 5

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

    move-result-object v1

    const-string v2, "rebase-merge"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    return-void
.end method

.method private EQ()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/tB$c;",
            ">;"
        }
    .end annotation

    const/16 v11, 0x20

    const/4 v7, 0x3

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v3, "git-rebase-todo"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, v9

    if-lt v0, v2, :cond_0

    return-object v10

    :cond_0
    invoke-static {v9, v0}, Labcd/IK;->Zo([BI)I

    move-result v2

    const/4 v3, 0x0

    move v6, v1

    move v4, v1

    :goto_1
    if-ge v6, v7, :cond_1

    if-lt v4, v2, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_7

    const/4 v5, 0x1

    if-eq v6, v5, :cond_5

    const/4 v5, 0x2

    if-eq v6, v5, :cond_3

    move v5, v0

    move v8, v4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v0, v5

    move v4, v8

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    move v5, v0

    move v8, v4

    goto :goto_2

    :cond_4
    sub-int v4, v2, v0

    new-array v5, v4, [B

    iput-object v5, v3, Labcd/tB$c;->FH:[B

    iget-object v5, v3, Labcd/tB$c;->FH:[B

    invoke-static {v9, v0, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v0

    move v8, v2

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    move v5, v0

    move v8, v4

    goto :goto_2

    :cond_6
    invoke-static {v9, v0, v11}, Labcd/IK;->j6([BIC)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    sub-int v8, v4, v0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v9, v0, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5}, Labcd/WD;->j6(Ljava/lang/String;)Labcd/WD;

    move-result-object v0

    iput-object v0, v3, Labcd/tB$c;->DW:Labcd/WD;

    move-object v0, v3

    :goto_3
    move-object v3, v0

    move v5, v4

    move v8, v4

    goto :goto_2

    :cond_7
    invoke-static {v9, v0, v11}, Labcd/IK;->j6([BIC)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    sub-int v8, v4, v0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v9, v0, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x23

    if-ne v0, v8, :cond_8

    move v5, v4

    move v6, v7

    move v8, v4

    goto :goto_2

    :cond_8
    invoke-static {v5}, Labcd/tB$a;->j6(Ljava/lang/String;)Labcd/tB$a;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v0, Labcd/tB$c;

    invoke-static {v5}, Labcd/tB$a;->j6(Ljava/lang/String;)Labcd/tB$a;

    move-result-object v3

    invoke-direct {v0, v3}, Labcd/tB$c;-><init>(Labcd/tB$a;)V

    goto :goto_3

    :cond_9
    move-object v0, v3

    goto :goto_3
.end method

.method private FH(Labcd/dG;)Z
    .registers 9

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    new-instance v1, Labcd/NC;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v3

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v4

    invoke-virtual {p1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/NC;->j6(Z)V

    invoke-virtual {v1}, Labcd/NC;->j6()Z

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {v1, p1}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v1}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v0

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    return v6

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not rewind to upstream commit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    throw v0
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/tB;->Hw:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/WA$a;->values()[Labcd/WA$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/WA$a;->FH:Labcd/WA$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Labcd/WA$a;->DW:Labcd/WA$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Labcd/WA$a;->j6:Labcd/WA$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Labcd/tB;->Hw:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private Hw(Labcd/dG;)Labcd/AB;
    .registers 7

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

    const-string v2, "patch"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "stopped-sha"

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/IE;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v2

    invoke-virtual {v2}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

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

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/tB$b;->values()[Labcd/tB$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/tB$b;->Hw:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Labcd/tB$b;->DW:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Labcd/tB$b;->FH:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Labcd/tB;->FH:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private VH()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    if-eq v0, v1, :cond_2

    invoke-static {}, Labcd/tB;->Zo()[I

    move-result-object v0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wrongRepositoryState:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Labcd/tB;->Zo()[I

    move-result-object v0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    if-nez v0, :cond_0

    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->missingRequiredParameter:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "upstream"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wrongRepositoryState:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic Zo()[I
    .registers 3

    sget-object v0, Labcd/tB;->Zo:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/iF;->values()[Labcd/iF;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/iF;->u7:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Labcd/iF;->j6:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Labcd/iF;->we:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Labcd/iF;->v5:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Labcd/iF;->Zo:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Labcd/iF;->FH:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Labcd/iF;->Hw:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Labcd/iF;->VH:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Labcd/iF;->EQ:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Labcd/iF;->tp:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Labcd/iF;->gn:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Labcd/iF;->DW:Labcd/iF;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Labcd/tB;->Zo:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method private gn()Labcd/dG;
    .registers 6

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD^{tree}"

    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v1

    :try_start_0
    new-instance v2, Labcd/NC;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v2, v3, v1, v0}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Labcd/NC;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
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

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v3, v0}, Labcd/zK;->j6(Ljava/io/File;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/KC;->tp()V

    throw v0

    :cond_3
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotRebaseWithoutCurrentHead:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/AB;)Labcd/AB;
    .registers 7

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

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {p1}, Labcd/AB;->j6()Labcd/AB$a;

    move-result-object v0

    sget-object v2, Labcd/AB$a;->Hw:Labcd/AB$a;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v2

    new-instance v0, Labcd/NC;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v2

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v4

    invoke-virtual {v1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {v0, v3, v2, v4, v1}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/NC;->j6(Z)V

    invoke-virtual {v0}, Labcd/NC;->j6()Z

    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    :try_start_1
    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "head-name"

    invoke-direct {p0, v0, v1}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refs/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->resettingHead:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    move-result-object v0

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labcd/zK;->j6(Ljava/io/File;I)V

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Labcd/yE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    return-object p1

    :cond_1
    :try_start_2
    new-instance v0, Labcd/NC;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v3

    invoke-virtual {v1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->abortingRebaseFailed:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    throw v0
.end method

.method private j6(Ljava/lang/String;Labcd/dG;Labcd/dG;)Labcd/dG;
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p3}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    if-nez v0, :cond_1

    const/4 p3, 0x0

    :cond_0
    return-object p3

    :cond_1
    new-instance v0, Labcd/QA;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/QA;-><init>(Labcd/UE;)V

    :try_start_0
    invoke-virtual {p3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QA;->DW(Ljava/lang/String;)Labcd/QA;

    invoke-virtual {v0}, Labcd/QA;->call()Labcd/ME;

    const-string v0, "refs/heads/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, p1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {v0, p3}, Labcd/RE;->DW(Labcd/YD;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fast-foward from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0, v1}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;

    move-result-object v0

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not fast-forward"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Labcd/YB; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/ZB; {:try_start_0 .. :try_end_0} :catch_2
    .catch Labcd/QB; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    aget-object v1, v3, v2

    invoke-virtual {v1, p2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v1

    array-length v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private j6(I)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v6, "git-rebase-todo"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v7, "done"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v9, "UTF-8"

    invoke-direct {v0, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_4

    :cond_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v0, v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x23

    if-eq v0, v9, :cond_2

    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/tB$a;->j6(Ljava/lang/String;)Labcd/tB$a;

    move-result-object v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    if-eqz v0, :cond_8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    throw v0

    :cond_5
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    throw v0

    :cond_6
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    throw v0

    :cond_7
    :try_start_6
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_5
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method private j6(Ljava/lang/String;Labcd/dG;)V
    .registers 8

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x3

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, p1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v0

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    move-result-object v0

    invoke-static {}, Labcd/tB;->v5()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_3

    :cond_1
    return-void

    :cond_2
    new-instance v0, Labcd/SB;

    const-string v1, "Updating HEAD failed"

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/SB;

    const-string v1, "Updating HEAD failed"

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tp()Labcd/AB;
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0, v2}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iget-object v3, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v4, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v4}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v3, v4}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v3

    iget-object v4, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v4, v3, v0}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Labcd/AB;->FH:Labcd/AB;

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "detached HEAD"

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v4, v0, v3}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->resettingHead:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v4}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-direct {p0, v0}, Labcd/tB;->FH(Labcd/dG;)Z

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-direct {p0, v1, v0}, Labcd/tB;->j6(Ljava/lang/String;Labcd/dG;)V

    sget-object v0, Labcd/AB;->Hw:Labcd/AB;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->obtainingCommitsForCherryPick:Ljava/lang/String;

    invoke-interface {v3, v4, v8}, Labcd/LE;->j6(Ljava/lang/String;I)V

    new-instance v3, Labcd/cB;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v3, v4}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v3}, Labcd/cB;->EQ()Labcd/hB;

    move-result-object v3

    iget-object v4, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v3, v4, v0}, Labcd/hB;->j6(Labcd/YD;Labcd/YD;)Labcd/hB;

    invoke-virtual {v3}, Labcd/hB;->call()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    const-string v4, "ORIG_HEAD"

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v4, "head"

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v4, "head-name"

    invoke-direct {p0, v0, v4, v1}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "onto"

    iget-object v4, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "interactive"

    const-string v4, ""

    invoke-direct {p0, v0, v1, v4}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v7, "git-rebase-todo"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "# Created by EGit: rebasing "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onto "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->rewinding:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-virtual {v3}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Labcd/LE;->j6(Ljava/lang/String;I)V

    :try_start_1
    iget-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    invoke-direct {p0, v0}, Labcd/tB;->FH(Labcd/dG;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v0, v9}, Labcd/zK;->j6(Ljava/io/File;I)V

    :cond_3
    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    invoke-static {v1, v9}, Labcd/zK;->j6(Ljava/io/File;I)V

    throw v0

    :cond_4
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dG;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v5, Labcd/tB$a;->j6:Labcd/tB$a;

    invoke-virtual {v5}, Labcd/tB$a;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Labcd/IE;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v5

    invoke-virtual {v5}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v0

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->lg()I

    move-result v5

    if-ne v5, v9, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->canOnlyCherryPickCommitsWithOneParent:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Labcd/dG;->lg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "HEAD"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "HEAD"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private u7()Labcd/dG;
    .registers 4

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KC;->Zo()Z

    move-result v1

    if-nez v1, :cond_2

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

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/YD;)I

    sget-object v0, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {v1}, Labcd/YJ;->EQ()Z

    move-result v0

    invoke-virtual {v1}, Labcd/YJ;->J0()V

    if-eqz v0, :cond_0

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

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotRebaseWithoutCurrentHead:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Labcd/_B;

    invoke-direct {v0}, Labcd/_B;-><init>()V

    throw v0
.end method

.method static synthetic v5()[I
    .registers 3

    sget-object v0, Labcd/tB;->v5:[I

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
    sput-object v0, Labcd/tB;->v5:[I

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

.method private we()Labcd/KE;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v2, "author-script"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/tB;->j6([B)Labcd/KE;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/dG;)Labcd/dG;
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v2, v1}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    iget-object v2, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v2, p1, v1}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0, v1, p1}, Labcd/tB;->j6(Ljava/lang/String;Labcd/dG;Labcd/dG;)Labcd/dG;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "detached HEAD"

    goto :goto_1

    :cond_2
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "HEAD"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "HEAD"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call()Labcd/AB;
    .registers 13

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Labcd/dB;->j6()V

    invoke-direct {p0}, Labcd/tB;->VH()V

    :try_start_0
    invoke-static {}, Labcd/tB;->Hw()[I

    move-result-object v0

    iget-object v1, p0, Labcd/tB;->VH:Labcd/tB$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v11, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Labcd/AB;->DW:Labcd/AB;

    invoke-direct {p0, v0}, Labcd/tB;->j6(Labcd/AB;)Labcd/AB;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Labcd/AB;->DW:Labcd/AB;

    invoke-direct {p0, v0}, Labcd/tB;->j6(Labcd/AB;)Labcd/AB;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_3
    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v1, "onto"

    invoke-direct {p0, v0, v1}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iput-object v0, p0, Labcd/tB;->gn:Labcd/dG;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Labcd/tB;->tp()Labcd/AB;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v1, Labcd/tB$b;->DW:Labcd/tB$b;

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Labcd/tB;->u7()Labcd/dG;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v4, Labcd/tB$b;->FH:Labcd/tB$b;

    if-ne v1, v4, :cond_5

    invoke-direct {p0}, Labcd/tB;->gn()Labcd/dG;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v4

    invoke-direct {p0}, Labcd/tB;->EQ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v0, :cond_8

    iget-object v2, p0, Labcd/tB;->EQ:Ljava/io/File;

    const-string v3, "head-name"

    invoke-direct {p0, v2, v3}, Labcd/tB;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Labcd/tB;->j6(Ljava/lang/String;Labcd/dG;)V

    iget-object v0, p0, Labcd/tB;->EQ:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Labcd/zK;->j6(Ljava/io/File;I)V

    if-eqz v1, :cond_7

    sget-object v0, Labcd/AB;->Hw:Labcd/AB;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    sget-object v0, Labcd/AB;->j6:Labcd/AB;

    goto :goto_1

    :cond_8
    sget-object v0, Labcd/AB;->Hw:Labcd/AB;

    goto/16 :goto_1

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tB$c;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Labcd/tB;->j6(I)V

    iget-object v0, v0, Labcd/tB$c;->DW:Labcd/WD;

    invoke-virtual {v4, v0}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YD;

    invoke-virtual {v1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v6

    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Labcd/AB;

    invoke-direct {v0, v6}, Labcd/AB;-><init>(Labcd/dG;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_a
    :try_start_4
    iget-object v0, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->applyingCommit:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-interface {v0, v1, v7}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Labcd/tB;->DW(Labcd/dG;)Labcd/dG;

    move-result-object v0

    if-eqz v0, :cond_c

    move v1, v2

    :goto_4
    if-nez v1, :cond_b

    new-instance v7, Labcd/cB;

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v7, v8}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v7}, Labcd/cB;->Zo()Labcd/SA;

    move-result-object v7

    invoke-virtual {v7, v6}, Labcd/SA;->j6(Labcd/YD;)Labcd/SA;

    invoke-virtual {v7}, Labcd/SA;->call()Labcd/WA;

    move-result-object v7

    invoke-static {}, Labcd/tB;->FH()[I

    move-result-object v8

    invoke-virtual {v7}, Labcd/WA;->FH()Labcd/WA$a;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v8, v2, :cond_10

    if-eq v8, v10, :cond_e

    if-eq v8, v11, :cond_d

    :cond_b
    :goto_5
    :try_start_5
    iget-object v6, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v6}, Labcd/LE;->j6()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :cond_c
    move v1, v3

    goto :goto_4

    :cond_d
    :try_start_6
    invoke-direct {p0, v6}, Labcd/tB;->Hw(Labcd/dG;)Labcd/AB;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :try_start_7
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :cond_e
    :try_start_8
    iget-object v0, p0, Labcd/tB;->VH:Labcd/tB$b;

    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    if-ne v0, v1, :cond_f

    new-instance v0, Labcd/AB;

    invoke-virtual {v7}, Labcd/WA;->j6()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/AB;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Labcd/tB;->j6(Labcd/AB;)Labcd/AB;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :cond_f
    :try_start_a
    invoke-direct {p0, v6}, Labcd/tB;->Hw(Labcd/dG;)Labcd/AB;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    :try_start_b
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    :cond_10
    :try_start_c
    invoke-virtual {v7}, Labcd/WA;->DW()Labcd/dG;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_d
    iget-object v1, p0, Labcd/tB;->u7:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    throw v0

    :cond_11
    new-instance v0, Labcd/SB;

    const-string v1, "Could not resolve uniquely the abbreviated object ID"

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/tB;->call()Labcd/AB;

    move-result-object v0

    return-object v0
.end method

.method j6([B)Labcd/KE;
    .registers 13

    const/4 v5, 0x0

    const/16 v8, 0x20

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    if-nez v0, :cond_0

    move-object v1, v5

    :goto_0
    return-object v1

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_3

    :cond_1
    const-string v0, "GIT_AUTHOR_NAME"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "GIT_AUTHOR_EMAIL"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "GIT_AUTHOR_DATE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, -0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x2b

    if-ne v1, v9, :cond_2

    move v0, v4

    :cond_2
    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x5

    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    new-instance v1, Labcd/KE;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    mul-int/lit8 v6, v9, 0x3c

    add-int/2addr v6, v8

    mul-int/2addr v6, v0

    invoke-direct/range {v1 .. v6}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Labcd/IK;->Zo([BI)I

    move-result v2

    if-eq v2, v0, :cond_1

    const/16 v3, 0x3d

    invoke-static {p1, v0, v3}, Labcd/IK;->j6([BIC)I

    move-result v3

    if-eq v3, v2, :cond_1

    add-int/lit8 v7, v3, -0x1

    invoke-static {p1, v0, v7}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v2, -0x2

    invoke-static {p1, v3, v7}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :cond_4
    move-object v1, v5

    goto/16 :goto_0
.end method

.method public j6(Labcd/LE;)Labcd/tB;
    .registers 2

    iput-object p1, p0, Labcd/tB;->u7:Labcd/LE;

    return-object p0
.end method

.method public j6(Labcd/YD;)Labcd/tB;
    .registers 8

    :try_start_0
    iget-object v0, p0, Labcd/tB;->tp:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    iput-object v0, p0, Labcd/tB;->gn:Labcd/dG;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->couldNotReadObjectWhileParsingCommit:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GIT_AUTHOR_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GIT_AUTHOR_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GIT_AUTHOR_DATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
