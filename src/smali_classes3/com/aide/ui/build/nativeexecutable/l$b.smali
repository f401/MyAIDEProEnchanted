.class Lcom/aide/ui/build/nativeexecutable/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/nativeexecutable/l;
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
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2686a12ac2c2fce1L
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x12104b4c86529d87L
    .end annotation
.end field

.field final v5:Lcom/aide/ui/build/nativeexecutable/l;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/nativeexecutable/l$b;

    const-wide v1, -0x3eebac31364bf580L  # -333043.69697586447

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/nativeexecutable/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x7c6581f0d327889L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l$b;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x31639d4e258c5cebL  # -4.8977425656240454E70

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->v5:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->Hw:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l$b;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x31639d4e258c5cebL  # -4.8977425656240454E70

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private j6(Ljava/io/File;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x1f760deb8123b95dL
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, " executable - exit code "

    const-string v4, "Could not make "

    const-string v5, "777"

    const-wide v6, -0x4458a24bf7a7244bL  # -2.4739744802015524E-21

    :try_start_f
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l$b;->j6:Z

    if-eqz v0, :cond_16

    invoke-static {v6, v7, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_b4

    if-nez v0, :cond_ae

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_20
    new-array v0, v11, [Ljava/lang/String;

    const-string v12, "/system/bin/chmod"

    aput-object v12, v0, v10

    aput-object v5, v0, v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v12

    if-nez v12, :cond_45

    goto :goto_8a

    :cond_45
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_68} :catch_68
    .catchall {:try_start_20 .. :try_end_68} :catchall_b4

    :catch_68
    move-exception v0

    :try_start_69
    new-array v0, v11, [Ljava/lang/String;

    const-string v11, "/system/xbin/chmod"

    aput-object v11, v0, v10

    aput-object v5, v0, v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v5

    if-nez v5, :cond_8b

    :goto_8a
    return-void

    :cond_8b
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_ae
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_b4
    .catchall {:try_start_69 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l$b;->DW:Z

    if-eqz v3, :cond_bc

    invoke-static {v0, v6, v7, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_bc
    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/build/nativeexecutable/l$b;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6f86897817ef28dL
    .end annotation

    const-wide v0, -0xa431f64abd392bfL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/l$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->Hw:Ljava/lang/String;

    invoke-static {v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->Hw:Ljava/lang/String;

    invoke-static {v2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    :cond_19
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->Hw:Ljava/lang/String;

    invoke-static {v2}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->Hw:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->FH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/aide/ui/build/nativeexecutable/l$b;->FH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v4}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {p0, v2}, Lcom/aide/ui/build/nativeexecutable/l$b;->j6(Ljava/io/File;)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_44

    const/4 v0, 0x0

    return-object v0

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l$b;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4c
    throw v2
.end method
