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
    .registers 2

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p1, p0, Labcd/ZF;->j6:Labcd/qG;

    new-instance p1, Labcd/QF;

    invoke-direct {p1}, Labcd/QF;-><init>()V

    iput-object p1, p0, Labcd/ZF;->DW:Labcd/QF;

    return-void
.end method

.method private DW(Labcd/dG;I)Z
    .registers 7

    iget v0, p1, Labcd/iG;->EQ:I

    and-int/2addr v0, p2

    const/4 v1, 0x1

    if-ne v0, p2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget v2, p1, Labcd/iG;->EQ:I

    or-int/2addr p2, v2

    iput p2, p1, Labcd/iG;->EQ:I

    iget p2, p1, Labcd/iG;->EQ:I

    iget v2, p0, Labcd/ZF;->v5:I

    and-int/2addr v2, p2

    iget v3, p0, Labcd/ZF;->Hw:I

    if-ne v2, v3, :cond_28

    and-int/lit8 p2, p2, -0x11

    iput p2, p1, Labcd/iG;->EQ:I

    iget-object p2, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {p2, p1}, Labcd/QF;->j6(Labcd/dG;)V

    iget p2, p0, Labcd/ZF;->FH:I

    or-int/lit8 p2, p2, 0x8

    invoke-direct {p0, p1, p2}, Labcd/ZF;->j6(Labcd/dG;I)V

    return v1

    :cond_28
    return v0
.end method

.method private j6(Labcd/dG;)V
    .registers 6

    iget-object v0, p0, Labcd/ZF;->j6:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->FH()I

    move-result v0

    iget v1, p0, Labcd/ZF;->FH:I

    or-int/2addr v1, v0

    iput v1, p0, Labcd/ZF;->FH:I

    iget v1, p1, Labcd/iG;->EQ:I

    iget v2, p0, Labcd/ZF;->FH:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1b

    or-int/2addr v0, v1

    iput v0, p1, Labcd/iG;->EQ:I

    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v0, p1}, Labcd/QF;->j6(Labcd/dG;)V

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->staleRevFlagsOn:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/dG;I)V
    .registers 7

    :cond_0
    iget-object p1, p1, Labcd/dG;->J8:[Labcd/dG;

    if-nez p1, :cond_5

    return-void

    :cond_5
    array-length v0, p1

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    :goto_a
    if-lt v1, v0, :cond_16

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2}, Labcd/ZF;->DW(Labcd/dG;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_16
    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Labcd/ZF;->DW(Labcd/dG;I)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-direct {p0, v2, p2}, Labcd/ZF;->j6(Labcd/dG;I)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method DW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method j6()Labcd/dG;
    .registers 10

    :cond_0
    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v0}, Labcd/QF;->j6()Labcd/dG;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object v0, p0, Labcd/ZF;->j6:Labcd/qG;

    iget-object v0, v0, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->Hw()V

    return-object v1

    :cond_11
    iget-object v2, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    if-lt v5, v3, :cond_44

    iget v2, v0, Labcd/iG;->EQ:I

    iget v3, p0, Labcd/ZF;->FH:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_20

    const/4 v4, 0x1

    :cond_20
    if-eqz v4, :cond_24

    or-int/lit8 v2, v2, 0x8

    :cond_24
    invoke-direct {p0, v0, v2}, Labcd/ZF;->j6(Labcd/dG;I)V

    iget v2, v0, Labcd/iG;->EQ:I

    and-int/lit8 v3, v2, 0x8

    const/16 v5, 0x8

    if-eqz v3, :cond_38

    iget-object v0, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v0, v5}, Labcd/QF;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_38
    or-int/lit8 v1, v2, 0x10

    iput v1, v0, Labcd/iG;->EQ:I

    if-eqz v4, :cond_0

    iget v1, v0, Labcd/iG;->EQ:I

    or-int/2addr v1, v5

    iput v1, v0, Labcd/iG;->EQ:I

    return-object v0

    :cond_44
    aget-object v6, v2, v5

    iget v7, v6, Labcd/iG;->EQ:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_4d

    goto :goto_61

    :cond_4d
    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_56

    iget-object v7, p0, Labcd/ZF;->j6:Labcd/qG;

    invoke-virtual {v6, v7}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_56
    iget v7, v6, Labcd/iG;->EQ:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Labcd/iG;->EQ:I

    iget-object v7, p0, Labcd/ZF;->DW:Labcd/QF;

    invoke-virtual {v7, v6}, Labcd/QF;->j6(Labcd/dG;)V

    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_16
.end method

.method j6(Labcd/LF;)V
    .registers 4

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Labcd/LF;->j6()Labcd/dG;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_1c

    if-nez v0, :cond_18

    iget-object p1, p0, Labcd/ZF;->j6:Labcd/qG;

    iget v0, p0, Labcd/ZF;->FH:I

    invoke-virtual {p1, v0}, Labcd/qG;->v5(I)V

    iget p1, p0, Labcd/ZF;->FH:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Labcd/ZF;->Hw:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Labcd/ZF;->v5:I

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Labcd/ZF;->j6(Labcd/dG;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_0

    :catchall_1c
    move-exception p1

    iget-object v0, p0, Labcd/ZF;->j6:Labcd/qG;

    iget v1, p0, Labcd/ZF;->FH:I

    invoke-virtual {v0, v1}, Labcd/qG;->v5(I)V

    iget v0, p0, Labcd/ZF;->FH:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Labcd/ZF;->Hw:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Labcd/ZF;->v5:I

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method
