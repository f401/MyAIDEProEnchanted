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
        "Ljava/util/concurrent/Callable",
        "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Labcd/Be$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x18a49cdb4ef23149L    # 5.782931895036349E-190

    const-class v0, Labcd/Kj$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
            "Ljava/util/List",
            "<",
            "Labcd/Be$g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Labcd/Be$m;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa24f97fa63f561cL

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Kj$b;->VH:Labcd/Kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/Kj$b;->FH:Landroid/app/Activity;

    iput-object p5, p0, Labcd/Kj$b;->Hw:Ljava/lang/Runnable;

    iput-object p3, p0, Labcd/Kj$b;->v5:Ljava/util/List;

    iput-object p4, p0, Labcd/Kj$b;->Zo:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kj$b;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0xa24f97fa63f561cL

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Labcd/Kj$b;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Labcd/Kj$b;->Hw:Ljava/lang/Runnable;

    return-object v0
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

    const-string v7, ".jar"

    const-string v8, ".aar"

    const-string v9, ".pom"

    :try_start_0
    sget-boolean v2, Labcd/Kj$b;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x1467aba35b59063cL    # -1.9996356183908936E210

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Kj$b;->Zo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$m;

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Kj$b;->DW:Z

    if-eqz v3, :cond_2

    const-wide v4, -0x1467aba35b59063cL    # -1.9996356183908936E210

    move-object/from16 v0, p0

    invoke-static {v2, v4, v5, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v2

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Kj$b;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v6, v2

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$g;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Be$m;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v3, v2}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Labcd/Kj$b;->VH:Labcd/Kj;

    const/4 v15, 0x0

    invoke-static {v14, v4, v13, v15}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Labcd/He;

    invoke-direct {v4}, Labcd/He;-><init>()V

    invoke-virtual {v4, v13}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v4

    check-cast v4, Labcd/He;

    iget-object v13, v2, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v4, v13}, Labcd/He;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {v3, v2, v4, v9}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v2, v4, v9}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v2, v4, v8}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    :try_start_3
    invoke-static {v3, v2, v4, v8}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v16

    :try_start_4
    invoke-static {v3, v2, v4, v7}, Labcd/Jk;->DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v3, v2, v4, v7}, Labcd/Jk;->j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v18

    :try_start_5
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/Kj$b;->VH:Labcd/Kj;

    move-object/from16 v19, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v0, v2, Labcd/Be$g;->gn:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Labcd/Be$g;->u7:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v4

    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v5, v5, 0x64

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/Kj$b;->v5:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    div-int v5, v5, v20
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v20, 0x0

    :try_start_9
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v4, v5, v1}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Kj$b;->VH:Labcd/Kj;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v5, 0x1

    :try_start_a
    invoke-static {v4, v13, v14, v5}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Kj$b;->VH:Labcd/Kj;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v4, v15, v0, v5}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :goto_3
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Kj$b;->VH:Labcd/Kj;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    const/4 v5, 0x1

    :try_start_d
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1, v5}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :goto_4
    :try_start_e
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    move-result v4

    if-eqz v4, :cond_8

    const/4 v2, 0x1

    move v6, v2

    move v5, v3

    goto/16 :goto_1

    :catch_1
    move-exception v4

    :cond_8
    :goto_5
    move v5, v3

    goto/16 :goto_2

    :cond_9
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_a
    new-instance v2, Labcd/Lj;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Labcd/Lj;-><init>(Labcd/Kj$b;Z)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    const/4 v2, 0x0

    return-object v2

    :catch_2
    move-exception v3

    goto/16 :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    :catch_4
    move-exception v4

    goto :goto_4

    :catch_5
    move-exception v4

    goto :goto_3

    :catch_6
    move-exception v3

    goto/16 :goto_2

    :catch_7
    move-exception v3

    goto/16 :goto_2

    :catch_8
    move-exception v3

    goto/16 :goto_2

    :catch_9
    move-exception v3

    goto/16 :goto_2

    :catch_a
    move-exception v3

    goto/16 :goto_2

    :catch_b
    move-exception v4

    goto :goto_5

    :catch_c
    move-exception v4

    goto :goto_5

    :cond_b
    move v3, v5

    goto :goto_5
.end method
