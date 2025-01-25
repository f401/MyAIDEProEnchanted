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
    .registers 3

    const-class v0, Labcd/Rl;

    const-wide v1, -0x44767a4a894f97bL  # -9.362789027340537E287

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3e4f0f194d238bb5L  # 1.4462964524310243E-8

    :try_start_6
    sget-boolean v3, Labcd/Rl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Rl;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/io/OutputStream;",
            "[B)",
            "Labcd/Pl;"
        }
    .end annotation

    sget-boolean v0, Labcd/Rl;->j6:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, 0x44d06a162ae115b7L  # 3.100592637369151E23

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p0, Labcd/ProcessExecutorWrapper;

    invoke-direct {p0, v0, p2, p1, p3}, Labcd/ProcessExecutorWrapper;-><init>([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p3, Labcd/DoubleOutputStream;

    invoke-direct {p3, p1, p4}, Labcd/DoubleOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p3}, Labcd/ProcessExecutorWrapper;->DW(Ljava/io/OutputStream;)V

    new-instance p3, Labcd/DoubleOutputStream;

    invoke-direct {p3, p2, p4}, Labcd/DoubleOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p3}, Labcd/ProcessExecutorWrapper;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Labcd/ProcessExecutorWrapper;->start()Ljava/io/OutputStream;

    move-result-object p3

    if-eqz p3, :cond_65

    if-eqz p5, :cond_62

    array-length p4, p5

    if-eqz p4, :cond_62

    :try_start_5a
    invoke-virtual {p3, p5}, Ljava/io/OutputStream;->write([B)V
    :try_end_5d
    .catch Ljava/io/InterruptedIOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception p4

    :goto_5f
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    :cond_62
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_65
    :try_start_65
    invoke-virtual {p0}, Labcd/ProcessExecutorWrapper;->Hw()V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_68} :catch_6e

    new-instance p3, Labcd/Ql;

    invoke-direct {p3, p0, p1, p2}, Labcd/Ql;-><init>(Labcd/ProcessExecutorWrapper;Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V

    return-object p3

    :catch_6e
    move-exception p1

    invoke-virtual {p0}, Labcd/ProcessExecutorWrapper;->DW()V

    throw p1
.end method
