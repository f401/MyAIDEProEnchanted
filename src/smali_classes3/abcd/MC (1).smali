.class public Labcd/MC;
.super Labcd/IC;


# instance fields
.field private Hw:Z


# direct methods
.method protected constructor <init>(Labcd/KC;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/IC;-><init>(Labcd/KC;I)V

    return-void
.end method

.method private FH(Labcd/QC;)V
    .registers 5

    iget-boolean v0, p0, Labcd/MC;->Hw:Z

    if-eqz v0, :cond_41

    iget v0, p0, Labcd/IC;->FH:I

    if-lez v0, :cond_41

    iget-object v1, p0, Labcd/IC;->DW:[Labcd/QC;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Labcd/KC;->j6(Labcd/QC;Labcd/QC;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_18

    :goto_15
    iput-boolean v2, p0, Labcd/MC;->Hw:Z

    goto :goto_41

    :cond_18
    if-nez v1, :cond_41

    invoke-virtual {v0}, Labcd/QC;->VH()I

    move-result v0

    invoke-virtual {p1}, Labcd/QC;->VH()I

    move-result v1

    if-eq v0, v1, :cond_36

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    if-le v0, v1, :cond_41

    goto :goto_15

    :cond_2b
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->mixedStagesNotAllowed:Ljava/lang/String;

    invoke-static {p1, v0}, Labcd/MC;->j6(Labcd/QC;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_36
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->duplicateStagesNotAllowed:Ljava/lang/String;

    invoke-static {p1, v0}, Labcd/MC;->j6(Labcd/QC;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_41
    :goto_41
    return-void
.end method

.method private j6(ILabcd/YJ;)Labcd/QC;
    .registers 5

    new-instance v0, Labcd/QC;

    invoke-virtual {p2}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/QC;-><init>([BI)V

    const-class p1, Labcd/TJ;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p1

    invoke-virtual {p2, v1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object p2

    invoke-virtual {v0, p2}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p1}, Labcd/TJ;->u7()[B

    move-result-object p2

    invoke-virtual {p1}, Labcd/TJ;->tp()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Labcd/QC;->j6([BI)V

    return-object v0
.end method

.method private static j6(Labcd/QC;Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->VH()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private v5()V
    .registers 6

    iget-object v0, p0, Labcd/IC;->DW:[Labcd/QC;

    iget v1, p0, Labcd/IC;->FH:I

    sget-object v2, Labcd/KC;->Hw:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_c
    iget v2, p0, Labcd/IC;->FH:I

    if-lt v1, v2, :cond_13

    iput-boolean v0, p0, Labcd/MC;->Hw:Z

    return-void

    :cond_13
    iget-object v2, p0, Labcd/IC;->DW:[Labcd/QC;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    aget-object v2, v2, v1

    invoke-static {v3, v2}, Labcd/KC;->j6(Labcd/QC;Labcd/QC;)I

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {v3}, Labcd/QC;->VH()I

    move-result v3

    invoke-virtual {v2}, Labcd/QC;->VH()I

    move-result v4

    if-eq v3, v4, :cond_3b

    if-eqz v3, :cond_30

    if-eqz v4, :cond_30

    goto :goto_46

    :cond_30
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->mixedStagesNotAllowed:Ljava/lang/String;

    invoke-static {v2, v0}, Labcd/MC;->j6(Labcd/QC;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->duplicateStagesNotAllowed:Ljava/lang/String;

    invoke-static {v2, v0}, Labcd/MC;->j6(Labcd/QC;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-boolean v0, p0, Labcd/MC;->Hw:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Labcd/MC;->v5()V

    :cond_7
    invoke-virtual {p0}, Labcd/IC;->Hw()V

    return-void
.end method

.method public DW(II)V
    .registers 4

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0, p1}, Labcd/KC;->j6(I)Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/MC;->FH(Labcd/QC;)V

    invoke-virtual {p0, p1, p2}, Labcd/IC;->j6(II)V

    return-void
.end method

.method public DW(Labcd/QC;)V
    .registers 6

    invoke-virtual {p1}, Labcd/QC;->Zo()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Labcd/MC;->FH(Labcd/QC;)V

    invoke-virtual {p0, p1}, Labcd/IC;->j6(Labcd/QC;)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->fileModeNotSetForPath:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6([BILabcd/IE;Labcd/YD;)V
    .registers 7

    new-instance v0, Labcd/YJ;

    invoke-direct {v0, p3}, Labcd/YJ;-><init>(Labcd/IE;)V

    new-instance v1, Labcd/UJ;

    invoke-virtual {p4}, Labcd/YD;->J8()Labcd/yE;

    move-result-object p4

    invoke-direct {v1, p1, p3, p4}, Labcd/UJ;-><init>([BLabcd/IE;Labcd/YD;)V

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Z)V

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-direct {p0, p2, v0}, Labcd/MC;->j6(ILabcd/YJ;)Labcd/QC;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/MC;->FH(Labcd/QC;)V

    :goto_22
    invoke-virtual {p0, p1}, Labcd/IC;->j6(Labcd/QC;)V

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_31

    :cond_2c
    invoke-direct {p0, p2, v0}, Labcd/MC;->j6(ILabcd/YJ;)Labcd/QC;

    move-result-object p1

    goto :goto_22

    :cond_31
    :goto_31
    return-void
.end method

.method public synthetic j6()Z
    .registers 2

    invoke-super {p0}, Labcd/IC;->j6()Z

    move-result v0

    return v0
.end method
