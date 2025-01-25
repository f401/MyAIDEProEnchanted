.class public abstract Labcd/dJ;
.super Labcd/fJ;


# instance fields
.field private Mr:Labcd/cJ;

.field private U2:Labcd/ZI;


# direct methods
.method protected constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/fJ;-><init>(Labcd/UE;Labcd/HJ;)V

    invoke-static {}, Labcd/cJ;->j6()Labcd/cJ;

    move-result-object p1

    iput-object p1, p0, Labcd/dJ;->Mr:Labcd/cJ;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 4

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Labcd/dJ;->Mr:Labcd/cJ;

    invoke-virtual {v2, v0}, Labcd/cJ;->j6(Labcd/ZI;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    iput-object v1, p0, Labcd/dJ;->U2:Labcd/ZI;

    goto :goto_11

    :catchall_d
    move-exception v0

    iput-object v1, p0, Labcd/dJ;->U2:Labcd/ZI;

    throw v0

    :cond_11
    :goto_11
    return-void
.end method

.method protected aM()Labcd/ZI;
    .registers 6

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
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

    return-object v0
.end method

.method public j6(Labcd/cJ;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Labcd/dJ;->U2:Labcd/ZI;

    if-nez v0, :cond_9

    iput-object p1, p0, Labcd/dJ;->Mr:Labcd/cJ;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->anSSHSessionHasBeenAlreadyCreated:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->theFactoryMustNotBeNull:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
