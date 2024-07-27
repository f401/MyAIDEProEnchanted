.class public Labcd/Rl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x44767a4a894f97bL    # -9.362789027340537E287

    const-class v0, Labcd/Rl;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x3e4f0f194d238bb5L    # 1.4462964524310243E-8

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3e4f0f194d238bb5L    # 1.4462964524310243E-8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/io/OutputStream;",
            "[B)",
            "Labcd/Pl;"
        }
    .end annotation

    sget-boolean v0, Labcd/Rl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x44d06a162ae115b7L    # 3.100592637369151E23

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    const/4 v4, 0x5

    aput-object p5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Labcd/ProcessExecutorWrapper;

    invoke-direct {v1, v0, p2, p1, p3}, Labcd/ProcessExecutorWrapper;-><init>([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Labcd/DoubleOutputStream;

    invoke-direct {v3, v0, p4}, Labcd/DoubleOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v3}, Labcd/ProcessExecutorWrapper;->DW(Ljava/io/OutputStream;)V

    new-instance v3, Labcd/DoubleOutputStream;

    invoke-direct {v3, v2, p4}, Labcd/DoubleOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v3}, Labcd/ProcessExecutorWrapper;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper;->start()Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p5, :cond_1

    array-length v4, p5

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v3, p5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper;->Hw()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v3, Labcd/Ql;

    invoke-direct {v3, v1, v0, v2}, Labcd/Ql;-><init>(Labcd/ProcessExecutorWrapper;Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper;->DW()V

    throw v0

    :catch_1
    move-exception v4

    goto :goto_0
.end method
