.class public Labcd/hB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Ljava/lang/Iterable",
        "<",
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
            "Ljava/util/List",
            "<",
            "Labcd/fK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 4

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/hB;->Hw:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/hB;->v5:Ljava/util/List;

    iput v1, p0, Labcd/hB;->Zo:I

    iput v1, p0, Labcd/hB;->VH:I

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    return-void
.end method

.method private j6(ZLabcd/YD;)Labcd/hB;
    .registers 8

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/dB;->j6()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-virtual {v1, p2}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->DW(Labcd/dG;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hB;->Hw:Z

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-virtual {v1, p2}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->FH(Labcd/dG;)V
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/ZC; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionOccurredDuringAddingOfOptionToALogCommand:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    throw v0
.end method


# virtual methods
.method public DW(Labcd/YD;)Labcd/hB;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Labcd/hB;->j6(ZLabcd/YD;)Labcd/hB;

    return-object p0
.end method

.method public call()Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Labcd/dG;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/hB;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    iget-object v1, p0, Labcd/hB;->v5:Ljava/util/List;

    invoke-static {v1}, Labcd/hK;->j6(Ljava/util/Collection;)Labcd/jK;

    move-result-object v1

    sget-object v2, Labcd/jK;->DW:Labcd/jK;

    invoke-static {v1, v2}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/jK;)V

    :cond_0
    iget v0, p0, Labcd/hB;->VH:I

    if-le v0, v3, :cond_3

    iget v1, p0, Labcd/hB;->Zo:I

    if-le v1, v3, :cond_3

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-static {v0}, Labcd/zG;->j6(I)Labcd/yG;

    move-result-object v0

    iget v2, p0, Labcd/hB;->Zo:I

    invoke-static {v2}, Labcd/xG;->j6(I)Labcd/yG;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/vG;->j6(Labcd/yG;Labcd/yG;)Labcd/yG;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->j6(Labcd/yG;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Labcd/hB;->Hw:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Labcd/hB;->j6(Labcd/YD;)Labcd/hB;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/dB;->j6(Z)V

    iget-object v0, p0, Labcd/hB;->FH:Labcd/qG;

    return-object v0

    :cond_3
    iget v0, p0, Labcd/hB;->VH:I

    if-le v0, v3, :cond_4

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-static {v0}, Labcd/zG;->j6(I)Labcd/yG;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->j6(Labcd/yG;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Labcd/hB;->Zo:I

    if-le v0, v3, :cond_1

    iget-object v1, p0, Labcd/hB;->FH:Labcd/qG;

    invoke-static {v0}, Labcd/xG;->j6(I)Labcd/yG;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->j6(Labcd/yG;)V

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->noHEADExistsAndNoExplicitStartingRevisionWasSpecified:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->anExceptionOccurredWhileTryingToAddTheIdOfHEAD:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
