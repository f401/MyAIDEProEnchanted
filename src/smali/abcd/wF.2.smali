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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/wF;->j6:Labcd/UE;

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    iput-object v0, p0, Labcd/wF;->DW:Labcd/IE;

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    return-void
.end method


# virtual methods
.method protected DW(II)Labcd/TJ;
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/wF;->j6(II)Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/VJ;

    invoke-direct {v0}, Labcd/VJ;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/wF;->j6(Labcd/YD;)Labcd/TJ;

    move-result-object v0

    goto :goto_0
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

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/wF;->DW()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v0

    iput-object v0, p0, Labcd/wF;->Hw:Labcd/EE;

    :cond_0
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
    .registers 10

    iget-object v0, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object v1, v0, p1

    if-eqz v1, :cond_3

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

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

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Labcd/wF;->FH:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->multipleMergeBasesFor:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Labcd/wF;->Zo:[Labcd/dG;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Labcd/ZC;

    iget-object v1, p0, Labcd/wF;->v5:[Labcd/iG;

    aget-object v1, v1, p2

    const-string v2, "commit"

    invoke-direct {v0, v1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/ZC;

    iget-object v1, p0, Labcd/wF;->v5:[Labcd/iG;

    aget-object v1, v1, p1

    const-string v2, "commit"

    invoke-direct {v0, v1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public varargs j6([Labcd/YD;)Z
    .registers 7

    const/4 v1, 0x0

    array-length v0, p1

    new-array v0, v0, [Labcd/iG;

    iput-object v0, p0, Labcd/wF;->v5:[Labcd/iG;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Labcd/wF;->v5:[Labcd/iG;

    array-length v0, v0

    new-array v0, v0, [Labcd/dG;

    iput-object v0, p0, Labcd/wF;->Zo:[Labcd/dG;

    move v0, v1

    :goto_1
    iget-object v2, p0, Labcd/wF;->v5:[Labcd/iG;

    array-length v3, v2

    if-lt v0, v3, :cond_4

    array-length v0, v2

    new-array v0, v0, [Labcd/mG;

    iput-object v0, p0, Labcd/wF;->VH:[Labcd/mG;

    :goto_2
    iget-object v0, p0, Labcd/wF;->v5:[Labcd/iG;

    array-length v2, v0

    if-lt v1, v2, :cond_3

    :try_start_0
    invoke-virtual {p0}, Labcd/wF;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/wF;->Hw:Labcd/EE;

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/wF;->Hw:Labcd/EE;

    invoke-virtual {v1}, Labcd/EE;->FH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Labcd/wF;->Hw:Labcd/EE;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    :cond_1
    iget-object v1, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-virtual {v1}, Labcd/IE;->FH()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/wF;->Hw:Labcd/EE;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    :cond_2
    iget-object v1, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-virtual {v1}, Labcd/IE;->FH()V

    throw v0

    :cond_3
    iget-object v2, p0, Labcd/wF;->VH:[Labcd/mG;

    iget-object v3, p0, Labcd/wF;->FH:Labcd/qG;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v3, p0, Labcd/wF;->Zo:[Labcd/dG;

    iget-object v4, p0, Labcd/wF;->FH:Labcd/qG;

    aget-object v2, v2, v0

    invoke-virtual {v4, v2}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v2

    aput-object v2, v3, v0
    :try_end_1
    .catch Labcd/ZC; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v2, p0, Labcd/wF;->Zo:[Labcd/dG;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Labcd/wF;->v5:[Labcd/iG;

    iget-object v3, p0, Labcd/wF;->FH:Labcd/qG;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
