.class Labcd/Kj$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Kj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
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


# instance fields
.field private FH:Landroid/app/Activity;
    .annotation runtime Labcd/ru;
        field = 0xb43f0020594dd31L
    .end annotation
.end field

.field private Hw:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = 0x1c6db24b268b484cL
    .end annotation
.end field

.field final VH:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x3958fa48990dc5e0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$m;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xc7099fe4f0a4cfcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Kj$b;

    const-wide v1, 0x18a49cdb4ef23149L  # 5.782931895036349E-190

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x16b6459adbd31bf3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Labcd/Be$g;",
            ">;",
            "Ljava/util/List<",
            "Labcd/Be$m;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$b;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, 0xa24f97fa63f561cL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    iput-object p1, p0, Labcd/Kj$b;->VH:Labcd/Kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/Kj$b;->FH:Landroid/app/Activity;

    iput-object p5, p0, Labcd/Kj$b;->Hw:Ljava/lang/Runnable;

    iput-object p3, p0, Labcd/Kj$b;->v5:Ljava/util/List;

    iput-object p4, p0, Labcd/Kj$b;->Zo:Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/Kj$b;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0xa24f97fa63f561cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method static synthetic j6(Labcd/Kj$b;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Labcd/Kj$b;->Hw:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/Kj$b;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 22
    .annotation runtime Labcd/su;
        method = 0x20cd6a2c88364e9dL
    .end annotation

    move-object/from16 v1, p0

    const-string v2, ":"

    const-string v3, ".jar"

    const-string v4, ".aar"

    const-string v5, ".pom"

    const-wide v6, -0x1467aba35b59063cL  # -1.9996356183908936E210

    :try_start_f
    sget-boolean v0, Labcd/Kj$b;->j6:Z

    if-eqz v0, :cond_16

    invoke-static {v6, v7, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Labcd/Kj$b;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/Be$m;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_37
    iget-object v0, v1, Labcd/Kj$b;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Labcd/Be$g;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    :goto_51
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Be$m;
    :try_end_5d
    .catchall {:try_start_f .. :try_end_5d} :catchall_1ad

    :try_start_5d
    invoke-static {v0, v12}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v12}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Labcd/Kj$b;->VH:Labcd/Kj;

    invoke-static {v7, v15, v6, v10}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_15e

    new-instance v7, Labcd/He;

    invoke-direct {v7}, Labcd/He;-><init>()V

    invoke-virtual {v7, v6}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v6

    check-cast v6, Labcd/He;

    iget-object v7, v12, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Labcd/He;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15e

    invoke-static {v0, v12, v6, v5}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v12, v6, v5}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v12, v6, v4}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_94} :catch_165
    .catchall {:try_start_5d .. :try_end_94} :catchall_1ad

    move-object/from16 v16, v5

    :try_start_96
    invoke-static {v0, v12, v6, v4}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9a} :catch_158
    .catchall {:try_start_96 .. :try_end_9a} :catchall_1ad

    move-object/from16 v17, v4

    :try_start_9c
    invoke-static {v0, v12, v6, v3}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a0} :catch_152
    .catchall {:try_start_9c .. :try_end_a0} :catchall_1ad

    move-object/from16 v18, v8

    :try_start_a2
    invoke-static {v0, v12, v6, v3}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_bc

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c7

    :cond_bc
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14f

    :cond_c7
    iget-object v0, v1, Labcd/Kj$b;->VH:Labcd/Kj;
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_c9} :catch_14e
    .catchall {:try_start_a2 .. :try_end_c9} :catchall_1ad

    move-object/from16 v19, v3

    :try_start_cb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d0} :catch_14a
    .catchall {:try_start_cb .. :try_end_d0} :catchall_1ad

    move-object/from16 v20, v9

    :try_start_d2
    iget-object v9, v12, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_e9} :catch_147
    .catchall {:try_start_d2 .. :try_end_e9} :catchall_1ad

    add-int/lit8 v6, v14, 0x1

    mul-int/lit8 v14, v14, 0x64

    :try_start_ed
    iget-object v9, v1, Labcd/Kj$b;->v5:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v14, v9
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f4} :catch_143
    .catchall {:try_start_ed .. :try_end_f4} :catchall_1ad

    const/4 v9, 0x0

    :try_start_f5
    invoke-static {v0, v3, v14, v9}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    iget-object v0, v1, Labcd/Kj$b;->VH:Labcd/Kj;

    const/4 v3, 0x1

    invoke-static {v0, v7, v15, v3}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fe} :catch_141
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_1ad

    :try_start_fe
    iget-object v0, v1, Labcd/Kj$b;->VH:Labcd/Kj;

    invoke-static {v0, v10, v5, v3}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_103} :catch_104
    .catchall {:try_start_fe .. :try_end_103} :catchall_1ad

    goto :goto_105

    :catch_104
    move-exception v0

    :goto_105
    :try_start_105
    iget-object v0, v1, Labcd/Kj$b;->VH:Labcd/Kj;

    invoke-static {v0, v4, v8, v3}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10a} :catch_10b
    .catchall {:try_start_105 .. :try_end_10a} :catchall_1ad

    goto :goto_10c

    :catch_10b
    move-exception v0

    :goto_10c
    :try_start_10c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_122

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_145

    :cond_122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_12b} :catch_141
    .catchall {:try_start_10c .. :try_end_12b} :catchall_1ad

    if-eqz v0, :cond_145

    move v0, v6

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    const-wide v6, -0x1467aba35b59063cL  # -1.9996356183908936E210

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_40

    :catch_141
    move-exception v0

    goto :goto_145

    :catch_143
    move-exception v0

    const/4 v9, 0x0

    :cond_145
    :goto_145
    move v14, v6

    goto :goto_167

    :catch_147
    move-exception v0

    :goto_148
    const/4 v9, 0x0

    goto :goto_167

    :catch_14a
    move-exception v0

    :goto_14b
    move-object/from16 v20, v9

    goto :goto_148

    :catch_14e
    move-exception v0

    :cond_14f
    move-object/from16 v19, v3

    goto :goto_14b

    :catch_152
    move-exception v0

    move-object/from16 v19, v3

    :goto_155
    move-object/from16 v18, v8

    goto :goto_14b

    :catch_158
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    goto :goto_155

    :cond_15e
    :goto_15e
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    goto :goto_155

    :catch_165
    move-exception v0

    goto :goto_15e

    :goto_167
    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    const-wide v6, -0x1467aba35b59063cL  # -1.9996356183908936E210

    const/4 v10, 0x0

    goto/16 :goto_51

    :cond_179
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    const/4 v9, 0x0

    :try_start_184
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_19d

    move v0, v14

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    const-wide v6, -0x1467aba35b59063cL  # -1.9996356183908936E210

    const/4 v10, 0x0

    goto/16 :goto_40

    :cond_19d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1a3
    new-instance v0, Labcd/Lj;

    invoke-direct {v0, v1, v11}, Labcd/Lj;-><init>(Labcd/Kj$b;Z)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1ab
    .catchall {:try_start_184 .. :try_end_1ab} :catchall_1ad

    const/4 v0, 0x0

    return-object v0

    :catchall_1ad
    move-exception v0

    sget-boolean v2, Labcd/Kj$b;->DW:Z

    if-eqz v2, :cond_1ba

    const-wide v2, -0x1467aba35b59063cL  # -1.9996356183908936E210

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1ba
    goto :goto_1bc

    :goto_1bb
    throw v0

    :goto_1bc
    goto :goto_1bb
.end method
