.class public abstract Labcd/dJ;
.super Labcd/fJ;


# instance fields
.field private Mr:Labcd/cJ;

.field private U2:Labcd/ZI;


# direct methods
.method protected constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/fJ;-><init>(Labcd/UE;Labcd/HJ;)V

    invoke-static {}, Labcd/cJ;->j6()Labcd/cJ;

    move-result-object v0

    iput-object v0, p0, Labcd/dJ;->Mr:Labcd/cJ;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Labcd/dJ;->Mr:Labcd/cJ;

    invoke-virtual {v1, v0}, Labcd/cJ;->j6(Labcd/ZI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Labcd/dJ;->U2:Labcd/ZI;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Labcd/dJ;->U2:Labcd/ZI;

    throw v0
.end method

.method protected aM()Labcd/ZI;
    .registers 6

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    :goto_1
    iget-object v1, p0, Labcd/dJ;->Mr:Labcd/cJ;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p0}, Labcd/jJ;->FH()Labcd/kI;

    move-result-object v3

    iget-object v4, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Labcd/cJ;->j6(Labcd/HJ;Labcd/kI;Labcd/pK;I)Labcd/ZI;

    move-result-object v0

    iput-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j6(Labcd/cJ;)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    if-nez v0, :cond_0

    iput-object p1, p0, Labcd/dJ;->Mr:Labcd/cJ;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->anSSHSessionHasBeenAlreadyCreated:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->theFactoryMustNotBeNull:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
