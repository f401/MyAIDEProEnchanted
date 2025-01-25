.class Lcom/aide/ui/build/android/AaptService$c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/AaptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
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
.field private final EQ:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x7eeb09bb901f565L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x8b077ba9ebdd033L
    .end annotation
.end field

.field private final Hw:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0xced413d1a4f09c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final J0:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0xb355b31987a8f4bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final J8:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x4db6df6ea381b000L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Z
    .annotation runtime Labcd/ru;
        field = -0x2e5cbf342ff71c00L
    .end annotation
.end field

.field private final QX:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x26a23a729835c3c1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private U2:Z
    .annotation runtime Labcd/ru;
        field = 0x31ebb6922c68aea1L
    .end annotation
.end field

.field private final VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x300aedd83a655dcbL
    .end annotation
.end field

.field private final Ws:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x18ba3e3b11d103f8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x4504b0990ed6e40L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x18efff7f18c34e3cL
    .end annotation
.end field

.field final a8:Lcom/aide/ui/build/android/AaptService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private final aM:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x4d16ed3c69dbd671L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x29c53dcdcbe68738L
    .end annotation
.end field

.field private j3:Z
    .annotation runtime Labcd/ru;
        field = 0x5a87f0ea6bb74de0L
    .end annotation
.end field

.field private final tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1a22fbd1d4c8431fL
    .end annotation
.end field

.field private final u7:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x2fdcee2721204c37L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1481635095398604L
    .end annotation
.end field

.field private final we:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x5484cf92641a6b5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/AaptService$c;

    const-wide v1, -0x33d881cb33e3eccfL  # -7.373395395064011E58

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZZ)V
    .registers 38
    .annotation runtime Labcd/su;
        method = -0x2a0ef2b698eac05fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    sget-boolean v16, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v16, :cond_98

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v0, v16

    const/16 v16, 0x1

    aput-object v2, v0, v16

    const/16 v16, 0x2

    aput-object v3, v0, v16

    const/16 v16, 0x3

    aput-object v4, v0, v16

    const/16 v16, 0x4

    aput-object v5, v0, v16

    const/16 v16, 0x5

    aput-object v6, v0, v16

    const/16 v16, 0x6

    aput-object v7, v0, v16

    const/16 v16, 0x7

    aput-object v8, v0, v16

    const/16 v16, 0x8

    aput-object v9, v0, v16

    const/16 v16, 0x9

    aput-object v10, v0, v16

    const/16 v16, 0xa

    aput-object v11, v0, v16

    const/16 v16, 0xb

    aput-object v12, v0, v16

    const/16 v16, 0xc

    aput-object v13, v0, v16

    const/16 v16, 0xd

    aput-object v14, v0, v16

    const/16 v16, 0xe

    aput-object v15, v0, v16

    const/16 v16, 0xf

    aput-object p16, v0, v16

    const/16 v16, 0x10

    aput-object p17, v0, v16

    new-instance v14, Ljava/lang/Boolean;

    move/from16 v15, p18

    invoke-direct {v14, v15}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0x11

    aput-object v14, v0, v16

    new-instance v14, Ljava/lang/Boolean;

    move/from16 v15, p19

    invoke-direct {v14, v15}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0x12

    aput-object v14, v0, v16

    new-instance v14, Ljava/lang/Boolean;

    move/from16 v15, p20

    invoke-direct {v14, v15}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0x13

    aput-object v14, v0, v16

    const-wide v14, -0x196380b4952d2e84L  # -1.9374040650928456E186

    const/4 v13, 0x0

    invoke-static {v14, v15, v13, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_98
    move-object/from16 v0, p0

    move-object/from16 v13, p16

    iput-object v1, v0, Lcom/aide/ui/build/android/AaptService$c;->a8:Lcom/aide/ui/build/android/AaptService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/aide/ui/build/android/AaptService$c;->FH:Ljava/lang/String;

    iput-object v5, v0, Lcom/aide/ui/build/android/AaptService$c;->Hw:Ljava/util/Map;

    iput-object v4, v0, Lcom/aide/ui/build/android/AaptService$c;->VH:Ljava/lang/String;

    iput-object v2, v0, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    iput-object v6, v0, Lcom/aide/ui/build/android/AaptService$c;->J8:Ljava/util/List;

    iput-object v7, v0, Lcom/aide/ui/build/android/AaptService$c;->Ws:Ljava/util/List;

    iput-object v8, v0, Lcom/aide/ui/build/android/AaptService$c;->Zo:Ljava/lang/String;

    iput-object v9, v0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    iput-object v10, v0, Lcom/aide/ui/build/android/AaptService$c;->u7:Ljava/util/List;

    iput-object v11, v0, Lcom/aide/ui/build/android/AaptService$c;->tp:Ljava/lang/String;

    iput-object v12, v0, Lcom/aide/ui/build/android/AaptService$c;->J0:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/aide/ui/build/android/AaptService$c;->EQ:Ljava/util/Map;

    move-object/from16 v1, p15

    move/from16 v2, p18

    iput-object v1, v0, Lcom/aide/ui/build/android/AaptService$c;->QX:Ljava/util/Map;

    iput-object v13, v0, Lcom/aide/ui/build/android/AaptService$c;->we:Ljava/util/Map;

    iput-boolean v2, v0, Lcom/aide/ui/build/android/AaptService$c;->j3:Z

    move/from16 v1, p19

    move/from16 v2, p20

    iput-boolean v1, v0, Lcom/aide/ui/build/android/AaptService$c;->Mr:Z

    iput-boolean v2, v0, Lcom/aide/ui/build/android/AaptService$c;->U2:Z

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/aide/ui/build/android/AaptService$c;->XL:Ljava/util/Map;

    invoke-interface/range {p17 .. p17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v0, Lcom/aide/ui/build/android/AaptService$c;->XL:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    :cond_ff
    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/AaptService$c;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/AaptService$c;->XL:Ljava/util/Map;

    return-object p0
.end method

.method private DW()V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x245db528a66f9a50L
    .end annotation

    move-object/from16 v1, p0

    const-string v2, " executable - exit code "

    const-string v3, "Could not make "

    const-string v4, "777"

    const-wide v5, -0x4d336608d9f681b8L  # -5.4317358372754355E-64

    :try_start_d
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v0, :cond_14

    invoke-static {v5, v6, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {}, Lcom/aide/ui/build/android/AaptService;->j6()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_b4

    if-eqz v0, :cond_21

    return-void

    :cond_21
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    :try_start_25
    new-array v0, v9, [Ljava/lang/String;

    const-string v11, "/system/bin/chmod"

    aput-object v11, v0, v8

    aput-object v4, v0, v10

    iget-object v11, v1, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v11, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v11

    if-nez v11, :cond_47

    goto :goto_89

    :cond_47
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_68} :catch_68
    .catchall {:try_start_25 .. :try_end_68} :catchall_b4

    :catch_68
    move-exception v0

    :try_start_69
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "/system/xbin/chmod"

    aput-object v9, v0, v8

    aput-object v4, v0, v10

    iget-object v4, v1, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v4, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v4

    if-nez v4, :cond_8d

    :goto_89
    invoke-static {v10}, Lcom/aide/ui/build/android/AaptService;->j6(Z)Z

    return-void

    :cond_8d
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_ae
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_b4
    .catchall {:try_start_69 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v2, :cond_bc

    invoke-static {v0, v5, v6, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_bc
    throw v0
.end method

.method private FH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x292a03bad37f26c9L
    .end annotation

    const-wide v0, 0x32df292b49ae337L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->EQ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {v3}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    goto :goto_16

    :cond_3d
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_44

    :cond_43
    return-void

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method private Hw()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x29f8b4ae830e8cbfL
    .end annotation

    const-wide v0, 0x61825b2f1e832f1bL  # 5.161431637604991E161

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->J0:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2e

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_5f

    :cond_48
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5f
    :goto_5f
    new-instance v4, Ljava/io/File;

    const-string v6, "BuildConfig.java"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/aide/ui/build/android/AaptService$c;->j3:Z

    if-eqz v5, :cond_70

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    :cond_70
    iget-boolean v5, p0, Lcom/aide/ui/build/android/AaptService$c;->U2:Z

    invoke-static {p0, v4, v3, v5}, Lcom/s1243808733/aide/builder/ReWriteBuildConfig;->write(Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_77

    goto :goto_16

    :cond_76
    return-void

    :catchall_77
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_7f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7f
    goto :goto_81

    :goto_80
    throw v2

    :goto_81
    goto :goto_80
.end method

.method private VH()Lcom/aide/ui/build/android/AaptService$b;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3012e36732183bfdL
    .end annotation

    const-wide v0, 0x7928de572bce0f7L  # 3.42979442169029E-272

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->we:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v5, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-direct {p0, v4, v3}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/lang/String;Ljava/util/List;)Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v3

    iget-object v4, v3, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v4, :cond_16

    return-object v3

    :cond_45
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_4b
    iget-boolean v2, p0, Lcom/aide/ui/build/android/AaptService$c;->j3:Z

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->we:Ljava/util/Map;

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/lang/String;Ljava/util/List;)Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v2

    iget-object v3, v2, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_64

    return-object v2

    :cond_64
    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_6b

    return-object v2

    :catchall_6b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_73

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_73
    goto :goto_75

    :goto_74
    throw v2

    :goto_75
    goto :goto_74
.end method

.method private Zo()Lcom/aide/ui/build/android/AaptService$b;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xe54fbcb1c3327f0L
    .end annotation

    const-wide v0, -0x7cd4497bbe7513cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->J8:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->Ws:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10a

    :cond_1d
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    iget-object v4, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/build/android/AaptService$c;->XL:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/build/android/AaptService$c;->QX:Ljava/util/Map;

    iget-object v6, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/build/android/AaptService$c;->J8:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_42
    iget-object v9, p0, Lcom/aide/ui/build/android/AaptService$c;->J8:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5d

    iget-object v9, p0, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    iget-object v10, p0, Lcom/aide/ui/build/android/AaptService$c;->J8:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    :cond_5d
    iget-object v8, p0, Lcom/aide/ui/build/android/AaptService$c;->Ws:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_66
    iget-object v11, p0, Lcom/aide/ui/build/android/AaptService$c;->Ws:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_7b

    iget-object v11, p0, Lcom/aide/ui/build/android/AaptService$c;->Ws:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    :cond_7b
    iget-object v10, p0, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    iget-object v11, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/aide/ui/build/android/AaptService$c;->XL:Ljava/util/Map;

    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_95
    if-ge v10, v6, :cond_a4

    new-instance v11, Ljava/io/File;

    aget-object v12, v7, v10

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_95

    :cond_a4
    const/4 v6, 0x0

    :goto_a5
    if-ge v6, v8, :cond_b4

    new-instance v10, Ljava/io/File;

    aget-object v11, v9, v6

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    :cond_b4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_cf

    goto :goto_e4

    :cond_cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Omitting merge "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    goto :goto_10a

    :cond_e4
    :goto_e4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merging "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/ui/build/android/AaptService$c;->a8:Lcom/aide/ui/build/android/AaptService;

    invoke-static {v4}, Lcom/aide/ui/build/android/AaptService;->DW(Lcom/aide/ui/build/android/AaptService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v2, v9, v7}, Lcom/aide/ui/build/android/P;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10a

    new-instance v3, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v3, v2}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_10a
    :goto_10a
    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v2, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V
    :try_end_10f
    .catchall {:try_start_5 .. :try_end_10f} :catchall_110

    return-object v2

    :catchall_110
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_118

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_118
    goto :goto_11a

    :goto_119
    throw v2

    :goto_11a
    goto :goto_119
.end method

.method private gn()Lcom/aide/ui/build/android/AaptService$b;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2497e463a28d90e0L
    .end annotation

    const-wide v0, 0x40695bafab328390L  # 202.86519393793105

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->EQ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_cd

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_16

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v6}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9, v8, v7}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v6, v7}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_67

    const-string v3, "Omitting aapt crunch call (is uptodate)"

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    goto :goto_16

    :cond_67
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v4, "crunch"

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const-string v4, "-S"

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const/4 v4, 0x3

    aput-object v5, v6, v4

    const-string v4, "-C"

    const/4 v5, 0x4

    aput-object v4, v6, v5

    const/4 v4, 0x5

    aput-object v3, v6, v4

    const-string v3, "--no-version-vectors"

    const/4 v4, 0x6

    aput-object v3, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aapt call elapsed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-interface {v5}, Labcd/Pl;->DW()I

    move-result v3

    if-eqz v3, :cond_16

    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    invoke-interface {v5}, Labcd/Pl;->j6()[B

    move-result-object v3

    invoke-interface {v5}, Labcd/Pl;->DW()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/aide/ui/build/android/AaptService$c;->j6([BI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_cd
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_d3
    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v2, v4}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V
    :try_end_d8
    .catchall {:try_start_5 .. :try_end_d8} :catchall_d9

    return-object v2

    :catchall_d9
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_e1

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_e1
    goto :goto_e3

    :goto_e2
    throw v2

    :goto_e3
    goto :goto_e2
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;)Lcom/aide/ui/build/android/AaptService$b;
    .registers 27
    .annotation runtime Labcd/su;
        method = -0xcbcda7c138c4147L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aide/ui/build/android/AaptService$b;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v5, p1

    :try_start_4
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$c;->j6:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1cb

    if-eqz v0, :cond_13

    const-wide v0, -0xef0b85b8103ba83L  # -3.978243185658233E236

    move-object/from16 v6, p2

    :try_start_f
    invoke-static {v0, v1, v7, v5, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    :cond_13
    move-object/from16 v6, p2

    :goto_15
    iget-object v0, v7, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v7, v4, v3, v1}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_26

    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V

    return-object v0

    :cond_49
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "R.java"

    invoke-direct {v7, v4, v8, v2}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    iget-boolean v4, v7, Lcom/aide/ui/build/android/AaptService$c;->Mr:Z

    if-nez v4, :cond_9a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9a

    invoke-direct {v7, v1, v2}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Omitting aapt call to regenerate R.java in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (is uptodate)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V

    return-object v0

    :cond_9a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a5
    .catchall {:try_start_f .. :try_end_a5} :catchall_1c9

    const-string v4, "--no-version-vectors"

    const-string v11, "-I"

    const/16 v12, 0x8

    const/4 v13, 0x7

    const-string v14, "-M"

    const/4 v15, 0x6

    const/16 v16, 0x5

    const-string v17, "-J"

    const/16 v18, 0x4

    const-string v19, "-m"

    const/16 v20, 0x3

    const-string v21, "--auto-add-overlay"

    const-string v22, "package"

    const/16 v9, 0xb

    const/4 v10, 0x2

    const/16 v23, 0x1

    if-eqz v1, :cond_ec

    :try_start_c4
    new-array v1, v9, [Ljava/lang/String;

    iget-object v9, v7, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v9, v1, v3

    aput-object v22, v1, v23

    aput-object v21, v1, v10

    aput-object v19, v1, v20

    aput-object v17, v1, v18

    aput-object v5, v1, v16

    aput-object v14, v1, v15

    aput-object v0, v1, v13

    aput-object v11, v1, v12

    iget-object v0, v7, Lcom/aide/ui/build/android/AaptService$c;->Zo:Ljava/lang/String;

    const/16 v9, 0x9

    aput-object v0, v1, v9

    const/16 v0, 0xa

    aput-object v4, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_e8
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_119

    :cond_ec
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    iget-object v9, v7, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v9, v1, v3

    aput-object v22, v1, v23

    const-string v9, "--non-constant-id"

    aput-object v9, v1, v10

    aput-object v21, v1, v20

    aput-object v19, v1, v18

    aput-object v17, v1, v16

    aput-object v5, v1, v15

    aput-object v14, v1, v13

    aput-object v0, v1, v12

    const/16 v0, 0x9

    aput-object v11, v1, v0

    iget-object v0, v7, Lcom/aide/ui/build/android/AaptService$c;->Zo:Ljava/lang/String;

    const/16 v9, 0xa

    aput-object v0, v1, v9

    const/16 v0, 0xb

    aput-object v4, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_e8

    :goto_119
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11d
    :goto_11d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_144

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11d

    new-array v4, v10, [Ljava/lang/String;

    const-string v9, "-S"

    aput-object v9, v4, v3

    aput-object v1, v4, v23

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11d

    :cond_144
    iget-object v0, v7, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/build/android/AaptService$c;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_162

    const-string v1, "--extra-packages"

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_162
    invoke-direct {v7, v8}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aapt call elapsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-interface {v4}, Labcd/Pl;->DW()I

    move-result v8

    if-nez v8, :cond_1b7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_195
    :goto_195
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v10, v8, v0

    if-gez v10, :cond_195

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V

    goto :goto_195

    :cond_1b1
    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V

    return-object v0

    :cond_1b7
    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-interface {v4}, Labcd/Pl;->j6()[B

    move-result-object v1

    invoke-interface {v4}, Labcd/Pl;->DW()I

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/aide/ui/build/android/AaptService$c;->j6([BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Ljava/lang/String;)V
    :try_end_1c8
    .catchall {:try_start_c4 .. :try_end_1c8} :catchall_1c9

    return-object v0

    :catchall_1c9
    move-exception v0

    goto :goto_1ce

    :catchall_1cb
    move-exception v0

    move-object/from16 v6, p2

    :goto_1ce
    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v1, :cond_1e1

    const-wide v2, -0xef0b85b8103ba83L  # -3.978243185658233E236

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e1
    goto :goto_1e3

    :goto_1e2
    throw v0

    :goto_1e3
    goto :goto_1e2
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService$c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/AaptService$c;->FH:Ljava/lang/String;

    return-object p0
.end method

.method private j6([BI)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x23d0089ca39f4b3fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4f6ae423b3952847L  # 3.8010067489359654E74

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_58

    :cond_11
    :try_start_11
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_20
    .catchall {:try_start_11 .. :try_end_1f} :catchall_58

    goto :goto_23

    :catch_20
    move-exception v0

    const-string v0, ""

    :goto_23
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aapt exited with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3f
    const/4 v1, 0x1

    if-eq p2, v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\naapt exited with code "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_58

    return-object p1

    :cond_57
    return-object v0

    :catchall_58
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v1, :cond_6d

    const-wide v2, 0x4f6ae423b3952847L  # 3.8010067489359654E74

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2509730a2cd83e01L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x24ea87a9a22c5c71L  # 7.475289803690505E-131

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    array-length v1, v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_3a

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-direct {p0, v3, p2, p3}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_36

    :cond_27
    if-eqz p2, :cond_33

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_33
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_3a

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_39
    return-void

    :catchall_3a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x24ea87a9a22c5c71L  # 7.475289803690505E-131

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method

.method private j6(Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x1f3b6ebb15a5a8dcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x1b178c8a7bb69a80L  # 3.63207514837738E-178

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/a;->a(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running aapt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_41

    const/16 v5, 0x22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_3e

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    goto :goto_53

    :goto_52
    throw v2

    :goto_53
    goto :goto_52
.end method

.method private j6(Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x2a9230af399b278L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x49d604b393ecfc0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_23

    :cond_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_5a

    goto :goto_3e

    :cond_53
    cmp-long p1, v2, v4

    if-lez p1, :cond_59

    const/4 p1, 0x1

    return p1

    :cond_59
    return v1

    :catchall_5a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v1, :cond_6b

    const-wide v2, -0x49d604b393ecfc0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method private u7()Lcom/aide/ui/build/android/AaptService$b;
    .registers 22
    .annotation runtime Labcd/su;
        method = 0x331a82ebfaedfaa1L
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "-S"

    const-wide v2, 0x1cf81f48fbcc5c19L  # 3.99484094497513E-169

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_24e

    iget-object v4, v1, Lcom/aide/ui/build/android/AaptService$c;->we:Ljava/util/Map;

    iget-object v5, v1, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    iget-object v6, v1, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11, v10, v7}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_38

    :cond_4e
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_61

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v8, v1, Lcom/aide/ui/build/android/AaptService$c;->u7:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_67
    :goto_67
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_67

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11, v10, v7}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_67

    :cond_87
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/aide/ui/build/android/AaptService$c;->Zo:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "R.java"

    invoke-direct {v1, v8, v9, v6}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/aide/ui/build/android/AaptService$c;->tp:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v8, v1, Lcom/aide/ui/build/android/AaptService$c;->Mr:Z

    const/4 v9, 0x0

    if-nez v8, :cond_d0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d0

    new-instance v8, Ljava/io/File;

    iget-object v10, v1, Lcom/aide/ui/build/android/AaptService$c;->tp:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d0

    invoke-direct {v1, v7, v6}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_d0

    const-string v0, "Omitting aapt package call (is uptodate)"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v9}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V

    return-object v0

    :cond_d0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v7, v1, Lcom/aide/ui/build/android/AaptService$c;->U2:Z
    :try_end_d7
    .catchall {:try_start_9 .. :try_end_d7} :catchall_254

    const-string v11, "-F"

    const/4 v13, 0x6

    const-string v14, "-I"

    const/4 v15, 0x5

    const-string v16, "--auto-add-overlay"

    const-string v17, "--no-crunch"

    const-string v18, "-f"

    const-string v19, "package"

    const/16 v2, 0x9

    const/4 v3, 0x4

    const/16 v20, 0x3

    const/4 v8, 0x2

    const/4 v12, 0x1

    if-eqz v7, :cond_113

    :try_start_ee
    new-array v2, v2, [Ljava/lang/String;

    iget-object v7, v1, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v7, v2, v9

    aput-object v19, v2, v12

    aput-object v18, v2, v8

    aput-object v17, v2, v20

    aput-object v16, v2, v3

    aput-object v14, v2, v15

    iget-object v7, v1, Lcom/aide/ui/build/android/AaptService$c;->Zo:Ljava/lang/String;

    aput-object v7, v2, v13

    const/4 v7, 0x7

    aput-object v11, v2, v7

    iget-object v7, v1, Lcom/aide/ui/build/android/AaptService$c;->tp:Ljava/lang/String;

    const/16 v11, 0x8

    aput-object v7, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_10f
    invoke-interface {v10, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13d

    :cond_113
    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/String;

    iget-object v2, v1, Lcom/aide/ui/build/android/AaptService$c;->v5:Ljava/lang/String;

    aput-object v2, v7, v9

    aput-object v19, v7, v12

    aput-object v18, v7, v8

    aput-object v17, v7, v20

    aput-object v16, v7, v3

    const-string v2, "--debug-mode"

    aput-object v2, v7, v15

    aput-object v14, v7, v13

    iget-object v2, v1, Lcom/aide/ui/build/android/AaptService$c;->Zo:Ljava/lang/String;

    const/4 v13, 0x7

    aput-object v2, v7, v13

    const/16 v2, 0x8

    aput-object v11, v7, v2

    iget-object v2, v1, Lcom/aide/ui/build/android/AaptService$c;->tp:Ljava/lang/String;

    const/16 v11, 0x9

    aput-object v2, v7, v11

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_10f

    :goto_13d
    iget-object v2, v1, Lcom/aide/ui/build/android/AaptService$c;->u7:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_143
    :goto_143
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_143

    new-array v11, v8, [Ljava/lang/String;

    const-string v13, "-A"

    aput-object v13, v11, v9

    aput-object v7, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_143

    :cond_16a
    new-array v2, v8, [Ljava/lang/String;

    const-string v7, "-M"

    aput-object v7, v2, v9

    aput-object v5, v2, v12

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17d
    :goto_17d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_17d

    iget-object v5, v1, Lcom/aide/ui/build/android/AaptService$c;->EQ:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v9

    aput-object v5, v7, v12

    aput-object v0, v7, v8

    aput-object v4, v7, v20

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17d

    :cond_1b6
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "-m"

    aput-object v2, v0, v9

    const-string v2, "-J"

    aput-object v2, v0, v12

    iget-object v2, v1, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    aput-object v2, v0, v8

    const-string v2, "--no-version-vectors"

    aput-object v2, v0, v20

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/build/android/AaptService$c;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e5

    const-string v2, "--extra-packages"

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e5
    invoke-direct {v1, v10}, Lcom/aide/ui/build/android/AaptService$c;->j6(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x1

    move-object v12, v0

    invoke-static/range {v10 .. v15}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aapt call elapsed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v5

    if-nez v5, :cond_23c

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21a
    :goto_21a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_236

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_21a

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V

    goto :goto_21a

    :cond_236
    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v4}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V

    return-object v0

    :cond_23c
    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    invoke-interface {v0}, Labcd/Pl;->j6()[B

    move-result-object v3

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/aide/ui/build/android/AaptService$c;->j6([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_24e
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_254
    .catchall {:try_start_ee .. :try_end_254} :catchall_254

    :catchall_254
    move-exception v0

    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v2, :cond_261

    const-wide v2, 0x1cf81f48fbcc5c19L  # 3.99484094497513E-169

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_261
    goto :goto_263

    :goto_262
    throw v0

    :goto_263
    goto :goto_262
.end method

.method private v5()Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x32eb86c4ed1619c3L
    .end annotation

    const-wide v0, 0x46dfe20b8c7798b9L  # 2.5866553463637086E33

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$c;->J0:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/build/android/AaptService$c;->J0:Ljava/util/Map;

    iget-object v7, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    sget-char v8, Ljava/io/File;->separatorChar:C

    const/16 v9, 0x2e

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "R.java"

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_65
    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    iget-object v4, p0, Lcom/aide/ui/build/android/AaptService$c;->gn:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AIDEExp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const-string v3, "com.aide.ui"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_a4

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    :cond_a8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ac
    .catchall {:try_start_5 .. :try_end_ac} :catchall_ad

    return-object v0

    :catchall_ad
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_b5

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b5
    goto :goto_b7

    :goto_b6
    throw v2

    :goto_b7
    goto :goto_b6
.end method


# virtual methods
.method public j6()Lcom/aide/ui/build/android/AaptService$b;
    .registers 4

    .line 99
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableAapt2()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 100
    invoke-static {p0}, Lcom/s1243808733/aide/functions/aapt2/Aapt2Task;->proxyAapt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/build/android/AaptService$b;

    goto :goto_25

    .line 102
    :cond_d
    invoke-virtual {p0}, Lcom/aide/ui/build/android/AaptService$c;->run()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_25

    :catch_12
    move-exception v0

    .line 105
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v2}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V

    :goto_25
    return-object v0
.end method

.method public run()Lcom/aide/ui/build/android/AaptService$b;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xddbbbc978196681L
    .end annotation

    const-wide v0, -0x1b88278a62669ebbL  # -9.436365019297579E175

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->Hw:Ljava/util/Map;

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$c;->VH:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/gj;->j6(Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->Zo()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v2

    iget-object v3, v2, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_1c

    return-object v2

    :cond_1c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$c;->aM:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_26

    :cond_46
    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->DW()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$c;->tp:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5d
    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->VH()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v2

    iget-object v3, v2, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_66

    return-object v2

    :cond_66
    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->Hw()V

    iget-boolean v2, p0, Lcom/aide/ui/build/android/AaptService$c;->j3:Z

    if-nez v2, :cond_82

    iget-boolean v2, p0, Lcom/aide/ui/build/android/AaptService$c;->Mr:Z

    if-eqz v2, :cond_74

    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->FH()V

    :cond_74
    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->gn()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v2

    iget-object v3, v2, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_7d

    return-object v2

    :cond_7d
    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService$c;->u7()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v0

    return-object v0

    :cond_82
    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_89

    return-object v2

    :catchall_89
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$c;->DW:Z

    if-eqz v3, :cond_91

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_91
    goto :goto_93

    :goto_92
    throw v2

    :goto_93
    goto :goto_92
.end method
