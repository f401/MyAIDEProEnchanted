.class public Labcd/hB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Ljava/lang/Iterable<",
        "Labcd/dG;",
        ">;>;"
    }
.end annotation


# instance fields
.field private FH:Labcd/qG;

.field private Hw:Z

.field private VH:I

.field private Zo:I

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/fK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/hB;->Hw:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/hB;->v5:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Labcd/hB;->Zo:I

    iput v0, p0, Labcd/hB;->VH:I

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    return-void
.end method

.method private j6(ZLabcd/YD;)Labcd/hB;
    .registers 7

    invoke-virtual {p0}, Labcd/dB;->j6()V

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    :try_start_6
    iget-object p1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-virtual {p1, p2}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/qG;->DW(Labcd/dG;)V

    iput-boolean v0, p0, Labcd/hB;->Hw:Z

    goto :goto_1b

    :cond_12
    iget-object p1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-virtual {p1, p2}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/qG;->FH(Labcd/dG;)V
    :try_end_1b
    .catch Labcd/fD; {:try_start_6 .. :try_end_1b} :catch_34
    .catch Labcd/ZC; {:try_start_6 .. :try_end_1b} :catch_32
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object p0

    :catch_1c
    move-exception p1

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionOccurredDuringAddingOfOptionToALogCommand:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_32
    move-exception p1

    throw p1

    :catch_34
    move-exception p1

    throw p1
.end method


# virtual methods
.method public DW(Labcd/YD;)Labcd/hB;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Labcd/hB;->j6(ZLabcd/YD;)Labcd/hB;

    return-object p0
.end method

.method public call()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Labcd/dG;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/hB;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    iget-object v1, p0, Labcd/hB;->v5:Ljava/util/List;

    invoke-static {v1}, Labcd/hK;->j6(Ljava/util/Collection;)Labcd/jK;

    move-result-object v1

    sget-object v2, Labcd/jK;->DW:Labcd/jK;

    invoke-static {v1, v2}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/jK;)V

    :cond_1c
    iget v0, p0, Labcd/hB;->VH:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_36

    iget v2, p0, Labcd/hB;->Zo:I

    if-le v2, v1, :cond_36

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-static {v0}, Labcd/zG;->j6(I)Labcd/yG;

    move-result-object v0

    iget v2, p0, Labcd/hB;->Zo:I

    invoke-static {v2}, Labcd/xG;->j6(I)Labcd/yG;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/vG;->j6(Labcd/yG;Labcd/yG;)Labcd/yG;

    move-result-object v0

    goto :goto_3e

    :cond_36
    if-le v0, v1, :cond_42

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-static {v0}, Labcd/zG;->j6(I)Labcd/yG;

    move-result-object v0

    :goto_3e
    invoke-virtual {v1, v0}, Labcd/qG;->j6(Labcd/yG;)V

    goto :goto_4d

    :cond_42
    iget v0, p0, Labcd/hB;->Zo:I

    if-le v0, v1, :cond_4d

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-static {v0}, Labcd/xG;->j6(I)Labcd/yG;

    move-result-object v0

    goto :goto_3e

    :cond_4d
    :goto_4d
    iget-boolean v0, p0, Labcd/hB;->Hw:Z

    if-nez v0, :cond_78

    :try_start_51
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0, v0}, Labcd/hB;->j6(Labcd/YD;)Labcd/hB;

    goto :goto_78

    :cond_5f
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->noHEADExistsAndNoExplicitStartingRevisionWasSpecified:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->anExceptionOccurredWhileTryingToAddTheIdOfHEAD:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_78
    :goto_78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/dB;->j6(Z)V

    iget-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/hB;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/YD;)Labcd/hB;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Labcd/hB;->j6(ZLabcd/YD;)Labcd/hB;

    return-object p0
.end method

.method public j6(Labcd/YD;Labcd/YD;)Labcd/hB;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/hB;->DW(Labcd/YD;)Labcd/hB;

    invoke-virtual {p0, p2}, Labcd/hB;->j6(Labcd/YD;)Labcd/hB;

    return-object p0
.end method
