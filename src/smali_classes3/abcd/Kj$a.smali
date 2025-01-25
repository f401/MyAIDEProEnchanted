.class Labcd/Kj$a;
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
    name = "a"
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
        field = 0x2ac88dd4ab090780L
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x20bbe95d90f4dbedL
    .end annotation
.end field

.field private final VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x1e81becdcaa99800L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x31f9285112d89e27L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x20feb5a135e95863L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final tp:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private u7:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = -0xf1476e461132833L
    .end annotation
.end field

.field private final v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0xedc851ee3c19685L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Kj$a;

    const-wide v1, -0x2ba62d79bcd60840L  # -2.2062491487807834E98

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x56e016b72862e8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Labcd/Kj$a;->j6:Z

    if-eqz v0, :cond_29

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const-wide v1, 0x1b68326c31c955b8L  # 1.194244972812885E-176

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_29
    iput-object p1, p0, Labcd/Kj$a;->tp:Labcd/Kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/Kj$a;->v5:Ljava/util/List;

    iput-object p4, p0, Labcd/Kj$a;->Zo:Ljava/util/List;

    iput-object p5, p0, Labcd/Kj$a;->VH:Ljava/util/List;

    iput-object p6, p0, Labcd/Kj$a;->gn:Ljava/util/List;

    iput-object p7, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    iput-object p2, p0, Labcd/Kj$a;->FH:Landroid/app/Activity;

    iput-object p8, p0, Labcd/Kj$a;->u7:Ljava/lang/Runnable;

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1729f70b84e6d2b3L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5587c8360a692430L  # 1.0653155306507216E104

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_bc

    :try_start_11
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2a
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ab

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_a5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_96

    :cond_51
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_6f

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_6f

    const/4 v6, 0x1

    goto :goto_70

    :cond_6f
    const/4 v6, 0x0

    :goto_70
    if-nez v6, :cond_96

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Labcd/Kj$a;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_7d
    .catchall {:try_start_11 .. :try_end_7d} :catchall_b7

    :try_start_7d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_91

    :try_start_82
    invoke-static {v4, v6, v1}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8c

    :try_start_85
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_91

    :try_start_88
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_b7

    goto :goto_96

    :catchall_8c
    move-exception v1

    :try_start_8d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v1

    :try_start_92
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_96
    :goto_96
    iget-object v4, p0, Labcd/Kj$a;->tp:Labcd/Kj;

    mul-int/lit8 v5, v3, 0x64

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v4, v5}, Labcd/Kj;->j6(Labcd/Kj;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_a5
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_ab
    .catchall {:try_start_92 .. :try_end_ab} :catchall_b7

    :cond_ab
    :try_start_ab
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_b7
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    throw v1
    :try_end_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v0

    sget-boolean v1, Labcd/Kj$a;->DW:Z

    if-eqz v1, :cond_cd

    const-wide v2, 0x5587c8360a692430L  # 1.0653155306507216E104

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cd
    goto :goto_cf

    :goto_ce
    throw v0

    :goto_cf
    goto :goto_ce
.end method

.method private FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x12d52fe12566e10L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x125ae17ea4216805L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/Kj;->j6()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_4e

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    :try_start_16
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4e

    if-eqz v4, :cond_1d

    goto :goto_22

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    const-string v3, ""

    :goto_22
    :try_start_22
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    :cond_29
    invoke-static {p1}, Labcd/FileSystemUtils;->v5(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {v1}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_4e

    goto :goto_31

    :cond_4d
    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Kj$a;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, 0x125ae17ea4216805L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    goto :goto_61

    :goto_60
    throw v0

    :goto_61
    goto :goto_60
.end method

.method static synthetic j6(Labcd/Kj$a;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Labcd/Kj$a;->u7:Ljava/lang/Runnable;

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3b478fecea481d04L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x36b25942f6c79675L  # -1.3224931516907392E45

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Labcd/Kj$a;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x36b25942f6c79675L  # -1.3224931516907392E45

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/Kj$a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x208714346e742260L
    .end annotation

    const-wide v0, 0x1e28dfac7d9fd8dfL

    :try_start_5
    sget-boolean v2, Labcd/Kj$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Kj$a;->j6()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    const/4 v0, 0x0

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Kj$a;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public j6()V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x13d4c1f1c31fff7bL
    .end annotation

    const-wide v0, 0x10448205ada3792cL

    :try_start_5
    sget-boolean v2, Labcd/Kj$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_49

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_49

    :cond_27
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_156

    if-eqz v4, :cond_37

    const-string v4, "无法创建目录: "

    goto :goto_39

    :cond_37
    const-string v4, "Could not create directory: "

    :goto_39
    :try_start_39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_49
    :goto_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4c
    iget-object v5, p0, Labcd/Kj$a;->v5:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_156

    if-ge v4, v5, :cond_14a

    :try_start_54
    iget-object v5, p0, Labcd/Kj$a;->v5:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Labcd/Kj$a;->Zo:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Labcd/Kj$a;->VH:Ljava/util/List;

    const/4 v8, 0x1

    if-eqz v7, :cond_77

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_77

    const/4 v7, 0x1

    goto :goto_78

    :cond_77
    const/4 v7, 0x0

    :goto_78
    iget-object v9, p0, Labcd/Kj$a;->gn:Ljava/util/List;

    if-eqz v9, :cond_89

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v8, 0x0

    :goto_8a
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Labcd/Kj$a;->tp:Labcd/Kj;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v12
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_b6} :catch_145
    .catchall {:try_start_54 .. :try_end_b6} :catchall_156

    if-eqz v12, :cond_bb

    const-string v12, "正在下载 "

    goto :goto_bd

    :cond_bb
    const-string v12, "Downloading "

    :goto_bd
    :try_start_bd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    mul-int/lit8 v12, v4, 0x64

    iget-object v13, p0, Labcd/Kj$a;->v5:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    div-int v13, v12, v13

    invoke-static {v9, v11, v13, v2}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    iget-object v9, p0, Labcd/Kj$a;->tp:Labcd/Kj;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v5, v11, v7}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v8, :cond_146

    iget-object v5, p0, Labcd/Kj$a;->tp:Labcd/Kj;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v8
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_ea} :catch_145
    .catchall {:try_start_bd .. :try_end_ea} :catchall_156

    if-eqz v8, :cond_ef

    const-string v8, "正在提取 "

    goto :goto_f1

    :cond_ef
    const-string v8, "Extracting "

    :goto_f1
    :try_start_f1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Labcd/Kj$a;->v5:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int v8, v12, v8

    invoke-static {v5, v7, v8, v2}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Labcd/Kj$a;->DW(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    iget-object v5, p0, Labcd/Kj$a;->tp:Labcd/Kj;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v7
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_12c} :catch_145
    .catchall {:try_start_f1 .. :try_end_12c} :catchall_156

    if-eqz v7, :cond_131

    const-string v7, "正在删除旧库"

    goto :goto_133

    :cond_131
    const-string v7, "Removing old libraries"

    :goto_133
    :try_start_133
    iget-object v8, p0, Labcd/Kj$a;->v5:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int/2addr v12, v8

    const/16 v8, 0x32

    invoke-static {v5, v7, v12, v8}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    iget-object v5, p0, Labcd/Kj$a;->Hw:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Labcd/Kj$a;->FH(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_144} :catch_145
    .catchall {:try_start_133 .. :try_end_144} :catchall_156

    goto :goto_146

    :catch_145
    move-exception v3

    :cond_146
    :goto_146
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4c

    :cond_14a
    if-nez v3, :cond_155

    :try_start_14c
    new-instance v2, Labcd/Jj;

    invoke-direct {v2, p0}, Labcd/Jj;-><init>(Labcd/Kj$a;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void

    :cond_155
    throw v3
    :try_end_156
    .catchall {:try_start_14c .. :try_end_156} :catchall_156

    :catchall_156
    move-exception v2

    sget-boolean v3, Labcd/Kj$a;->DW:Z

    if-eqz v3, :cond_15e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15e
    goto :goto_160

    :goto_15f
    throw v2

    :goto_160
    goto :goto_15f
.end method
