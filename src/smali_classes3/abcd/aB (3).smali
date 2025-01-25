.class public Labcd/aB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static FH:[I


# instance fields
.field private final Hw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Labcd/aB;->Hw:Ljava/util/Set;

    return-void
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/aB;->FH:[I

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
    sput-object v0, Labcd/aB;->FH:[I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/aB;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/aB;->Hw:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    :try_start_11
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->u7()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Labcd/aB;->v5:Z

    if-nez v2, :cond_64

    new-instance v2, Labcd/qG;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v2, v3}, Labcd/qG;-><init>(Labcd/UE;)V

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v3

    iget-object v4, p0, Labcd/aB;->Hw:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_64

    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_44

    goto :goto_34

    :cond_44
    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v6, v5}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v6

    if-nez v6, :cond_4d

    goto :goto_34

    :cond_4d
    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v6, v5}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v5

    invoke-virtual {v2, v5}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_34

    :cond_5e
    new-instance v0, Labcd/XB;

    invoke-direct {v0}, Labcd/XB;-><init>()V

    throw v0

    :cond_64
    :goto_64
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Labcd/dB;->j6(Z)V

    iget-object v3, p0, Labcd/aB;->Hw:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6e
    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_75

    return-object v0

    :cond_75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_7e

    goto :goto_6e

    :cond_7e
    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5, v4}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v5

    if-nez v5, :cond_87

    goto :goto_6e

    :cond_87
    invoke-interface {v5}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_f5

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4, v5}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v4

    const-string v6, "branch deleted"

    invoke-virtual {v4, v6, v2}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Labcd/RE;->j6(Z)V

    invoke-virtual {v4}, Labcd/RE;->j6()Labcd/RE$a;

    move-result-object v4

    invoke-static {}, Labcd/aB;->FH()[I

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/4 v8, 0x2

    if-eq v6, v8, :cond_ba

    const/4 v8, 0x7

    if-eq v6, v8, :cond_ba

    const/16 v8, 0x9

    if-eq v6, v8, :cond_ba

    const/4 v6, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v6, 0x0

    :goto_bb
    if-eqz v6, :cond_dd

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "refs/heads/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v5

    const-string v6, "branch"

    invoke-virtual {v5, v6, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/jF;->v5()V

    goto :goto_6e

    :cond_dd
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->deleteBranchUnexpectedResult:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f5
    new-instance v0, Labcd/JB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotDeleteCheckedOutBranch:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/JB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_109} :catch_109

    :catch_109
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_115

    :goto_114
    throw v1

    :goto_115
    goto :goto_114
.end method

.method public varargs j6([Ljava/lang/String;)Labcd/aB;
    .registers 6

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/aB;->Hw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-lt v1, v0, :cond_d

    return-object p0

    :cond_d
    aget-object v2, p1, v1

    iget-object v3, p0, Labcd/aB;->Hw:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method
