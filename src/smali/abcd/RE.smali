.class public abstract Labcd/RE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/RE$a;
    }
.end annotation


# instance fields
.field private DW:Z

.field private FH:Labcd/KE;

.field private Hw:Ljava/lang/String;

.field private VH:Labcd/yE;

.field private Zo:Labcd/yE;

.field private gn:Labcd/RE$a;

.field private j6:Labcd/yE;

.field private tp:Z

.field private final u7:Labcd/ME;

.field private v5:Z


# direct methods
.method protected constructor <init>(Labcd/ME;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/RE$a;->j6:Labcd/RE$a;

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;

    iput-object p1, p0, Labcd/RE;->u7:Labcd/ME;

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    const-string v0, ""

    iput-object v0, p0, Labcd/RE;->Hw:Ljava/lang/String;

    return-void
.end method

.method private aM()V
    .registers 3

    iget-object v0, p0, Labcd/RE;->j6:Labcd/yE;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->aNewObjectIdIsRequired:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/qG;Labcd/RE$b;)Labcd/RE$a;
    .registers 6

    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/OE;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/RE$a;->DW:Labcd/RE$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Labcd/RE;->DW(Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Labcd/RE$a;->DW:Labcd/RE$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Labcd/RE;->VH:Labcd/yE;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    :goto_1
    iget-object v1, p0, Labcd/RE;->VH:Labcd/yE;

    invoke-static {v1, v0}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Labcd/RE$a;->DW:Labcd/RE$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    if-nez v0, :cond_4

    sget-object v0, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {p2, v0}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/RE;->j6:Labcd/yE;

    invoke-static {p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/YD;)Labcd/iG;

    move-result-object v1

    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    invoke-static {p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/YD;)Labcd/iG;

    move-result-object v0

    if-ne v1, v0, :cond_5

    iget-boolean v2, p0, Labcd/RE;->tp:Z

    if-nez v2, :cond_5

    sget-object v0, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {p2, v0}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_5
    :try_start_4
    instance-of v2, v1, Labcd/dG;

    if-eqz v2, :cond_6

    instance-of v2, v0, Labcd/dG;

    if-eqz v2, :cond_6

    check-cast v0, Labcd/dG;

    check-cast v1, Labcd/dG;

    invoke-virtual {p1, v0, v1}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {p2, v0}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {p0}, Labcd/RE;->J0()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {p2, v0}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_7
    :try_start_6
    sget-object v0, Labcd/RE$a;->VH:Labcd/RE$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    throw v0
.end method

.method private static j6(Labcd/qG;Labcd/YD;)Labcd/iG;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract DW(Labcd/RE$a;)Labcd/RE$a;
.end method

.method public DW(Labcd/qG;)Labcd/RE$a;
    .registers 4

    invoke-direct {p0}, Labcd/RE;->aM()V

    :try_start_0
    new-instance v0, Labcd/PE;

    invoke-direct {v0, p0}, Labcd/PE;-><init>(Labcd/RE;)V

    invoke-direct {p0, p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/RE$b;)Labcd/RE$a;

    move-result-object v0

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    iput-object v1, p0, Labcd/RE;->gn:Labcd/RE$a;

    throw v0
.end method

.method public DW(Ljava/lang/String;)Labcd/RE$a;
    .registers 7

    const/4 v4, 0x0

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/OE;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/RE$a;->DW:Labcd/RE$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Labcd/RE;->DW(Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Labcd/RE$a;->DW:Labcd/RE$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Labcd/RE$a;->FH:Labcd/RE$a;

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/RE;->j6(Labcd/yE;)V

    :cond_3
    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/RE;->DW(Labcd/YD;)V

    :cond_4
    invoke-virtual {p0, p1}, Labcd/RE;->j6(Ljava/lang/String;)Labcd/RE$a;

    move-result-object v0

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    iput-object v1, p0, Labcd/RE;->gn:Labcd/RE$a;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Labcd/RE;->QX()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->illegalArgumentNotA:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "refs/"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/RE;->Hw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/RE;->v5:Z

    return-void
.end method

.method public DW(Labcd/YD;)V
    .registers 3

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/RE;->j6:Labcd/yE;

    return-void
.end method

.method protected abstract DW(Z)Z
.end method

.method protected abstract EQ()Labcd/UE;
.end method

.method public FH()Labcd/RE$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/RE;->DW:Z

    invoke-virtual {p0}, Labcd/RE;->XL()Labcd/RE$a;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J0()Z
    .registers 2

    iget-boolean v0, p0, Labcd/RE;->DW:Z

    return v0
.end method

.method protected J8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/RE;->v5:Z

    return v0
.end method

.method protected abstract QX()V
.end method

.method public VH()Labcd/ME;
    .registers 2

    iget-object v0, p0, Labcd/RE;->u7:Labcd/ME;

    return-object v0
.end method

.method public Ws()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/RE;->tp:Z

    return-void
.end method

.method public XL()Labcd/RE$a;
    .registers 3

    new-instance v0, Labcd/qG;

    invoke-virtual {p0}, Labcd/RE;->EQ()Labcd/UE;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    invoke-virtual {p0, v0}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw v1
.end method

.method public Zo()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    return-object v0
.end method

.method protected abstract gn()Labcd/OE;
.end method

.method public j6()Labcd/RE$a;
    .registers 3

    new-instance v0, Labcd/qG;

    invoke-virtual {p0}, Labcd/RE;->EQ()Labcd/UE;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    invoke-virtual {p0, v0}, Labcd/RE;->j6(Labcd/qG;)Labcd/RE$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw v1
.end method

.method protected abstract j6(Labcd/RE$a;)Labcd/RE$a;
.end method

.method public j6(Labcd/qG;)Labcd/RE$a;
    .registers 5

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "refs/heads/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :try_start_0
    new-instance v0, Labcd/QE;

    invoke-direct {v0, p0}, Labcd/QE;-><init>(Labcd/RE;)V

    invoke-direct {p0, p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/RE$b;)Labcd/RE$a;

    move-result-object v0

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Labcd/RE$a;->gn:Labcd/RE$a;

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    iput-object v1, p0, Labcd/RE;->gn:Labcd/RE$a;

    throw v0
.end method

.method protected abstract j6(Ljava/lang/String;)Labcd/RE$a;
.end method

.method public j6(Labcd/KE;)V
    .registers 2

    iput-object p1, p0, Labcd/RE;->FH:Labcd/KE;

    return-void
.end method

.method public j6(Labcd/YD;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Labcd/RE;->VH:Labcd/yE;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j6(Labcd/yE;)V
    .registers 2

    iput-object p1, p0, Labcd/RE;->Zo:Labcd/yE;

    return-void
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Labcd/RE;->DW()V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, ""

    iput-object v0, p0, Labcd/RE;->Hw:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/RE;->v5:Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Labcd/RE;->Hw:Ljava/lang/String;

    iput-boolean p2, p0, Labcd/RE;->v5:Z

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/RE;->DW:Z

    return-void
.end method

.method public tp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/RE;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public u7()Labcd/KE;
    .registers 2

    iget-object v0, p0, Labcd/RE;->FH:Labcd/KE;

    return-object v0
.end method

.method public v5()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/RE;->j6:Labcd/yE;

    return-object v0
.end method

.method public we()Labcd/RE$a;
    .registers 2

    iget-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;

    return-object v0
.end method
