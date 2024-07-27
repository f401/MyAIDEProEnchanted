.class final Labcd/Ql;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Pl;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final FH:Labcd/ProcessExecutorWrapper;

.field final Hw:Ljava/io/ByteArrayOutputStream;

.field final v5:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Ql;

    const-wide v2, -0x44767a4a894f97bL    # -9.362789027340537E287

    const-wide v4, -0x2f1bc74b64979c8L    # -2.416072000272912E294

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ProcessExecutorWrapper;Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    iput-object p1, p0, Labcd/Ql;->FH:Labcd/ProcessExecutorWrapper;

    iput-object p2, p0, Labcd/Ql;->Hw:Ljava/io/ByteArrayOutputStream;

    iput-object p3, p0, Labcd/Ql;->v5:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x36d3f7a7fc7e19dL
    .end annotation

    const-wide v2, 0x18e60f1ba9ad5620L    # 9.901907388787202E-189

    :try_start_0
    sget-boolean v0, Labcd/Ql;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18e60f1ba9ad5620L    # 9.901907388787202E-189

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ql;->FH:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v0}, Labcd/ProcessExecutorWrapper;->j6()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ql;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()[B
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1d24e4c5f0f0c51bL
    .end annotation

    const-wide v2, -0x3cdf430bcc1da1e0L    # -2.355678327942928E15

    :try_start_0
    sget-boolean v0, Labcd/Ql;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3cdf430bcc1da1e0L    # -2.355678327942928E15

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ql;->Hw:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ql;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
