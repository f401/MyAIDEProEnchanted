.class Labcd/ZF;
.super Labcd/XF;


# instance fields
.field private final DW:Labcd/QF;

.field private FH:I

.field private Hw:I

.field private final j6:Labcd/qG;

.field private v5:I


# direct methods
.method constructor <init>(Labcd/qG;)V
    .registers 3

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p1, p0, Labcd/ZF;->j6:Labcd/qG;

    new-instance v0, Labcd/QF;

    invoke-direct {v0}, Labcd/QF;-><init>()V

    iput-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    return-void
.end method

.method private DW(Labcd/dG;I)Z
    .registers 8

    const/4 v1, 0x1

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    move v0, v1

    :goto_0
    iget v2, p1, Labcd/iG;->EQ:I

    or-int/2addr v2, p2

    iput v2, p1, Labcd/iG;->EQ:I

    iget v2, p1, Labcd/iG;->EQ:I

    iget v3, p0, Labcd/ZF;->v5:I

    and-int/2addr v3, v2

    iget v4, p0, Labcd/ZF;->Hw:I

    if-ne v3, v4, :cond_1

    and-int/lit8 v0, v2, -0x11

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v0, p1}, Labcd/QF;->j6(Labcd/dG;)V

    iget v0, p0, Labcd/ZF;->FH:I

    or-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Labcd/ZF;->j6(Labcd/dG;I)V

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private j6(Labcd/dG;)V
    .registers 7

    iget-object v0, p0, Labcd/ZF;->j6:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->FH()I

    move-result v0

    iget v1, p0, Labcd/ZF;->FH:I

    or-int/2addr v1, v0

    iput v1, p0, Labcd/ZF;->FH:I

    iget v1, p1, Labcd/iG;->EQ:I

    iget v2, p0, Labcd/ZF;->FH:I

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v0, p1}, Labcd/QF;->j6(Labcd/dG;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->staleRevFlagsOn:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/dG;I)V
    .registers 8

    :cond_0
    iget-object v1, p1, Labcd/dG;->J8:[Labcd/dG;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    array-length v2, v1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    aget-object p1, v1, v0

    invoke-direct {p0, p1, p2}, Labcd/ZF;->DW(Labcd/dG;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    aget-object v3, v1, v0

    invoke-direct {p0, v3, p2}, Labcd/ZF;->DW(Labcd/dG;I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3, p2}, Labcd/ZF;->j6(Labcd/dG;I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method DW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method j6()Labcd/dG;
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_0
    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v0}, Labcd/QF;->j6()Labcd/dG;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Labcd/ZF;->j6:Labcd/qG;

    iget-object v0, v0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->Hw()V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, v2, Labcd/dG;->J8:[Labcd/dG;

    array-length v5, v3

    move v0, v4

    :goto_1
    if-lt v0, v5, :cond_4

    iget v0, v2, Labcd/iG;->EQ:I

    iget v3, p0, Labcd/ZF;->FH:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    invoke-direct {p0, v2, v0}, Labcd/ZF;->j6(Labcd/dG;I)V

    iget v0, v2, Labcd/iG;->EQ:I

    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Labcd/QF;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Labcd/iG;->EQ:I

    if-eqz v3, :cond_0

    iget v0, v2, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Labcd/iG;->EQ:I

    move-object v0, v2

    goto :goto_0

    :cond_4
    aget-object v6, v3, v0

    iget v7, v6, Labcd/iG;->EQ:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_6

    iget-object v7, p0, Labcd/ZF;->j6:Labcd/qG;

    invoke-virtual {v6, v7}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_6
    iget v7, v6, Labcd/iG;->EQ:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Labcd/iG;->EQ:I

    iget-object v7, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v7, v6}, Labcd/QF;->j6(Labcd/dG;)V

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_2
.end method

.method j6(Labcd/LF;)V
    .registers 5

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Labcd/LF;->j6()Labcd/dG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/ZF;->j6:Labcd/qG;

    iget v1, p0, Labcd/ZF;->FH:I

    invoke-virtual {v0, v1}, Labcd/qG;->v5(I)V

    iget v0, p0, Labcd/ZF;->FH:I

    or-int/lit8 v1, v0, 0x10

    iput v1, p0, Labcd/ZF;->Hw:I

    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Labcd/ZF;->v5:I

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Labcd/ZF;->j6(Labcd/dG;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/ZF;->j6:Labcd/qG;

    iget v2, p0, Labcd/ZF;->FH:I

    invoke-virtual {v1, v2}, Labcd/qG;->v5(I)V

    iget v1, p0, Labcd/ZF;->FH:I

    or-int/lit8 v2, v1, 0x10

    iput v2, p0, Labcd/ZF;->Hw:I

    or-int/lit8 v1, v1, 0x10

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Labcd/ZF;->v5:I

    throw v0
.end method
