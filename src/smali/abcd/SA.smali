.class public Labcd/SA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Labcd/WA;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/SA;->FH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call()Labcd/WA;
    .registers 13

    const/4 v11, 0x1

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Labcd/dB;->j6()V

    new-instance v5, Labcd/qG;

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v5, v0}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v5, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v3

    iget-object v0, p0, Labcd/SA;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Labcd/qG;->EQ()V

    new-instance v0, Labcd/WA;

    invoke-direct {v0, v2, v4}, Labcd/WA;-><init>(Labcd/dG;Ljava/util/List;)V

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    :cond_2
    invoke-virtual {v5, v1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v7

    invoke-virtual {v7}, Labcd/dG;->lg()I

    move-result v1

    if-ne v1, v11, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v8

    invoke-virtual {v5, v8}, Labcd/qG;->DW(Labcd/iG;)V

    sget-object v1, Labcd/vF;->Hw:Labcd/BF;

    iget-object v9, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1, v9}, Labcd/BF;->j6(Labcd/UE;)Labcd/CF;

    move-result-object v1

    check-cast v1, Labcd/xF;

    new-instance v9, Labcd/WJ;

    iget-object v10, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v9, v10}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v1, v9}, Labcd/xF;->j6(Labcd/_J;)V

    invoke-virtual {v8}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v8

    invoke-virtual {v1, v8}, Labcd/CF;->DW(Labcd/YD;)V

    const/4 v8, 0x2

    new-array v8, v8, [Labcd/YD;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v1, v8}, Labcd/CF;->j6([Labcd/YD;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v8

    invoke-virtual {v8}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v1}, Labcd/xF;->FH()Labcd/yE;

    move-result-object v9

    invoke-static {v8, v9}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v2, Labcd/NC;

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v9

    iget-object v10, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v10}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v10

    invoke-virtual {v1}, Labcd/xF;->FH()Labcd/yE;

    move-result-object v1

    invoke-direct {v2, v8, v9, v10, v1}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Labcd/NC;->j6(Z)V

    invoke-virtual {v2}, Labcd/NC;->j6()Z

    new-instance v1, Labcd/cB;

    invoke-virtual {p0}, Labcd/dB;->DW()Labcd/UE;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/cB;-><init>(Labcd/UE;)V

    invoke-virtual {v1}, Labcd/cB;->gn()Labcd/ZA;

    move-result-object v1

    invoke-virtual {v7}, Labcd/dG;->a8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/ZA;->j6(Ljava/lang/String;)Labcd/ZA;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "cherry-pick: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Labcd/dG;->er()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/ZA;->FH(Ljava/lang/String;)Labcd/ZA;

    invoke-virtual {v7}, Labcd/dG;->Mr()Labcd/KE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/ZA;->j6(Labcd/KE;)Labcd/ZA;

    invoke-virtual {v1}, Labcd/ZA;->call()Labcd/dG;

    move-result-object v1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Labcd/xF;->Zo()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Labcd/WA;

    invoke-virtual {v1}, Labcd/xF;->VH()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/WA;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Labcd/qG;->EQ()V

    goto/16 :goto_1

    :cond_4
    :try_start_2
    new-instance v0, Labcd/sF;

    invoke-direct {v0}, Labcd/sF;-><init>()V

    invoke-virtual {v7}, Labcd/dG;->a8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Labcd/xF;->u7()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Labcd/sF;->j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v7}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v1, v7}, Labcd/UE;->j6(Labcd/yE;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1, v0}, Labcd/UE;->Zo(Ljava/lang/String;)V

    sget-object v0, Labcd/WA;->j6:Labcd/WA;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Labcd/qG;->EQ()V

    goto/16 :goto_1

    :cond_5
    :try_start_3
    new-instance v0, Labcd/TB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->canOnlyCherryPickCommitsWithOneParent:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v7}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Labcd/dG;->lg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/TB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfCherryPickCommand:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Labcd/qG;->EQ()V

    throw v0

    :cond_6
    :try_start_5
    new-instance v0, Labcd/VB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->commitOnRepoWithoutHEADCurrentlyNotSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/VB;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
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
    .registers 6

    new-instance v0, Labcd/BE$c;

    sget-object v1, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-virtual {p2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {p0, v0}, Labcd/SA;->j6(Labcd/ME;)Labcd/SA;

    return-object p0
.end method
