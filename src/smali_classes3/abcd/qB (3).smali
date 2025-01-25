.class public Labcd/qB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB<",
        "Labcd/qB;",
        "Labcd/rB;",
        ">;"
    }
.end annotation


# instance fields
.field private Zo:Labcd/LE;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    iput-object p1, p0, Labcd/qB;->Zo:Labcd/LE;

    return-void
.end method


# virtual methods
.method public call()Labcd/rB;
    .registers 13

    const-string v0, "refs/heads/"

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v1, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->pullTaskName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    :try_start_11
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->u7()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_263

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25d

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_25} :catch_26f

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v2

    sget-object v3, Labcd/iF;->DW:Labcd/iF;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_23f

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v2

    const-string v5, "branch"

    const-string v6, "remote"

    invoke-virtual {v2, v5, v1, v6}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_47

    const-string v7, "origin"

    :cond_47
    const-string v8, "merge"

    invoke-virtual {v2, v5, v1, v8}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rebase"

    invoke-virtual {v2, v5, v1, v10, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const-string v10, "."

    if-eqz v9, :cond_217

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    const/4 v8, 0x0

    if-eqz v1, :cond_c8

    const-string v11, "url"

    invoke-virtual {v2, v6, v7, v11}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a0

    iget-object v6, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v6}, Labcd/LE;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_86

    new-instance v6, Labcd/bB;

    iget-object v10, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v6, v10}, Labcd/bB;-><init>(Labcd/UE;)V

    invoke-virtual {v6, v7}, Labcd/bB;->j6(Ljava/lang/String;)Labcd/bB;

    iget-object v10, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-virtual {v6, v10}, Labcd/bB;->j6(Labcd/LE;)Labcd/bB;

    invoke-virtual {p0, v6}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    invoke-virtual {v6}, Labcd/bB;->call()Labcd/qI;

    move-result-object v6

    goto :goto_cb

    :cond_86
    new-instance v0, Labcd/IB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->operationCanceled:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->pullTaskName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/IB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remote."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/OB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->missingConfigurationForKey:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/OB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c8
    const-string v2, "local repository"

    move-object v6, v8

    :goto_cb
    iget-object v10, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v10, v4}, Labcd/LE;->update(I)V

    iget-object v10, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v10}, Labcd/LE;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_1fd

    if-eqz v1, :cond_10d

    if-eqz v6, :cond_f2

    invoke-virtual {v6, v9}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v8

    if-nez v8, :cond_f2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v8

    :cond_f2
    if-eqz v8, :cond_f9

    invoke-interface {v8}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    goto :goto_115

    :cond_f9
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->couldNotGetAdvertisedRef:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10d
    :try_start_10d
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0, v9}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_113} :catch_1f0

    if-eqz v0, :cond_1dc

    :goto_115
    if-eqz v5, :cond_161

    new-instance v1, Labcd/tB;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v2}, Labcd/tB;-><init>(Labcd/UE;)V

    :try_start_11e
    invoke-virtual {v1, v0}, Labcd/tB;->j6(Labcd/YD;)Labcd/tB;

    iget-object v0, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-virtual {v1, v0}, Labcd/tB;->j6(Labcd/LE;)Labcd/tB;

    sget-object v0, Labcd/tB$b;->j6:Labcd/tB$b;

    invoke-virtual {v1, v0}, Labcd/tB;->j6(Labcd/tB$b;)Labcd/tB;

    new-instance v0, Labcd/rB;

    invoke-virtual {v1}, Labcd/tB;->call()Labcd/AB;

    move-result-object v1

    invoke-direct {v0, v6, v7, v1}, Labcd/rB;-><init>(Labcd/qI;Ljava/lang/String;Labcd/AB;)V
    :try_end_134
    .catch Labcd/VB; {:try_start_11e .. :try_end_134} :catch_156
    .catch Labcd/ZB; {:try_start_11e .. :try_end_134} :catch_14b
    .catch Labcd/SB; {:try_start_11e .. :try_end_134} :catch_140
    .catch Labcd/NB; {:try_start_11e .. :try_end_134} :catch_135

    goto :goto_194

    :catch_135
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_140
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_14b
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_156
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_161
    new-instance v1, Labcd/iB;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v3}, Labcd/iB;-><init>(Labcd/UE;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "branch \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Labcd/iB;->j6(Ljava/lang/String;Labcd/YD;)Labcd/iB;

    :try_start_185
    invoke-virtual {v1}, Labcd/iB;->call()Labcd/pB;

    move-result-object v0

    iget-object v1, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v1, v4}, Labcd/LE;->update(I)V

    new-instance v1, Labcd/rB;

    invoke-direct {v1, v6, v7, v0}, Labcd/rB;-><init>(Labcd/qI;Ljava/lang/String;Labcd/pB;)V
    :try_end_193
    .catch Labcd/VB; {:try_start_185 .. :try_end_193} :catch_1d1
    .catch Labcd/LB; {:try_start_185 .. :try_end_193} :catch_1c6
    .catch Labcd/KB; {:try_start_185 .. :try_end_193} :catch_1bb
    .catch Labcd/PB; {:try_start_185 .. :try_end_193} :catch_1b0
    .catch Labcd/aC; {:try_start_185 .. :try_end_193} :catch_1a5
    .catch Labcd/WB; {:try_start_185 .. :try_end_193} :catch_19a

    move-object v0, v1

    :goto_194
    iget-object v1, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    return-object v0

    :catch_19a
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1a5
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1b0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1bb
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1c6
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1d1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1dc
    :try_start_1dc
    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1f0} :catch_1f0

    :catch_1f0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPullCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1fd
    new-instance v0, Labcd/IB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->operationCanceled:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->pullTaskName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/IB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "branch."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/OB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->missingConfigurationForKey:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/OB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23f
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotPullOnARepoWithState:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25d
    :try_start_25d
    new-instance v0, Labcd/MB;

    invoke-direct {v0}, Labcd/MB;-><init>()V

    throw v0

    :cond_263
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->pullOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_26f} :catch_26f

    :catch_26f
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPullCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/qB;->call()Labcd/rB;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/LE;)Labcd/qB;
    .registers 2

    iput-object p1, p0, Labcd/qB;->Zo:Labcd/LE;

    return-object p0
.end method
