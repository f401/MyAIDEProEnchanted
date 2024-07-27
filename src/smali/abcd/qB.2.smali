.class public Labcd/qB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB",
        "<",
        "Labcd/qB;",
        "Labcd/rB;",
        ">;"
    }
.end annotation


# instance fields
.field private Zo:Labcd/LE;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iput-object v0, p0, Labcd/qB;->Zo:Labcd/LE;

    return-void
.end method


# virtual methods
.method public call()Labcd/rB;
    .registers 11

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->pullTaskName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->u7()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "refs/heads/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v1

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v0

    sget-object v2, Labcd/iF;->DW:Labcd/iF;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v2

    const-string v0, "branch"

    const-string v4, "remote"

    invoke-virtual {v2, v0, v1, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "origin"

    :cond_0
    const-string v4, "branch"

    const-string v5, "merge"

    invoke-virtual {v2, v4, v1, v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "branch"

    const-string v6, "rebase"

    invoke-virtual {v2, v5, v1, v6, v9}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_a

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_5

    const-string v1, "remote"

    const-string v7, "url"

    invoke-virtual {v2, v1, v0, v7}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v2}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Labcd/bB;

    iget-object v7, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v2, v7}, Labcd/bB;-><init>(Labcd/UE;)V

    invoke-virtual {v2, v0}, Labcd/bB;->j6(Ljava/lang/String;)Labcd/bB;

    iget-object v7, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-virtual {v2, v7}, Labcd/bB;->j6(Labcd/LE;)Labcd/bB;

    invoke-virtual {p0, v2}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    invoke-virtual {v2}, Labcd/bB;->call()Labcd/qI;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v7, v8}, Labcd/LE;->update(I)V

    iget-object v7, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v7}, Labcd/LE;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v6, :cond_7

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "refs/heads/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_6

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    :cond_2
    if-eqz v5, :cond_8

    new-instance v4, Labcd/tB;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v4, v1}, Labcd/tB;-><init>(Labcd/UE;)V

    :try_start_1
    invoke-virtual {v4, v3}, Labcd/tB;->j6(Labcd/YD;)Labcd/tB;

    iget-object v1, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-virtual {v4, v1}, Labcd/tB;->j6(Labcd/LE;)Labcd/tB;

    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    invoke-virtual {v4, v1}, Labcd/tB;->j6(Labcd/tB$b;)Labcd/tB;

    new-instance v1, Labcd/rB;

    invoke-virtual {v4}, Labcd/tB;->call()Labcd/AB;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Labcd/rB;-><init>(Labcd/qI;Ljava/lang/String;Labcd/AB;)V
    :try_end_1
    .catch Labcd/VB; {:try_start_1 .. :try_end_1} :catch_4
    .catch Labcd/ZB; {:try_start_1 .. :try_end_1} :catch_3
    .catch Labcd/SB; {:try_start_1 .. :try_end_1} :catch_2
    .catch Labcd/NB; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Labcd/qB;->Zo:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->j6()V

    return-object v0

    :cond_3
    new-instance v0, Labcd/IB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->operationCanceled:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->pullTaskName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/IB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remote."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "url"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/OB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->missingConfigurationForKey:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/OB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v1, "local repository"

    move-object v2, v3

    goto/16 :goto_0

    :cond_6
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->couldNotGetAdvertisedRef:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v4, v2, v9

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_2
    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3, v4}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v0, Labcd/ZB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->refNotResolved:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/ZB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPullCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    new-instance v5, Labcd/iB;

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v5, v6}, Labcd/iB;-><init>(Labcd/UE;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "branch \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' of "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Labcd/iB;->j6(Ljava/lang/String;Labcd/YD;)Labcd/iB;

    :try_start_3
    invoke-virtual {v5}, Labcd/iB;->call()Labcd/pB;

    move-result-object v3

    iget-object v1, p0, Labcd/qB;->Zo:Labcd/LE;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Labcd/LE;->update(I)V

    new-instance v1, Labcd/rB;

    invoke-direct {v1, v2, v0, v3}, Labcd/rB;-><init>(Labcd/qI;Ljava/lang/String;Labcd/pB;)V
    :try_end_3
    .catch Labcd/VB; {:try_start_3 .. :try_end_3} :catch_a
    .catch Labcd/LB; {:try_start_3 .. :try_end_3} :catch_9
    .catch Labcd/KB; {:try_start_3 .. :try_end_3} :catch_8
    .catch Labcd/PB; {:try_start_3 .. :try_end_3} :catch_7
    .catch Labcd/aC; {:try_start_3 .. :try_end_3} :catch_6
    .catch Labcd/WB; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    goto/16 :goto_1

    :catch_5
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    new-instance v0, Labcd/IB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->operationCanceled:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->pullTaskName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/IB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "branch."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "merge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/OB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->missingConfigurationForKey:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/OB;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Labcd/aC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotPullOnARepoWithState:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->J0()Labcd/iF;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/aC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_4
    new-instance v0, Labcd/MB;

    invoke-direct {v0}, Labcd/MB;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :catch_b
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPullCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    :try_start_5
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->pullOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
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
