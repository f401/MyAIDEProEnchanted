.class public abstract Labcd/wF;
.super Ljava/lang/Object;


# instance fields
.field protected final DW:Labcd/IE;

.field protected final FH:Labcd/qG;

.field private Hw:Labcd/EE;

.field protected VH:[Labcd/mG;

.field protected Zo:[Labcd/dG;

.field protected final j6:Labcd/UE;

.field protected v5:[Labcd/iG;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object p1

    iput-object p1, p0, Labcd/wF;->DW:Labcd/IE;

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    return-void
.end method


# virtual methods
.method protected DW(II)Labcd/TJ;
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/wF;->j6(II)Labcd/dG;

    move-result-object p1

    if-nez p1, :cond_c

    new-instance p1, Labcd/VJ;

    invoke-direct {p1}, Labcd/VJ;-><init>()V

    goto :goto_14

    :cond_c
    invoke-virtual {p1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/wF;->j6(Labcd/YD;)Labcd/TJ;

    move-result-object p1

    :goto_14
    return-object p1
.end method

.method public DW()Labcd/UE;
    .registers 2

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    return-object v0
.end method

.method public abstract FH()Labcd/yE;
.end method

.method protected abstract Hw()Z
.end method

.method public j6()Labcd/EE;
    .registers 2

    iget-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Labcd/wF;->DW()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v0

    iput-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    :cond_e
    iget-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    return-object v0
.end method

.method protected j6(Labcd/YD;)Labcd/TJ;
    .registers 5

    new-instance v0, Labcd/UJ;

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-direct {v0, v1, v2, p1}, Labcd/UJ;-><init>([BLabcd/IE;Labcd/YD;)V

    return-object v0
.end method

.method public j6(II)Labcd/dG;
    .registers 9

    iget-object v0, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object v1, v0, p1

    const-string v2, "commit"

    if-eqz v1, :cond_7e

    aget-object v0, v0, p2

    if-eqz v0, :cond_74

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->we()V

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    sget-object v1, Labcd/yG;->Hw:Labcd/yG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/yG;)V

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    iget-object v1, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Labcd/qG;->DW(Labcd/dG;)V

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    iget-object v1, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Labcd/qG;->DW(Labcd/dG;)V

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_34

    const/4 p1, 0x0

    return-object p1

    :cond_34
    iget-object v1, p0, Labcd/wF;->FH:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_3d

    return-object v0

    :cond_3d
    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->multipleMergeBasesFor:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object p1, v5, p1

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object p1, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 p1, 0x2

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_74
    new-instance p1, Labcd/ZC;

    iget-object v0, p0, Labcd/wF;->v5:[Labcd/iG;

    aget-object p2, v0, p2

    invoke-direct {p1, p2, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1

    :cond_7e
    new-instance p2, Labcd/ZC;

    iget-object v0, p0, Labcd/wF;->v5:[Labcd/iG;

    aget-object p1, v0, p1

    invoke-direct {p2, p1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p2
.end method

.method public varargs j6([Labcd/YD;)Z
    .registers 7

    array-length v0, p1

    new-array v0, v0, [Labcd/iG;

    iput-object v0, p0, Labcd/wF;->v5:[Labcd/iG;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    if-lt v1, v2, :cond_6e

    iget-object p1, p0, Labcd/wF;->v5:[Labcd/iG;

    array-length p1, p1

    new-array p1, p1, [Labcd/dG;

    iput-object p1, p0, Labcd/wF;->Zo:[Labcd/dG;

    const/4 p1, 0x0

    :goto_12
    iget-object v1, p0, Labcd/wF;->v5:[Labcd/iG;

    array-length v2, v1

    if-lt p1, v2, :cond_58

    array-length p1, v1

    new-array p1, p1, [Labcd/mG;

    iput-object p1, p0, Labcd/wF;->VH:[Labcd/mG;

    :goto_1c
    iget-object p1, p0, Labcd/wF;->v5:[Labcd/iG;

    array-length v1, p1

    if-lt v0, v1, :cond_49

    :try_start_21
    invoke-virtual {p0}, Labcd/wF;->Hw()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Labcd/EE;->FH()V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_3b

    :cond_2e
    iget-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Labcd/EE;->Hw()V

    :cond_35
    iget-object v0, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return p1

    :catchall_3b
    move-exception p1

    iget-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Labcd/EE;->Hw()V

    :cond_43
    iget-object v0, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    throw p1

    :cond_49
    iget-object v1, p0, Labcd/wF;->VH:[Labcd/mG;

    iget-object v2, p0, Labcd/wF;->FH:Labcd/qG;

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object p1

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_58
    :try_start_58
    iget-object v2, p0, Labcd/wF;->Zo:[Labcd/dG;

    iget-object v3, p0, Labcd/wF;->FH:Labcd/qG;

    aget-object v1, v1, p1

    invoke-virtual {v3, v1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    aput-object v1, v2, p1
    :try_end_64
    .catch Labcd/ZC; {:try_start_58 .. :try_end_64} :catch_65

    goto :goto_6b

    :catch_65
    move-exception v1

    iget-object v1, p0, Labcd/wF;->Zo:[Labcd/dG;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    :goto_6b
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_6e
    iget-object v2, p0, Labcd/wF;->v5:[Labcd/iG;

    iget-object v3, p0, Labcd/wF;->FH:Labcd/qG;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method
