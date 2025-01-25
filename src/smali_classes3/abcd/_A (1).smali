.class public Labcd/_A;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_A$a;
    }
.end annotation

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
.field private Hw:Ljava/lang/String;

.field private VH:Ljava/lang/String;

.field private Zo:Labcd/_A$a;

.field private gn:Labcd/dG;

.field private v5:Z


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/_A;->v5:Z

    const-string p1, "HEAD"

    iput-object p1, p0, Labcd/_A;->VH:Ljava/lang/String;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/_A;->FH:[I

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
    sput-object v0, Labcd/_A;->FH:[I

    return-object v0
.end method

.method private Hw()Labcd/yE;
    .registers 6

    iget-object v0, p0, Labcd/_A;->gn:Labcd/dG;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Labcd/iG;->getId()Labcd/yE;

    return-object v0

    :cond_8
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v1, p0, Labcd/_A;->VH:Ljava/lang/String;

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

    iget-object v1, p0, Labcd/_A;->VH:Ljava/lang/String;

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

.method private v5()V
    .registers 6

    iget-object v0, p0, Labcd/_A;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refs/heads/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/_A;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-void

    :cond_1c
    :goto_1c
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->branchNameInvalid:Ljava/lang/String;

    iget-object v1, p0, Labcd/_A;->Hw:Ljava/lang/String;

    if-nez v1, :cond_28

    const-string v1, "<null>"

    :cond_28
    new-instance v2, Labcd/QB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/QB;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/_A;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/_A;->VH:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/_A;->gn:Labcd/dG;

    return-object p0
.end method

.method public call()Labcd/ME;
    .registers 15

    invoke-virtual {p0}, Labcd/dB;->j6()V

    invoke-direct {p0}, Labcd/_A;->v5()V

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_d
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v2, p0, Labcd/_A;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_1e9
    .catchall {:try_start_d .. :try_end_15} :catchall_1e7

    const-string v2, "refs/heads/"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_27

    :try_start_1b
    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iget-boolean v5, p0, Labcd/_A;->v5:Z

    if-nez v5, :cond_45

    if-nez v1, :cond_2f

    goto :goto_45

    :cond_2f
    new-instance v1, Labcd/YB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->refAlreadyExists:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Labcd/_A;->Hw:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/YB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    :goto_45
    invoke-direct {p0}, Labcd/_A;->Hw()Labcd/yE;

    move-result-object v5

    iget-object v6, p0, Labcd/_A;->VH:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_5d

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v8, p0, Labcd/_A;->VH:Ljava/lang/String;

    invoke-virtual {v6, v8}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-interface {v6}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_5c} :catch_1e9
    .catchall {:try_start_1b .. :try_end_5c} :catchall_1e7

    goto :goto_5e

    :cond_5d
    move-object v6, v7

    :goto_5e
    const-string v8, "refs/remotes/"

    const-string v9, ""

    if-nez v6, :cond_96

    :try_start_64
    iget-object v6, p0, Labcd/_A;->gn:Labcd/dG;

    if-eqz v6, :cond_6d

    :goto_68
    invoke-virtual {v6}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v6

    goto :goto_7a

    :cond_6d
    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v10, p0, Labcd/_A;->VH:Ljava/lang/String;

    invoke-virtual {v6, v10}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v6

    invoke-virtual {v0, v6}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v6

    goto :goto_68

    :goto_7a
    if-eqz v1, :cond_8b

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "branch: Reset start-point to commit "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_86
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e2

    :cond_8b
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "branch: Created from commit "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_96
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c3

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a3

    goto :goto_c3

    :cond_a3
    invoke-virtual {v0, v5}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v5

    invoke-virtual {v0, v5}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v5

    if-eqz v1, :cond_b8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "branch: Reset start-point to tag "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_b8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "branch: Created from tag "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_c3
    :goto_c3
    if-eqz v1, :cond_d4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "branch: Reset start-point to branch "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_cf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_df

    :cond_d4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "branch: Created from branch "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :goto_df
    move-object v13, v9

    move-object v9, v6

    move-object v6, v13

    :goto_e2
    iget-object v10, p0, Labcd/dB;->j6:Labcd/UE;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Labcd/_A;->Hw:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v10

    invoke-virtual {v10, v5}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v10, v6, v4}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    if-eqz v1, :cond_107

    iget-boolean v5, p0, Labcd/_A;->v5:Z

    if-eqz v5, :cond_107

    invoke-virtual {v10}, Labcd/RE;->FH()Labcd/RE$a;

    move-result-object v5

    goto :goto_10b

    :cond_107
    invoke-virtual {v10}, Labcd/RE;->XL()Labcd/RE$a;

    move-result-object v5

    :goto_10b
    invoke-virtual {p0, v4}, Labcd/dB;->j6(Z)V

    invoke-static {}, Labcd/_A;->FH()[I

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v6, v11, :cond_128

    if-eq v6, v10, :cond_126

    const/4 v12, 0x5

    if-eq v6, v12, :cond_128

    const/4 v12, 0x6

    if-eq v6, v12, :cond_128

    const/4 v1, 0x0

    goto :goto_128

    :cond_126
    xor-int/lit8 v1, v1, 0x1

    :cond_128
    :goto_128
    if-eqz v1, :cond_1cf

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v5, p0, Labcd/_A;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v5}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-eqz v1, :cond_1c3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_138} :catch_1e9
    .catchall {:try_start_64 .. :try_end_138} :catchall_1e7

    if-nez v5, :cond_13e

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :cond_13e
    :try_start_13e
    iget-object v5, p0, Labcd/_A;->Zo:Labcd/_A$a;

    sget-object v6, Labcd/_A$a;->FH:Labcd/_A$a;
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_142} :catch_1e9
    .catchall {:try_start_13e .. :try_end_142} :catchall_1e7

    const-string v12, "branch"

    if-eq v5, v6, :cond_177

    :try_start_146
    iget-object v5, p0, Labcd/_A;->Zo:Labcd/_A$a;

    sget-object v6, Labcd/_A$a;->j6:Labcd/_A$a;

    if-ne v5, v6, :cond_14d

    goto :goto_177

    :cond_14d
    iget-object v5, p0, Labcd/_A;->Zo:Labcd/_A$a;

    sget-object v6, Labcd/_A$a;->DW:Labcd/_A$a;

    if-ne v5, v6, :cond_154

    goto :goto_178

    :cond_154
    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v5

    const-string v6, "autosetupmerge"

    invoke-virtual {v5, v12, v7, v6}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    goto :goto_178

    :cond_169
    const-string v4, "always"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_172

    goto :goto_177

    :cond_172
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_178

    :cond_177
    :goto_177
    const/4 v4, 0x1

    :goto_178
    if-eqz v4, :cond_1bf

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    const-string v6, "remotes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_18e} :catch_1e9
    .catchall {:try_start_146 .. :try_end_18e} :catchall_1e7

    const-string v6, "merge"

    const-string v7, "remote"

    if-eqz v3, :cond_1b0

    const/4 v3, 0x2

    aget-object v3, v5, v3

    aget-object v5, v5, v11

    :try_start_199
    iget-object v8, p0, Labcd/_A;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v12, v8, v7, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Labcd/_A;->Hw:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v12, v3, v6, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bc

    :cond_1b0
    iget-object v2, p0, Labcd/_A;->Hw:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v4, v12, v2, v7, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/_A;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v12, v2, v6, v9}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1bc
    invoke-virtual {v4}, Labcd/jF;->v5()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1bf} :catch_1e9
    .catchall {:try_start_199 .. :try_end_1bf} :catchall_1e7

    :cond_1bf
    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :cond_1c3
    :try_start_1c3
    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->createBranchFailedUnknownReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1cf
    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->createBranchUnexpectedResult:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1e7} :catch_1e9
    .catchall {:try_start_1c3 .. :try_end_1e7} :catchall_1e7

    :catchall_1e7
    move-exception v1

    goto :goto_1f4

    :catch_1e9
    move-exception v1

    :try_start_1ea
    new-instance v2, Labcd/SB;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1f4
    .catchall {:try_start_1ea .. :try_end_1f4} :catchall_1e7

    :goto_1f4
    invoke-virtual {v0}, Labcd/qG;->EQ()V

    goto :goto_1f9

    :goto_1f8
    throw v1

    :goto_1f9
    goto :goto_1f8
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/_A;->call()Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/_A$a;)Labcd/_A;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/_A;->Zo:Labcd/_A$a;

    return-object p0
.end method

.method public j6(Ljava/lang/String;)Labcd/_A;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/_A;->Hw:Ljava/lang/String;

    return-object p0
.end method
