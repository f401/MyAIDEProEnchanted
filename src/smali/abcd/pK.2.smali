.class public abstract Labcd/pK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/pK$a;
    }
.end annotation


# static fields
.field public static final j6:Labcd/pK;


# instance fields
.field private volatile DW:Labcd/pK$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LpK$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile FH:Labcd/pK$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LpK$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Labcd/pK;->j6()Labcd/pK;

    move-result-object v0

    sput-object v0, Labcd/pK;->j6:Labcd/pK;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs DW(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    .registers 12

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    array-length v7, p1

    move v1, v2

    :goto_2
    if-lt v1, v7, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/io/File;

    aget-object v9, p1, v1

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static j6()Labcd/pK;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/pK;->j6(Ljava/lang/Boolean;)Labcd/pK;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/Boolean;)Labcd/pK;
    .registers 2

    invoke-static {}, Labcd/vK;->gn()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    invoke-static {}, Labcd/yK;->u7()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Labcd/yK;

    invoke-direct {v0}, Labcd/yK;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/vK;

    invoke-direct {v0}, Labcd/vK;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {}, Labcd/tK;->gn()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Labcd/tK;

    invoke-direct {v0}, Labcd/tK;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/sK;

    invoke-direct {v0}, Labcd/sK;-><init>()V

    goto :goto_0
.end method

.method protected static j6(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v1

    const-string v2, "jgit.fs.debug"

    invoke-virtual {v1, v2}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readpipe "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v6, Labcd/oK;

    invoke-direct {v6, v3, v2, v5}, Labcd/oK;-><init>(Ljava/lang/Process;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readpipe may return \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "(ignoring remaing output:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-nez v7, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Thread;->join()V

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v0, v1

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readpipe rc="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_3
    if-eqz v2, :cond_2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "readpipe returns null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_1

    :try_start_4
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    if-eqz v2, :cond_4

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public DW(Ljava/io/File;)Labcd/pK;
    .registers 3

    new-instance v0, Labcd/pK$a;

    invoke-direct {v0, p1}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/pK;->DW:Labcd/pK$a;

    return-object p0
.end method

.method protected abstract DW()Ljava/io/File;
.end method

.method public FH()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Labcd/pK;->FH:Labcd/pK$a;

    if-nez v0, :cond_0

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "jgit.gitprefix"

    invoke-virtual {v0, v1}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Labcd/pK$a;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Labcd/pK;->FH:Labcd/pK$a;

    :cond_0
    iget-object v0, v0, Labcd/pK$a;->j6:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0

    :cond_1
    new-instance v0, Labcd/pK$a;

    invoke-virtual {p0}, Labcd/pK;->DW()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract Hw()Z
.end method

.method protected VH()Ljava/io/File;
    .registers 3

    new-instance v0, Labcd/nK;

    invoke-direct {v0, p0}, Labcd/nK;-><init>(Labcd/pK;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public Zo()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Labcd/pK;->DW:Labcd/pK$a;

    if-nez v0, :cond_0

    new-instance v0, Labcd/pK$a;

    invoke-virtual {p0}, Labcd/pK;->VH()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/pK;->DW:Labcd/pK$a;

    :cond_0
    iget-object v0, v0, Labcd/pK$a;->j6:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;
.end method

.method public abstract j6(Ljava/io/File;)Z
.end method

.method public abstract j6(Ljava/io/File;Z)Z
.end method

.method public abstract v5()Z
.end method
