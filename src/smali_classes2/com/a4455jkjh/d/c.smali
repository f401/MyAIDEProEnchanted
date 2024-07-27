.class public Lcom/a4455jkjh/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/android/E;


# static fields
.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/aide/ui/build/android/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/a4455jkjh/d/c;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/B;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/d/c;->a:Lcom/aide/ui/build/android/B;

    return-void
.end method

.method static synthetic a(Lcom/a4455jkjh/d/c;)Lcom/aide/ui/build/android/B;
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/d/c;->a:Lcom/aide/ui/build/android/B;

    return-object v0
.end method

.method static synthetic a(Lcom/a4455jkjh/d/c;Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 18

    invoke-direct/range {p0 .. p17}, Lcom/a4455jkjh/d/c;->b(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/a4455jkjh/d/c;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a4455jkjh/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "proguard.log"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, La/j/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 37

    new-instance v0, Lcom/a4455jkjh/d/i;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    invoke-direct/range {v0 .. v18}, Lcom/a4455jkjh/d/i;-><init>(Lcom/a4455jkjh/d/c;Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    new-instance v0, Lcom/a4455jkjh/d/d;

    invoke-direct {v0, p0}, Lcom/a4455jkjh/d/d;-><init>(Lcom/a4455jkjh/d/c;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public FH()V
    .registers 2

    new-instance v0, Lcom/a4455jkjh/d/e;

    invoke-direct {v0, p0}, Lcom/a4455jkjh/d/e;-><init>(Lcom/a4455jkjh/d/c;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a4455jkjh/d/c;->a:Lcom/aide/ui/build/android/B;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u6b63\u5728\u6df7\u6dc6\u4e2d..."

    :goto_0
    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/aide/ui/build/android/fb;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    sget-object v20, Lcom/a4455jkjh/d/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/a4455jkjh/d/h;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p15

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p16

    move/from16 v19, p17

    invoke-direct/range {v1 .. v19}, Lcom/a4455jkjh/d/h;-><init>(Lcom/a4455jkjh/d/c;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/ui/build/android/X;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 99
    :cond_0
    const-string v1, "Proguarding..."

    goto :goto_0
.end method

.method public j6(Ljava/util/Map;)V
    .registers 3

    new-instance v0, Lcom/a4455jkjh/d/f;

    invoke-direct {v0, p0, p1}, Lcom/a4455jkjh/d/f;-><init>(Lcom/a4455jkjh/d/c;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j6(Z)V
    .registers 3

    new-instance v0, Lcom/a4455jkjh/d/g;

    invoke-direct {v0, p0, p1}, Lcom/a4455jkjh/d/g;-><init>(Lcom/a4455jkjh/d/c;Z)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/a4455jkjh/d/callback;

    invoke-direct {v0, p0, p1}, Lcom/a4455jkjh/d/callback;-><init>(Lcom/a4455jkjh/d/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void
.end method
