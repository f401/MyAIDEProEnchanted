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
            "LpK$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile FH:Labcd/pK$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LpK$a<",
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
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-lt v3, v1, :cond_10

    return-object v0

    :cond_10
    aget-object v4, p0, v3

    array-length v5, p1

    const/4 v6, 0x0

    :goto_14
    if-lt v6, v5, :cond_19

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    new-instance v7, Ljava/io/File;

    aget-object v8, p1, v6

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_14
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

    if-eqz v0, :cond_22

    if-nez p0, :cond_10

    invoke-static {}, Labcd/yK;->u7()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Labcd/yK;

    invoke-direct {p0}, Labcd/yK;-><init>()V

    return-object p0

    :cond_1c
    new-instance p0, Labcd/vK;

    invoke-direct {p0}, Labcd/vK;-><init>()V

    return-object p0

    :cond_22
    invoke-static {}, Labcd/tK;->gn()Z

    move-result p0

    if-eqz p0, :cond_2e

    new-instance p0, Labcd/tK;

    invoke-direct {p0}, Labcd/tK;-><init>()V

    return-object p0

    :cond_2e
    new-instance p0, Labcd/sK;

    invoke-direct {p0}, Labcd/sK;-><init>()V

    return-object p0
.end method

.method protected static j6(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "jgit.fs.debug"

    invoke-virtual {v0, v1}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    :try_start_11
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

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

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Labcd/oK;

    invoke-direct {v2, p0, v0, p2}, Labcd/oK;-><init>(Ljava/lang/Process;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_5b} :catch_d4

    :try_start_5b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_80

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readpipe may return \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "(ignoring remaing output:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_80
    :goto_80
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_c8

    if-nez v4, :cond_c0

    :try_start_86
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_90} :catch_d4

    :goto_90
    :try_start_90
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    if-nez p1, :cond_a8

    if-eqz v3, :cond_a8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a8

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_a8

    return-object v3

    :cond_a8
    if-eqz v0, :cond_dc

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readpipe rc="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_bd} :catch_be
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_bd} :catch_d4

    goto :goto_dc

    :catch_be
    move-exception p1

    goto :goto_90

    :cond_c0
    if-eqz v0, :cond_80

    :try_start_c2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_c8

    goto :goto_80

    :catchall_c8
    move-exception p2

    :try_start_c9
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    throw p2
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d4} :catch_d4

    :catch_d4
    move-exception p0

    if-eqz v0, :cond_dc

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_dc
    :goto_dc
    if-eqz v0, :cond_e5

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "readpipe returns null"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e5
    return-object v1
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

    if-nez v0, :cond_27

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "jgit.gitprefix"

    invoke-virtual {v0, v1}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Labcd/pK$a;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_25

    :cond_1c
    new-instance v0, Labcd/pK$a;

    invoke-virtual {p0}, Labcd/pK;->DW()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    :goto_25
    iput-object v0, p0, Labcd/pK;->FH:Labcd/pK$a;

    :cond_27
    iget-object v0, v0, Labcd/pK$a;->j6:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
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

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1e

    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public Zo()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Labcd/pK;->DW:Labcd/pK$a;

    if-nez v0, :cond_f

    new-instance v0, Labcd/pK$a;

    invoke-virtual {p0}, Labcd/pK;->VH()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pK$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/pK;->DW:Labcd/pK$a;

    :cond_f
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

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/ProcessBuilder;
.end method

.method public abstract j6(Ljava/io/File;)Z
.end method

.method public abstract j6(Ljava/io/File;Z)Z
.end method

.method public abstract v5()Z
.end method
