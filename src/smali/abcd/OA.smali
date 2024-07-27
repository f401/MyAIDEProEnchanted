.class public Labcd/OA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Labcd/KC;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Labcd/_J;

.field private v5:Z


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/OA;->v5:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public DW(Z)Labcd/OA;
    .registers 2

    iput-boolean p1, p0, Labcd/OA;->v5:Z

    return-object p0
.end method

.method public call()Labcd/KC;
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    const-string v2, "."

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v5

    :try_start_0
    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->XL()Labcd/KC;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v6

    new-instance v7, Labcd/YJ;

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v7, v3}, Labcd/YJ;-><init>(Labcd/UE;)V

    new-instance v3, Labcd/LC;

    invoke-direct {v3, v6}, Labcd/LC;-><init>(Labcd/MC;)V

    invoke-virtual {v7, v3}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v3, p0, Labcd/OA;->Hw:Labcd/_J;

    if-nez v3, :cond_0

    new-instance v3, Labcd/WJ;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v3, v4}, Labcd/WJ;-><init>(Labcd/UE;)V

    iput-object v3, p0, Labcd/OA;->Hw:Labcd/_J;

    :cond_0
    iget-object v3, p0, Labcd/OA;->Hw:Labcd/_J;

    invoke-virtual {v7, v3}, Labcd/YJ;->j6(Labcd/TJ;)I

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Labcd/YJ;->j6(Z)V

    if-nez v0, :cond_c

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    invoke-static {v0}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v0

    invoke-virtual {v7, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    move-object v3, v1

    :cond_1
    :goto_0
    invoke-virtual {v7}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Labcd/EE;->FH()V

    invoke-virtual {v6}, Labcd/MC;->j6()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/dB;->j6(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v5}, Labcd/EE;->Hw()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Labcd/KC;->tp()V

    :cond_2
    return-object v2

    :cond_3
    :try_start_2
    invoke-virtual {v7}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    const-class v1, Labcd/_J;

    invoke-virtual {v7, v0, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/_J;

    const/4 v1, 0x0

    const-class v8, Labcd/RC;

    invoke-virtual {v7, v1, v8}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Labcd/_J;->U2()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Labcd/OA;->v5:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const-class v8, Labcd/RC;

    invoke-virtual {v7, v1, v8}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_5
    const/4 v1, 0x0

    const-class v8, Labcd/RC;

    invoke-virtual {v7, v1, v8}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    check-cast v1, Labcd/RC;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Labcd/_J;->j3()J

    move-result-wide v8

    new-instance v10, Labcd/QC;

    invoke-direct {v10, v4}, Labcd/QC;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v11

    invoke-virtual {v11}, Labcd/QC;->tp()Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    invoke-virtual {v0, v1}, Labcd/_J;->j6(Labcd/RC;)Labcd/rE;

    move-result-object v1

    invoke-virtual {v10, v1}, Labcd/QC;->j6(Labcd/rE;)V

    sget-object v11, Labcd/rE;->v5:Labcd/rE;

    if-eq v11, v1, :cond_9

    invoke-virtual {v10, v8, v9}, Labcd/QC;->DW(J)V

    invoke-virtual {v0}, Labcd/_J;->aM()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Labcd/QC;->j6(J)V

    invoke-virtual {v0}, Labcd/_J;->a8()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    const/4 v0, 0x3

    :try_start_3
    invoke-virtual {v5, v0, v8, v9, v1}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object v0

    invoke-virtual {v10, v0}, Labcd/QC;->j6(Labcd/YD;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6, v10}, Labcd/MC;->DW(Labcd/QC;)V

    :goto_1
    move-object v3, v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-virtual {v6, v0}, Labcd/MC;->DW(Labcd/QC;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    new-instance v2, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfAddCommand:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-virtual {v5}, Labcd/EE;->Hw()V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Labcd/KC;->tp()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v0}, Labcd/QC;->j6(Labcd/YD;)V

    invoke-virtual {v6, v10}, Labcd/MC;->DW(Labcd/QC;)V

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Labcd/OA;->v5:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-virtual {v6, v0}, Labcd/MC;->DW(Labcd/QC;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :cond_b
    new-instance v0, Labcd/UB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->atLeastOnePatternIsRequired:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/UB;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :cond_c
    move-object v3, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/OA;->call()Labcd/KC;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/OA;
    .registers 3

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
