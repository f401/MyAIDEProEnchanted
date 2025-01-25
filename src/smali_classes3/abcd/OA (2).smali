.class public Labcd/OA;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Labcd/KC;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Labcd/_J;

.field private v5:Z


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/OA;->v5:Z

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Labcd/OA;->FH:Ljava/util/Collection;

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

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13f

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    const-string v1, "."

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1a
    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v3
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_128
    .catchall {:try_start_1a .. :try_end_20} :catchall_126

    :try_start_20
    invoke-virtual {v3}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v4

    new-instance v5, Labcd/YJ;

    iget-object v6, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v5, v6}, Labcd/YJ;-><init>(Labcd/UE;)V

    new-instance v6, Labcd/LC;

    invoke-direct {v6, v4}, Labcd/LC;-><init>(Labcd/MC;)V

    invoke-virtual {v5, v6}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v6, p0, Labcd/OA;->Hw:Labcd/_J;

    if-nez v6, :cond_40

    new-instance v6, Labcd/WJ;

    iget-object v7, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v6, v7}, Labcd/WJ;-><init>(Labcd/UE;)V

    iput-object v6, p0, Labcd/OA;->Hw:Labcd/_J;

    :cond_40
    iget-object v6, p0, Labcd/OA;->Hw:Labcd/_J;

    invoke-virtual {v5, v6}, Labcd/YJ;->j6(Labcd/TJ;)I

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Labcd/YJ;->j6(Z)V

    if-nez v0, :cond_54

    iget-object v0, p0, Labcd/OA;->FH:Ljava/util/Collection;

    invoke-static {v0}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v0

    invoke-virtual {v5, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    :cond_54
    :goto_54
    invoke-virtual {v5}, Labcd/YJ;->EQ()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_6d

    invoke-virtual {v1}, Labcd/EE;->FH()V

    invoke-virtual {v4}, Labcd/MC;->j6()Z

    invoke-virtual {p0, v7}, Labcd/dB;->j6(Z)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_64} :catch_123
    .catchall {:try_start_20 .. :try_end_64} :catchall_121

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Labcd/KC;->tp()V

    :cond_6c
    return-object v3

    :cond_6d
    :try_start_6d
    invoke-virtual {v5}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const-class v8, Labcd/_J;

    invoke-virtual {v5, v6, v8}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v8

    check-cast v8, Labcd/_J;

    const-class v9, Labcd/RC;

    invoke-virtual {v5, v7, v9}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v9

    if-nez v9, :cond_89

    if-eqz v8, :cond_89

    invoke-virtual {v8}, Labcd/_J;->U2()Z

    move-result v9

    if-nez v9, :cond_54

    :cond_89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    iget-boolean v9, p0, Labcd/OA;->v5:Z

    if-eqz v9, :cond_9b

    const-class v9, Labcd/RC;

    invoke-virtual {v5, v7, v9}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v9

    if-eqz v9, :cond_54

    :cond_9b
    const-class v9, Labcd/RC;

    invoke-virtual {v5, v7, v9}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v7

    check-cast v7, Labcd/RC;

    if-eqz v8, :cond_118

    invoke-virtual {v8}, Labcd/_J;->j3()J

    move-result-wide v9

    new-instance v11, Labcd/QC;

    invoke-direct {v11, v0}, Labcd/QC;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_c9

    invoke-virtual {v7}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v12

    if-eqz v12, :cond_c9

    invoke-virtual {v7}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v12

    invoke-virtual {v12}, Labcd/QC;->tp()Z

    move-result v12

    if-nez v12, :cond_c1

    goto :goto_c9

    :cond_c1
    invoke-virtual {v7}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    :goto_c5
    invoke-virtual {v4, v0}, Labcd/MC;->DW(Labcd/QC;)V

    goto :goto_54

    :cond_c9
    :goto_c9
    invoke-virtual {v8, v7}, Labcd/_J;->j6(Labcd/RC;)Labcd/rE;

    move-result-object v7

    invoke-virtual {v11, v7}, Labcd/QC;->j6(Labcd/rE;)V

    sget-object v12, Labcd/rE;->v5:Labcd/rE;

    if-eq v12, v7, :cond_f6

    invoke-virtual {v11, v9, v10}, Labcd/QC;->DW(J)V

    invoke-virtual {v8}, Labcd/_J;->aM()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Labcd/QC;->j6(J)V

    invoke-virtual {v8}, Labcd/_J;->a8()Ljava/io/InputStream;

    move-result-object v2
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_e2} :catch_123
    .catchall {:try_start_6d .. :try_end_e2} :catchall_121

    const/4 v7, 0x3

    :try_start_e3
    invoke-virtual {v1, v7, v9, v10, v2}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object v7

    invoke-virtual {v11, v7}, Labcd/QC;->j6(Labcd/YD;)V
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_f1

    :try_start_ea
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_ed
    invoke-virtual {v4, v11}, Labcd/MC;->DW(Labcd/QC;)V

    goto :goto_115

    :catchall_f1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_f6
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v8}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Labcd/cB;->j6(Ljava/io/File;)Labcd/cB;

    move-result-object v7

    invoke-virtual {v7}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v7

    const-string v8, "HEAD"

    invoke-virtual {v7, v8}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_54

    invoke-virtual {v11, v7}, Labcd/QC;->j6(Labcd/YD;)V

    goto :goto_ed

    :goto_115
    move-object v2, v0

    goto/16 :goto_54

    :cond_118
    iget-boolean v0, p0, Labcd/OA;->v5:Z

    if-nez v0, :cond_54

    invoke-virtual {v7}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_120} :catch_123
    .catchall {:try_start_ea .. :try_end_120} :catchall_121

    goto :goto_c5

    :catchall_121
    move-exception v0

    goto :goto_136

    :catch_123
    move-exception v0

    move-object v2, v3

    goto :goto_129

    :catchall_126
    move-exception v0

    goto :goto_135

    :catch_128
    move-exception v0

    :goto_129
    :try_start_129
    new-instance v3, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfAddCommand:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_135
    .catchall {:try_start_129 .. :try_end_135} :catchall_126

    :goto_135
    move-object v3, v2

    :goto_136
    invoke-virtual {v1}, Labcd/EE;->Hw()V

    if-eqz v3, :cond_13e

    invoke-virtual {v3}, Labcd/KC;->tp()V

    :cond_13e
    throw v0

    :cond_13f
    new-instance v0, Labcd/UB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->atLeastOnePatternIsRequired:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/UB;-><init>(Ljava/lang/String;)V

    goto :goto_14c

    :goto_14b
    throw v0

    :goto_14c
    goto :goto_14b
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
