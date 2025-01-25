.class public abstract Lorg/apache/tools/ant/taskdefs/JDBCTask;
.super Lorg/apache/tools/ant/Task;
.source "JDBCTask.java"


# static fields
.field private static final HASH_TABLE_SIZE:I = 0x3

.field private static final LOADER_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autocommit:Z

.field private caching:Z

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private connectionProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Property;",
            ">;"
        }
    .end annotation
.end field

.field private driver:Ljava/lang/String;

.field private failOnConnectionError:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private password:Ljava/lang/String;

.field private rdbms:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->LOADER_MAP:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 103
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->caching:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->autocommit:Z

    .line 117
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->url:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->userId:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->password:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    .line 148
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->failOnConnectionError:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->connectionProperties:Ljava/util/List;

    return-void
.end method

.method private getDriver()Ljava/sql/Driver;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    if-eqz v0, :cond_130

    .line 398
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_b6

    .line 405
    sget-object v1, Lorg/apache/tools/ant/taskdefs/JDBCTask;->LOADER_MAP:Ljava/util/Hashtable;

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_b} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_b} :catch_10d
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_b} :catch_df
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_b} :catch_13c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_b} :catch_13e

    .line 406
    :try_start_b
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->caching:Z

    if-eqz v0, :cond_19

    .line 407
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 409
    :cond_19
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_73

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using AntClassLoader with classpath "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 413
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 414
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->caching:Z

    if-eqz v2, :cond_53

    .line 415
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_53
    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_90

    .line 423
    :try_start_54
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->loader:Lorg/apache/tools/ant/AntClassLoader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Driver;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 429
    :goto_62
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Driver;
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_72} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_72} :catch_10d
    .catch Ljava/lang/InstantiationException; {:try_start_54 .. :try_end_72} :catch_df
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_72} :catch_13c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_72} :catch_13e

    .line 445
    return-object v0

    .line 418
    :cond_73
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using a cached AntClassLoader."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    goto :goto_53

    .line 422
    :catchall_90
    move-exception v0

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_73 .. :try_end_92} :catchall_90

    :try_start_92
    throw v0
    :try_end_93
    .catch Ljava/lang/ClassNotFoundException; {:try_start_92 .. :try_end_93} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_92 .. :try_end_93} :catch_10d
    .catch Ljava/lang/InstantiationException; {:try_start_92 .. :try_end_93} :catch_df
    .catch Ljava/lang/NoSuchMethodException; {:try_start_92 .. :try_end_93} :catch_13c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_92 .. :try_end_93} :catch_13e

    .line 430
    :catch_93
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class Not Found: JDBC driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 425
    :cond_b6
    :try_start_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using system loader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Driver;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_dd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_dd} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_b6 .. :try_end_dd} :catch_10d
    .catch Ljava/lang/InstantiationException; {:try_start_b6 .. :try_end_dd} :catch_df
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b6 .. :try_end_dd} :catch_13c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b6 .. :try_end_dd} :catch_13e

    move-result-object v0

    goto :goto_62

    .line 440
    :catch_df
    move-exception v0

    .line 441
    :goto_e0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": JDBC driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 435
    :catch_10d
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Access: JDBC driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 392
    :cond_130
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Driver attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 440
    :catch_13c
    move-exception v0

    goto :goto_e0

    :catch_13e
    move-exception v0

    goto :goto_e0
.end method

.method protected static getLoaderMap()Ljava/util/Hashtable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;"
        }
    .end annotation

    .line 304
    sget-object v0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->LOADER_MAP:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public addConnectionProperty(Lorg/apache/tools/ant/taskdefs/Property;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->connectionProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 181
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 183
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 462
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method protected getConnection()Ljava/sql/Connection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x1

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->userId:Ljava/lang/String;

    if-eqz v0, :cond_f1

    .line 340
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->password:Ljava/lang/String;

    if-eqz v0, :cond_e5

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->url:Ljava/lang/String;

    if-eqz v0, :cond_d9

    .line 347
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connecting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 348
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 349
    const-string v0, "user"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "password"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->connectionProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Property;

    .line 353
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v3, :cond_5b

    if-nez v0, :cond_81

    .line 356
    :cond_5b
    const-string v0, "Only name/value pairs are supported as connection properties."

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V
    :try_end_61
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_61} :catch_62

    goto :goto_43

    .line 374
    :catch_62
    move-exception v0

    .line 376
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->failOnConnectionError:Z

    if-nez v1, :cond_cf

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 380
    const/4 v0, 0x0

    :goto_80
    return-object v0

    .line 359
    :cond_81
    :try_start_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting connection property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 365
    :cond_a2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getDriver()Ljava/sql/Driver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_b6

    .line 372
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->autocommit:Z

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    goto :goto_80

    .line 369
    :cond_b6
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No suitable Driver for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cf
    .catch Ljava/sql/SQLException; {:try_start_81 .. :try_end_cf} :catch_62

    .line 377
    :cond_cf
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 344
    :cond_d9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Url attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 341
    :cond_e5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Password attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 338
    :cond_f1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "UserId attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected getLoader()Lorg/apache/tools/ant/AntClassLoader;
    .registers 2

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->loader:Lorg/apache/tools/ant/AntClassLoader;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 502
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRdbms()Ljava/lang/String;
    .registers 2

    .line 510
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 478
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 486
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 518
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAutocommit()Z
    .registers 2

    .line 470
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->autocommit:Z

    return v0
.end method

.method public isCaching(Z)V
    .registers 2

    .line 454
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->caching:Z

    .line 455
    return-void
.end method

.method protected isValidRdbms(Ljava/sql/Connection;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 294
    :cond_a
    :goto_a
    return v0

    .line 267
    :cond_b
    :try_start_b
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    if-eqz v3, :cond_53

    .line 270
    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RDBMS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 273
    if-eqz v3, :cond_3a

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 274
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not the required RDBMS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 275
    goto :goto_a

    .line 279
    :cond_53
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 280
    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductVersion()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    .line 283
    if-eqz v2, :cond_99

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 286
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not the required version: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V
    :try_end_b5
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b5} :catch_b8

    move v0, v1

    .line 287
    goto/16 :goto_a

    .line 290
    :catch_b8
    move-exception v0

    .line 292
    const-string v0, "Failed to obtain required RDBMS information"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 293
    goto/16 :goto_a
.end method

.method public setAutocommit(Z)V
    .registers 2

    .line 225
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->autocommit:Z

    .line 226
    return-void
.end method

.method public setCaching(Z)V
    .registers 2

    .line 172
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->caching:Z

    .line 173
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 163
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 193
    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .registers 3

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->driver:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setFailOnConnectionError(Z)V
    .registers 2

    .line 253
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->failOnConnectionError:Z

    .line 254
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->password:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setRdbms(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->rdbms:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->url:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .registers 2

    .line 494
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->userId:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JDBCTask;->version:Ljava/lang/String;

    .line 244
    return-void
.end method
