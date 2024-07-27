.class public Labcd/ol;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1374667f15b9aa4bL    # -7.433101803211034E214

    const-class v0, Labcd/ol;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x2aab867e298a1919L    # 3.840471481110837E-103

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ol;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2aab867e298a1919L    # 3.840471481110837E-103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ol;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Ljava/util/List;)V
    .registers 18
    .annotation runtime Labcd/su;
        method = 0xb99c8c301bc525L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v14, 0x799190b410050a90L    # 3.892156494995548E277

    const/4 v11, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v3, Labcd/ol;->j6:Z

    if-eqz v3, :cond_0

    const-wide v4, 0x799190b410050a90L    # 3.892156494995548E277

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v4, v5, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xj;->we()V

    move v10, v2

    move v12, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_a

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/aide/engine/Modification;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->tp()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v11, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    move v2, v10

    :goto_1
    add-int/lit8 v3, v12, 0x1

    move v10, v2

    move v12, v3

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v10

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v10

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->u7()I

    move-result v3

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->Zo()I

    move-result v4

    invoke-interface {v2, v3, v4}, Labcd/Nk$a;->j6(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v10

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v10

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v8

    new-instance v2, Labcd/Tl;

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->u7()I

    move-result v4

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->gn()I

    move-result v5

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->Hw()I

    move-result v6

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->FH()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v10

    goto :goto_1

    :cond_4
    :try_start_6
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->u7()I

    move-result v3

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->gn()I

    move-result v4

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->Hw()I

    move-result v5

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->FH()I

    move-result v6

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->DW()I

    move-result v7

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->j6()I

    move-result v8

    invoke-interface/range {v2 .. v8}, Labcd/Nk$a;->DW(IIIIII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :catch_2
    move-exception v2

    :try_start_7
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :cond_5
    :try_start_8
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->u7()I

    move-result v3

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->gn()I

    move-result v4

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->Hw()I

    move-result v5

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->FH()I

    move-result v6

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->DW()I

    move-result v7

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->j6()I

    move-result v8

    invoke-interface/range {v2 .. v8}, Labcd/Nk$a;->j6(IIIIII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :try_start_9
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v10

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->gn()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->u7()I

    move-result v4

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->Hw()I

    move-result v5

    invoke-static {}, Lcom/aide/ui/aa;->cn()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Labcd/Xj;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_2
    if-ltz v3, :cond_7

    add-int/lit8 v5, v12, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/Modification;

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->we()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :cond_8
    :try_start_a
    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->VH()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/FileSystemUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Labcd/Nk;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v3

    invoke-static {v2}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/Ji;->DW(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v2, v11

    goto/16 :goto_1

    :catch_4
    move-exception v2

    :try_start_b
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :cond_9
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->u7()I

    move-result v3

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->gn()I

    move-result v4

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->Hw()I

    move-result v5

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->FH()I

    move-result v6

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->VH()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->EQ()Z

    move-result v8

    invoke-virtual {v9}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v13

    invoke-virtual {v13}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface/range {v2 .. v9}, Labcd/Nk$a;->j6(IIIILjava/lang/String;ZZ)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :catch_5
    move-exception v2

    :try_start_d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v2, v10

    goto/16 :goto_1

    :cond_a
    :try_start_e
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->J0()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_3
    if-eqz v10, :cond_b

    :try_start_f
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    :cond_b
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->VH()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    :goto_4
    invoke-virtual {v2}, Labcd/Xj;->gn()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    return-void

    :catch_6
    move-exception v2

    :try_start_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Modify Files"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_3

    :catch_7
    move-exception v2

    :try_start_12
    invoke-static {v2}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xj;->gn()V

    throw v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    :catch_8
    move-exception v2

    sget-boolean v3, Labcd/ol;->DW:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v14, v15, v0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    throw v2
.end method

.method static synthetic j6(Labcd/ol;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ol;->DW(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 5

    const-wide v2, -0x336be9574469c238L    # -8.070248609656438E60

    :try_start_0
    sget-boolean v0, Labcd/ol;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x336be9574469c238L    # -8.070248609656438E60

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Labcd/ml;

    invoke-direct {v1, p0}, Labcd/ml;-><init>(Labcd/ol;)V

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/service/v;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ol;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v6, -0x4039bdde4aea152dL    # -0.17389317838736548

    :try_start_0
    sget-boolean v0, Labcd/ol;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4039bdde4aea152dL    # -0.17389317838736548

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Hw()V

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/Modification;

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->tp()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Labcd/ol;->DW(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ol;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v4, Labcd/nl;

    invoke-direct {v4, p0, p1}, Labcd/nl;-><init>(Labcd/ol;Ljava/util/List;)V

    const v1, 0x7f0d05d5

    const v2, 0x7f0d05d4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
