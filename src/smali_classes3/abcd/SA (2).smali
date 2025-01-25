.class public Labcd/SA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Labcd/WA;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Labcd/SA;->FH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call()Labcd/WA;
    .registers 15

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Labcd/dB;->j6()V

    new-instance v1, Labcd/qG;

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v1, v2}, Labcd/qG;-><init>(Labcd/UE;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_11
    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v4

    if-eqz v4, :cond_141

    invoke-interface {v4}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v4

    iget-object v5, p0, Labcd/SA;->FH:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_14f
    .catchall {:try_start_11 .. :try_end_2e} :catchall_14d

    if-nez v7, :cond_39

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    new-instance v1, Labcd/WA;

    invoke-direct {v1, v6, v0}, Labcd/WA;-><init>(Labcd/dG;Ljava/util/List;)V

    return-object v1

    :cond_39
    :try_start_39
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/ME;

    invoke-interface {v7}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v8

    if-nez v8, :cond_49

    invoke-interface {v7}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v8

    :cond_49
    invoke-virtual {v1, v8}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v8

    invoke-virtual {v8}, Labcd/dG;->lg()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v3, :cond_11f

    invoke-virtual {v8, v2}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v9

    invoke-virtual {v1, v9}, Labcd/qG;->DW(Labcd/iG;)V

    sget-object v11, Labcd/vF;->Hw:Labcd/BF;

    iget-object v12, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v11, v12}, Labcd/BF;->j6(Labcd/UE;)Labcd/CF;

    move-result-object v11

    check-cast v11, Labcd/xF;

    new-instance v12, Labcd/WJ;

    iget-object v13, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v12, v13}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v11, v12}, Labcd/xF;->j6(Labcd/_J;)V

    invoke-virtual {v9}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v9

    invoke-virtual {v11, v9}, Labcd/CF;->DW(Labcd/YD;)V

    new-array v9, v10, [Labcd/YD;

    aput-object v4, v9, v2

    aput-object v8, v9, v3

    invoke-virtual {v11, v9}, Labcd/CF;->j6([Labcd/YD;)Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-virtual {v4}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v9

    invoke-virtual {v9}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v11}, Labcd/xF;->FH()Labcd/yE;

    move-result-object v10

    invoke-static {v9, v10}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v9

    if-eqz v9, :cond_94

    goto :goto_2a

    :cond_94
    new-instance v6, Labcd/NC;

    iget-object v9, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v10

    iget-object v12, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v12}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v12

    invoke-virtual {v11}, Labcd/xF;->FH()Labcd/yE;

    move-result-object v11

    invoke-direct {v6, v9, v10, v12, v11}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    invoke-virtual {v6, v3}, Labcd/NC;->j6(Z)V

    invoke-virtual {v6}, Labcd/NC;->j6()Z

    new-instance v6, Labcd/cB;

    invoke-virtual {p0}, Labcd/dB;->DW()Labcd/UE;

    move-result-object v9

    invoke-direct {v6, v9}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v6}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v6

    invoke-virtual {v8}, Labcd/dG;->a8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Labcd/ZA;->j6(Ljava/lang/String;)Labcd/ZA;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cherry-pick: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Labcd/ZA;->FH(Ljava/lang/String;)Labcd/ZA;

    invoke-virtual {v8}, Labcd/dG;->Mr()Labcd/KE;

    move-result-object v8

    invoke-virtual {v6, v8}, Labcd/ZA;->j6(Labcd/KE;)Labcd/ZA;

    invoke-virtual {v6}, Labcd/ZA;->call()Labcd/dG;

    move-result-object v6

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    :cond_e8
    invoke-virtual {v11}, Labcd/xF;->Zo()Z

    move-result v0

    if-eqz v0, :cond_fb

    new-instance v0, Labcd/WA;

    invoke-virtual {v11}, Labcd/xF;->VH()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v4}, Labcd/WA;-><init>(Ljava/util/Map;)V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_f7} :catch_14f
    .catchall {:try_start_39 .. :try_end_f7} :catchall_14d

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    return-object v0

    :cond_fb
    :try_start_fb
    new-instance v0, Labcd/sF;

    invoke-direct {v0}, Labcd/sF;-><init>()V

    invoke-virtual {v8}, Labcd/dG;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Labcd/xF;->u7()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Labcd/sF;->j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v8}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v4, v8}, Labcd/UE;->j6(Labcd/yE;)V

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4, v0}, Labcd/UE;->Zo(Ljava/lang/String;)V

    sget-object v0, Labcd/WA;->j6:Labcd/WA;
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_11b} :catch_14f
    .catchall {:try_start_fb .. :try_end_11b} :catchall_14d

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    return-object v0

    :cond_11f
    :try_start_11f
    new-instance v0, Labcd/TB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->canOnlyCherryPickCommitsWithOneParent:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v8}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v8}, Labcd/dG;->lg()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Labcd/TB;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_141
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v0, v4}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_14d} :catch_14f
    .catchall {:try_start_11f .. :try_end_14d} :catchall_14d

    :catchall_14d
    move-exception v0

    goto :goto_164

    :catch_14f
    move-exception v0

    :try_start_150
    new-instance v4, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfCherryPickCommand:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_164
    .catchall {:try_start_150 .. :try_end_164} :catchall_14d

    :goto_164
    invoke-virtual {v1}, Labcd/qG;->EQ()V

    goto :goto_169

    :goto_168
    throw v0

    :goto_169
    goto :goto_168
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/SA;->call()Labcd/WA;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/ME;)Labcd/SA;
    .registers 3

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/SA;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public j6(Labcd/YD;)Labcd/SA;
    .registers 3

    invoke-virtual {p1}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Labcd/SA;->j6(Ljava/lang/String;Labcd/YD;)Labcd/SA;

    return-object p0
.end method

.method public j6(Ljava/lang/String;Labcd/YD;)Labcd/SA;
    .registers 5

    new-instance v0, Labcd/BE$c;

    sget-object v1, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-virtual {p2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {p0, v0}, Labcd/SA;->j6(Labcd/ME;)Labcd/SA;

    return-object p0
.end method
