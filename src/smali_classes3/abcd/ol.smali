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
    .registers 3

    const-class v0, Labcd/ol;

    const-wide v1, -0x1374667f15b9aa4bL  # -7.433101803211034E214

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2aab867e298a1919L  # 3.840471481110837E-103

    :try_start_6
    sget-boolean v3, Labcd/ol;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ol;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private DW(Ljava/util/List;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = 0xb99c8c301bc525L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, 0x799190b410050a90L  # 3.892156494995548E277

    :try_start_9
    sget-boolean v0, Labcd/ol;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_215

    :cond_10
    :try_start_10
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->we()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_202

    const-string v8, "Modify Files"

    if-ge v6, v0, :cond_1d6

    :try_start_22
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/Modification;

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->tp()I

    move-result v9
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_202

    if-eqz v9, :cond_193

    const/4 v10, 0x1

    if-eq v9, v10, :cond_155

    const/4 v11, 0x2

    if-eq v9, v11, :cond_116

    const/4 v10, 0x3

    if-eq v9, v10, :cond_e6

    const/4 v10, 0x7

    if-eq v9, v10, :cond_b7

    const/16 v10, 0x8

    if-eq v9, v10, :cond_94

    const/16 v10, 0xb

    if-eq v9, v10, :cond_75

    const/16 v10, 0xc

    if-eq v9, v10, :cond_48

    goto/16 :goto_1d2

    :cond_48
    :try_start_48
    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->VH()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_69} :catch_6b
    .catchall {:try_start_48 .. :try_end_69} :catchall_202

    goto/16 :goto_1d2

    :catch_6b
    move-exception v0

    :try_start_6c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v9

    :goto_70
    invoke-static {v9, v8, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_202

    goto/16 :goto_1d2

    :cond_75
    :try_start_75
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->u7()I

    move-result v10

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->Zo()I

    move-result v0

    invoke-interface {v9, v10, v0}, Labcd/Nk$a;->j6(II)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8c} :catch_8e
    .catchall {:try_start_75 .. :try_end_8c} :catchall_202

    goto/16 :goto_1d2

    :catch_8e
    move-exception v0

    :try_start_8f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v9

    goto :goto_70

    :cond_94
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v8

    new-instance v15, Labcd/Tl;

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->u7()I

    move-result v11

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->gn()I

    move-result v12

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->Hw()I

    move-result v13

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->FH()I

    move-result v14

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v8, v15, v5}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;Z)V
    :try_end_b5
    .catchall {:try_start_8f .. :try_end_b5} :catchall_202

    goto/16 :goto_1d2

    :cond_b7
    :try_start_b7
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v11

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->u7()I

    move-result v12

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->gn()I

    move-result v13

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->Hw()I

    move-result v14

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->FH()I

    move-result v15

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->DW()I

    move-result v16

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->j6()I

    move-result v17

    invoke-interface/range {v11 .. v17}, Labcd/Nk$a;->DW(IIIIII)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_de} :catch_e0
    .catchall {:try_start_b7 .. :try_end_de} :catchall_202

    goto/16 :goto_1d2

    :catch_e0
    move-exception v0

    :try_start_e1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v9
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_202

    goto :goto_70

    :cond_e6
    :try_start_e6
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v11

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->u7()I

    move-result v12

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->gn()I

    move-result v13

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->Hw()I

    move-result v14

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->FH()I

    move-result v15

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->DW()I

    move-result v16

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->j6()I

    move-result v17

    invoke-interface/range {v11 .. v17}, Labcd/Nk$a;->j6(IIIIII)V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_10d} :catch_10f
    .catchall {:try_start_e6 .. :try_end_10d} :catchall_202

    goto/16 :goto_1d2

    :catch_10f
    move-exception v0

    :try_start_110
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v9

    goto/16 :goto_70

    :cond_116
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v8

    invoke-virtual {v8}, Labcd/Xj;->gn()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v8

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->u7()I

    move-result v11

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->Hw()I

    move-result v0

    invoke-static {}, Lcom/aide/ui/aa;->cn()I

    move-result v12

    invoke-virtual {v8, v9, v11, v0, v12}, Labcd/Xj;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    :goto_13c
    if-ltz v8, :cond_14c

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/aide/engine/Modification;

    invoke-interface {v2, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_13c

    :cond_14c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->we()V
    :try_end_153
    .catchall {:try_start_110 .. :try_end_153} :catchall_202

    goto/16 :goto_1d2

    :cond_155
    :try_start_155
    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->VH()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Labcd/FileSystemUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v11

    invoke-virtual {v11, v9, v0}, Labcd/Nk;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-static {v9}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Labcd/Ji;->DW(Ljava/lang/String;)V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_18a} :catch_18c
    .catchall {:try_start_155 .. :try_end_18a} :catchall_202

    const/4 v7, 0x1

    goto :goto_1d2

    :catch_18c
    move-exception v0

    :try_start_18d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v9
    :try_end_191
    .catchall {:try_start_18d .. :try_end_191} :catchall_202

    goto/16 :goto_70

    :cond_193
    :try_start_193
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v9

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Labcd/Nk;->v5(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v11

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->u7()I

    move-result v12

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->gn()I

    move-result v13

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->Hw()I

    move-result v14

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->FH()I

    move-result v15

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->VH()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->EQ()Z

    move-result v17

    invoke-virtual {v0}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v9

    invoke-virtual {v9}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-interface/range {v11 .. v18}, Labcd/Nk$a;->j6(IIIILjava/lang/String;ZZ)V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1ca} :catch_1cb
    .catchall {:try_start_193 .. :try_end_1ca} :catchall_202

    goto :goto_1d2

    :catch_1cb
    move-exception v0

    :try_start_1cc
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v9
    :try_end_1d0
    .catchall {:try_start_1cc .. :try_end_1d0} :catchall_202

    goto/16 :goto_70

    :goto_1d2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1a

    :cond_1d6
    :try_start_1d6
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->J0()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1dd} :catch_1de
    .catchall {:try_start_1d6 .. :try_end_1dd} :catchall_202

    goto :goto_1e6

    :catch_1de
    move-exception v0

    :try_start_1df
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    invoke-static {v5, v8, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e6
    if-eqz v7, :cond_1f6

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    :cond_1f6
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->VH()V
    :try_end_1fd
    .catchall {:try_start_1df .. :try_end_1fd} :catchall_202

    :goto_1fd
    :try_start_1fd
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0
    :try_end_201
    .catchall {:try_start_1fd .. :try_end_201} :catchall_215

    goto :goto_207

    :catchall_202
    move-exception v0

    :try_start_203
    invoke-static {v0}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_20b

    goto :goto_1fd

    :goto_207
    :try_start_207
    invoke-virtual {v0}, Labcd/Xj;->gn()V

    return-void

    :catchall_20b
    move-exception v0

    move-object v5, v0

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->gn()V

    throw v5
    :try_end_215
    .catchall {:try_start_207 .. :try_end_215} :catchall_215

    :catchall_215
    move-exception v0

    sget-boolean v5, Labcd/ol;->DW:Z

    if-eqz v5, :cond_21d

    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21d
    goto :goto_21f

    :goto_21e
    throw v0

    :goto_21f
    goto :goto_21e
.end method

.method static synthetic j6(Labcd/ol;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ol;->DW(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 5

    const-wide v0, -0x336be9574469c238L  # -8.070248609656438E60

    :try_start_5
    sget-boolean v2, Labcd/ol;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    new-instance v3, Labcd/ml;

    invoke-direct {v3, p0}, Labcd/ml;-><init>(Labcd/ol;)V

    invoke-virtual {v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/service/v;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/ol;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x4039bdde4aea152dL  # -0.17389317838736548

    :try_start_5
    sget-boolean v2, Labcd/ol;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Hw()V

    if-nez p1, :cond_16

    return-void

    :cond_16
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/Modification;

    invoke-virtual {v5}, Lcom/aide/engine/Modification;->tp()I

    move-result v6

    if-eqz v6, :cond_41

    const/4 v7, 0x3

    if-eq v6, v7, :cond_41

    const/4 v7, 0x7

    if-eq v6, v7, :cond_41

    const/16 v7, 0xb

    if-eq v6, v7, :cond_41

    const/16 v7, 0xc

    if-eq v6, v7, :cond_41

    goto :goto_20

    :cond_41
    invoke-virtual {v5}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/aide/engine/Modification;->v5()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v4, 0x1

    goto :goto_20

    :cond_5c
    if-nez v4, :cond_62

    invoke-direct {p0, p1}, Labcd/ol;->DW(Ljava/util/List;)V

    goto :goto_92

    :cond_62
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_7f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    new-instance v7, Labcd/nl;

    invoke-direct {v7, p0, p1}, Labcd/nl;-><init>(Labcd/ol;Ljava/util/List;)V

    const v4, 0x7f0d05d5

    const v5, 0x7f0d05d4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_92
    .catchall {:try_start_5 .. :try_end_92} :catchall_93

    :goto_92
    return-void

    :catchall_93
    move-exception v2

    sget-boolean v3, Labcd/ol;->DW:Z

    if-eqz v3, :cond_9b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_9b
    goto :goto_9d

    :goto_9c
    throw v2

    :goto_9d
    goto :goto_9c
.end method
