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

    move-result-object p1

    iput-object p1, p0, Labcd/RE;->Zo:Labcd/yE;

    const-string p1, ""

    iput-object p1, p0, Labcd/RE;->Hw:Ljava/lang/String;

    return-void
.end method

.method private aM()V
    .registers 3

    iget-object v0, p0, Labcd/RE;->j6:Labcd/yE;

    if-eqz v0, :cond_5

    return-void

    :cond_5
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

    if-eqz v0, :cond_11

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;

    return-object p1

    :cond_11
    const/4 v0, 0x1

    :try_start_12
    invoke-virtual {p0, v0}, Labcd/RE;->DW(Z)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Labcd/RE;->VH:Labcd/yE;

    if-eqz v0, :cond_39

    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    if-eqz v0, :cond_27

    goto :goto_2b

    :cond_27
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    :goto_2b
    iget-object v1, p0, Labcd/RE;->VH:Labcd/yE;

    invoke-static {v1, v0}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_39
    :try_start_39
    iget-object v0, p0, Labcd/RE;->Zo:Labcd/yE;

    if-nez v0, :cond_47

    sget-object p1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {p2, p1}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_47
    :try_start_47
    iget-object v0, p0, Labcd/RE;->j6:Labcd/yE;

    invoke-static {p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/YD;)Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/RE;->Zo:Labcd/yE;

    invoke-static {p1, v1}, Labcd/RE;->j6(Labcd/qG;Labcd/YD;)Labcd/iG;

    move-result-object v1

    if-ne v0, v1, :cond_63

    iget-boolean v2, p0, Labcd/RE;->tp:Z

    if-nez v2, :cond_63

    sget-object p1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {p2, p1}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_63
    :try_start_63
    instance-of v2, v0, Labcd/dG;

    if-eqz v2, :cond_7f

    instance-of v2, v1, Labcd/dG;

    if-eqz v2, :cond_7f

    check-cast v1, Labcd/dG;

    check-cast v0, Labcd/dG;

    invoke-virtual {p1, v1, v0}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result p1

    if-eqz p1, :cond_7f

    sget-object p1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {p2, p1}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;

    move-result-object p1
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_7f
    :try_start_7f
    invoke-virtual {p0}, Labcd/RE;->J0()Z

    move-result p1

    if-eqz p1, :cond_8f

    sget-object p1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {p2, p1}, Labcd/RE$b;->j6(Labcd/RE$a;)Labcd/RE$a;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_8f
    :try_start_8f
    sget-object p1, Labcd/RE$a;->VH:Labcd/RE$a;
    :try_end_91
    .catchall {:try_start_8f .. :try_end_91} :catchall_95

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :catchall_95
    move-exception p1

    invoke-virtual {p0}, Labcd/RE;->QX()V

    throw p1
.end method

.method private static j6(Labcd/qG;Labcd/YD;)Labcd/iG;
    .registers 2

    if-eqz p1, :cond_8

    :try_start_2
    invoke-virtual {p0, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object p0
    :try_end_6
    .catch Labcd/fD; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return-object p0
.end method


# virtual methods
.method protected abstract DW(Labcd/RE$a;)Labcd/RE$a;
.end method

.method public DW(Labcd/qG;)Labcd/RE$a;
    .registers 3

    invoke-direct {p0}, Labcd/RE;->aM()V

    :try_start_3
    new-instance v0, Labcd/PE;

    invoke-direct {v0, p0}, Labcd/PE;-><init>(Labcd/RE;)V

    invoke-direct {p0, p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/RE$b;)Labcd/RE$a;

    move-result-object p1

    iput-object p1, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    sget-object v0, Labcd/RE$a;->u7:Labcd/RE$a;

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;

    throw p1
.end method

.method public DW(Ljava/lang/String;)Labcd/RE$a;
    .registers 6

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/OE;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;

    return-object p1

    :cond_1a
    :try_start_1a
    invoke-virtual {p0, v2}, Labcd/RE;->DW(Z)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_82
    .catchall {:try_start_1a .. :try_end_22} :catchall_80

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_26
    :try_start_26
    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/RE;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object p1, Labcd/RE$a;->FH:Labcd/RE$a;

    iput-object p1, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_4c} :catch_82
    .catchall {:try_start_26 .. :try_end_4c} :catchall_80

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :cond_50
    if-eqz v0, :cond_5f

    :try_start_52
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/RE;->j6(Labcd/yE;)V

    :cond_5f
    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/RE;->DW(Labcd/YD;)V

    :cond_76
    invoke-virtual {p0, p1}, Labcd/RE;->j6(Ljava/lang/String;)Labcd/RE$a;

    move-result-object p1

    iput-object p1, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_7c} :catch_82
    .catchall {:try_start_52 .. :try_end_7c} :catchall_80

    invoke-virtual {p0}, Labcd/RE;->QX()V

    return-object p1

    :catchall_80
    move-exception p1

    goto :goto_88

    :catch_82
    move-exception p1

    :try_start_83
    sget-object v0, Labcd/RE$a;->u7:Labcd/RE$a;

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;

    throw p1
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_80

    :goto_88
    invoke-virtual {p0}, Labcd/RE;->QX()V

    throw p1

    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->illegalArgumentNotA:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 2

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/RE;->j6:Labcd/yE;

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

    :try_start_9
    invoke-virtual {p0, v0}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_11
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

    :try_start_9
    invoke-virtual {p0, v0}, Labcd/RE;->j6(Labcd/qG;)Labcd/RE$a;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_11
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

    move-result-object v0

    const-string v1, "refs/heads/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Labcd/RE;->gn()Labcd/OE;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Labcd/OE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_38

    :cond_25
    invoke-interface {v1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object p1, Labcd/RE$a;->gn:Labcd/RE$a;

    iput-object p1, p0, Labcd/RE;->gn:Labcd/RE$a;

    return-object p1

    :cond_38
    :goto_38
    :try_start_38
    new-instance v0, Labcd/QE;

    invoke-direct {v0, p0}, Labcd/QE;-><init>(Labcd/RE;)V

    invoke-direct {p0, p1, v0}, Labcd/RE;->j6(Labcd/qG;Labcd/RE$b;)Labcd/RE$a;

    move-result-object p1

    iput-object p1, p0, Labcd/RE;->gn:Labcd/RE$a;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception p1

    sget-object v0, Labcd/RE$a;->u7:Labcd/RE$a;

    iput-object v0, p0, Labcd/RE;->gn:Labcd/RE$a;

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method protected abstract j6(Ljava/lang/String;)Labcd/RE$a;
.end method

.method public j6(Labcd/KE;)V
    .registers 2

    iput-object p1, p0, Labcd/RE;->FH:Labcd/KE;

    return-void
.end method

.method public j6(Labcd/YD;)V
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Labcd/RE;->VH:Labcd/yE;

    return-void
.end method

.method protected j6(Labcd/yE;)V
    .registers 2

    iput-object p1, p0, Labcd/RE;->Zo:Labcd/yE;

    return-void
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    invoke-virtual {p0}, Labcd/RE;->DW()V

    goto :goto_18

    :cond_8
    if-nez p1, :cond_14

    if-eqz p2, :cond_14

    const-string p1, ""

    iput-object p1, p0, Labcd/RE;->Hw:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/RE;->v5:Z

    goto :goto_18

    :cond_14
    iput-object p1, p0, Labcd/RE;->Hw:Ljava/lang/String;

    iput-boolean p2, p0, Labcd/RE;->v5:Z

    :goto_18
    return-void
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
