.class public Labcd/ow;
.super Ljava/lang/Object;


# static fields
.field private static DW:J

.field private static EQ:Landroid/os/Handler;

.field private static FH:Ljava/lang/String;

.field private static Hw:Ljava/lang/String;

.field private static VH:Ljava/lang/Object;

.field private static Zo:Ljava/lang/Object;

.field private static gn:Ljava/lang/Object;

.field private static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/lw;",
            ">;"
        }
    .end annotation
.end field

.field private static tp:Z

.field private static u7:Z

.field private static v5:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Labcd/ow;->j6:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/ow;->v5:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/ow;->Zo:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/ow;->VH:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/ow;->gn:Ljava/lang/Object;

    return-void
.end method

.method static synthetic DW()Ljava/io/File;
    .registers 1

    invoke-static {}, Labcd/ow;->tp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static DW(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-static {v3}, Labcd/ow;->DW(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static DW(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p1}, Labcd/ow;->j6(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Labcd/ow;->j6(Ljava/lang/Class;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method private static DW(Ljava/lang/ClassLoader;Z)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/Mv;->XL()Labcd/Mv;

    move-result-object v2

    new-instance v3, Labcd/nw;

    invoke-direct {v3, p0, v1}, Labcd/nw;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;)V

    invoke-virtual {v2, v3, v0}, Labcd/jw;->j6(Labcd/jw$a;Ljava/util/List;)V

    invoke-static {v0, v1, p1}, Labcd/ow;->j6(Ljava/util/List;Ljava/util/List;Z)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string p1, "Probe loading"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method static synthetic FH()Ljava/io/File;
    .registers 1

    invoke-static {}, Labcd/ow;->u7()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static FH(Ljava/io/File;)Ljava/lang/ClassLoader;
    .registers 10

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string v2, "classes.dex"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x3e80

    new-array v4, v4, [B

    :goto_36
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_36

    :cond_42
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".opt"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Labcd/ow;->DW(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Labcd/kw;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Labcd/kw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_84} :catch_85

    return-object p0

    :catch_85
    move-exception p0

    const-string v0, "Error loading probes"

    invoke-static {v0, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Hw()Z
    .registers 1

    sget-boolean v0, Labcd/ow;->u7:Z

    return v0
.end method

.method public static VH()V
    .registers 2

    sget-object v0, Labcd/ow;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Labcd/ow;->VH:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static synthetic Zo()Ljava/lang/Object;
    .registers 1

    sget-object v0, Labcd/ow;->VH:Ljava/lang/Object;

    return-object v0
.end method

.method private static gn()Ljava/io/File;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Labcd/rw;->FH()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_67

    if-eqz v3, :cond_10

    const-string v3, "dev.builtin.apk"

    goto :goto_12

    :cond_10
    const-string v3, "public.builtin.apk"

    :goto_12
    :try_start_12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-wide v4, Labcd/ow;->DW:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_26

    return-object v1

    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2d} :catch_67

    if-eqz v2, :cond_32

    const-string v2, "assets/dev.probes"

    goto :goto_34

    :cond_32
    const-string v2, "assets/public.probes"

    :goto_34
    :try_start_34
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_43

    return-object v0

    :cond_43
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x3e80

    new-array v4, v4, [B

    :goto_4c
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_58

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4c

    :cond_58
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_68

    sget-wide v2, Labcd/ow;->DW:J

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_66} :catch_67

    return-object v1

    :catch_67
    move-exception v1

    :cond_68
    return-object v0
.end method

.method static synthetic j6(Ljava/io/File;)Ljava/lang/ClassLoader;
    .registers 1

    invoke-static {p0}, Labcd/ow;->FH(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6()Ljava/lang/Object;
    .registers 1

    sget-object v0, Labcd/ow;->gn:Ljava/lang/Object;

    return-object v0
.end method

.method public static j6(Labcd/lw;JLjava/lang/Throwable;)V
    .registers 5

    invoke-static {p0, p1, p2, p3}, Labcd/iw;->j6(Labcd/lw;JLjava/lang/Throwable;)V

    invoke-static {}, Labcd/sw;->j6()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backbone probes event error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const p0, 0x549b2

    add-int/2addr p1, p0

    const p0, 0x1080078

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Labcd/xw;->j6(IILjava/lang/String;)V

    :cond_38
    return-void
.end method

.method private static j6(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Probes"

    invoke-static {v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_19
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-eqz v5, :cond_2c

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_2b

    goto :goto_2d

    :catch_2b
    move-exception v5

    :cond_2c
    move-object v5, v0

    :goto_2d
    :try_start_2d
    const-string v6, "define"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_93

    const-string v6, "void"

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_93

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_77

    if-eqz v5, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_91} :catch_92

    goto :goto_93

    :catch_92
    move-exception p0

    :cond_93
    :goto_93
    return-void
.end method

.method static synthetic j6(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Labcd/ow;->DW(Ljava/lang/ClassLoader;Ljava/util/List;)V

    return-void
.end method

.method private static j6(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DefaultProbes"

    if-nez p0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "probes"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_b} :catch_64

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    const/16 v7, 0x2e

    const/16 v8, 0x2f

    if-ge v6, v4, :cond_37

    aget-object v9, v2, v6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_34

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_37
    array-length v4, v2

    :goto_38
    if-ge v5, v4, :cond_50

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_50
    const-string p0, "strings"

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_64
    move-exception p2

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic j6(Ljava/lang/ClassLoader;Z)V
    .registers 2

    invoke-static {p0, p1}, Labcd/ow;->DW(Ljava/lang/ClassLoader;Z)V

    return-void
.end method

.method private static j6(Ljava/util/List;Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/lw;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Labcd/ow;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening probes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Probes"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/Mv;->XL()Labcd/Mv;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/Mv;->j6(Ljava/util/List;)V

    sget-object p1, Labcd/ow;->j6:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/lw;

    invoke-virtual {v1}, Labcd/lw;->j6()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Labcd/kv;->DW(Ljava/util/List;)V

    goto :goto_2a

    :cond_3e
    sget-object p1, Labcd/ow;->j6:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_4e

    invoke-static {}, Lcom/appfour/backbone/api/Api;->hasBeenUpdated()Z

    move-result p1

    if-nez p1, :cond_4e

    const-wide/16 v1, 0x0

    goto :goto_52

    :cond_4e
    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v1

    :goto_52
    invoke-static {}, Labcd/kv;->DW()J

    move-result-wide v3

    if-nez p2, :cond_5b

    invoke-static {}, Labcd/kv;->j6()V

    :cond_5b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5f
    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/lw;

    sget-object v6, Labcd/ow;->j6:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Labcd/rw;->DW(Labcd/lw;)Z

    move-result v6

    if-nez v6, :cond_5f

    if-nez p2, :cond_96

    invoke-virtual {v5}, Labcd/lw;->j6()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v1

    :goto_81
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/iv;

    invoke-static {v9, v3, v4, v1, v2}, Labcd/kv;->j6(Labcd/iv;JJ)J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_81

    :cond_96
    move-wide v7, v1

    :cond_97
    invoke-static {v5}, Labcd/rw;->j6(Labcd/lw;)V

    invoke-static {v5, v3, v4, v7, v8}, Labcd/iw;->j6(Labcd/lw;JJ)V

    goto :goto_5f

    :cond_9e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a2
    :goto_a2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_bc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/lw;

    invoke-virtual {p1}, Labcd/lw;->FH()Z

    move-result p2

    if-eqz p2, :cond_a2

    invoke-virtual {p1}, Labcd/lw;->j6()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Labcd/kv;->j6(Ljava/util/List;)V

    goto :goto_a2

    :cond_bc
    monitor-exit v0

    return-void

    :catchall_be
    move-exception p0

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_3 .. :try_end_c0} :catchall_be

    goto :goto_c2

    :goto_c1
    throw p0

    :goto_c2
    goto :goto_c1
.end method

.method public static j6(ZJLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Labcd/ow;->EQ:Landroid/os/Handler;

    sput-wide p1, Labcd/ow;->DW:J

    sput-object p3, Labcd/ow;->Hw:Ljava/lang/String;

    sput-object p4, Labcd/ow;->FH:Ljava/lang/String;

    sget-object v0, Labcd/ow;->gn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Labcd/mw;

    invoke-direct {v2, p3, p4, p1, p2}, Labcd/mw;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-eqz p0, :cond_69

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_cb

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_25
    sput-boolean v2, Labcd/ow;->u7:Z

    sget-object v3, Labcd/ow;->gn:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    sput-boolean v2, Lcom/appfour/backbone/api/runtime/RuntimeDebug;->initialProbeLoadAttempted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    sput-wide v2, Lcom/appfour/backbone/api/runtime/RuntimeDebug;->initialProbeLoadTime:J

    sget-boolean p3, Labcd/ow;->tp:Z

    sput-boolean p3, Lcom/appfour/backbone/api/runtime/RuntimeDebug;->initialProbeLoadSuccess:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Waited for load "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/appfour/backbone/api/runtime/RuntimeDebug;->initialProbeLoadTime:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "ms"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Probes"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_58} :catch_5b
    .catchall {:try_start_25 .. :try_end_58} :catchall_59

    goto :goto_63

    :catchall_59
    move-exception p0

    goto :goto_66

    :catch_5b
    move-exception p3

    :try_start_5c
    const-string p4, "Probes"

    const-string v2, "Unexpected InterruptedException"

    invoke-static {p4, v2, p3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    :goto_63
    :try_start_63
    sput-boolean v1, Labcd/ow;->u7:Z

    goto :goto_69

    :goto_66
    sput-boolean v1, Labcd/ow;->u7:Z

    throw p0

    :cond_69
    :goto_69
    invoke-static {}, Labcd/ow;->u7()Ljava/io/File;

    move-result-object p3

    invoke-static {}, Labcd/ow;->gn()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_9d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Opening downloaded probes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "Probes"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Labcd/ow;->FH(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_99
    invoke-static {p1, p0}, Labcd/ow;->DW(Ljava/lang/ClassLoader;Z)V

    goto :goto_c9

    :cond_9d
    if-eqz p4, :cond_be

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Opening built-in probes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Probes"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Labcd/ow;->FH(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_99

    :cond_be
    const-string p1, "Probes"

    const-string p2, "Opening no probes"

    invoke-static {p1, p2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Labcd/ow;->DW(Ljava/lang/ClassLoader;Z)V

    :goto_c9
    monitor-exit v0

    return-void

    :catchall_cb
    move-exception p0

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_63 .. :try_end_cd} :catchall_cb

    goto :goto_cf

    :goto_ce
    throw p0

    :goto_cf
    goto :goto_ce
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Labcd/ow;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/lw;

    invoke-virtual {v1}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic j6(Z)Z
    .registers 1

    sput-boolean p0, Labcd/ow;->tp:Z

    return p0
.end method

.method private static tp()Ljava/io/File;
    .registers 3

    invoke-static {}, Labcd/rw;->FH()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "dev.download.apk"

    goto :goto_f

    :cond_d
    const-string v1, "public.download.apk"

    :goto_f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static u7()Ljava/io/File;
    .registers 3

    invoke-static {}, Labcd/rw;->FH()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "dev.current.apk"

    goto :goto_f

    :cond_d
    const-string v1, "public.current.apk"

    :goto_f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic v5()Ljava/lang/Object;
    .registers 1

    sget-object v0, Labcd/ow;->Zo:Ljava/lang/Object;

    return-object v0
.end method
