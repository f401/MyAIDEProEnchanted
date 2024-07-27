.class Labcd/Dc$b;
.super Ljava/io/InputStream;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private FH:Ljava/io/InputStream;
    .annotation runtime Labcd/ru;
        field = -0x1cd4404272f25109L
    .end annotation
.end field

.field private Hw:J
    .annotation runtime Labcd/ru;
        field = -0x236eecfd6964efb0L
    .end annotation
.end field

.field private v5:J
    .annotation runtime Labcd/ru;
        field = -0x2354cc69c34c9ea3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x317663069fe4e6cfL    # -2.2096959080764987E70

    const-class v0, Labcd/Dc$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x71fd73777f8b3858L
    .end annotation

    const-wide v2, 0x168b852f2db03e9L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Dc$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v6, 0x168b852f2db03e9L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Labcd/Dc$b;->FH:Ljava/io/InputStream;

    iput-wide p2, p0, Labcd/Dc$b;->Hw:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Dc$b;->v5:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Dc$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x20bb97b40d85c480L
    .end annotation

    const-wide v2, -0x26ab6c0cb5a86a9fL    # -2.1254943995490637E122

    :try_start_0
    sget-boolean v0, Labcd/Dc$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26ab6c0cb5a86a9fL    # -2.1254943995490637E122

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Dc$b;->FH:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Dc$b;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Dc$b;->FH:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public read()I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xbb24189bbc7f0fcL
    .end annotation

    const-wide v4, -0xa4e203733c1cd07L    # -8.58819453412066E258

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Dc$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xa4e203733c1cd07L    # -8.58819453412066E258

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Labcd/Dc$b;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public read([B)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x44379899dc7788dbL
    .end annotation

    const-wide v2, -0x3084cd3ffaf23e78L    # -7.688821585333814E74

    :try_start_0
    sget-boolean v0, Labcd/Dc$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3084cd3ffaf23e78L    # -7.688821585333814E74

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/Dc$b;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public read([BII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4fa3036c9370a17L
    .end annotation

    const-wide v8, -0x24ef8afb40c4884L

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Labcd/Dc$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x24ef8afb40c4884L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Labcd/Dc$b;->v5:J

    iget-wide v2, p0, Labcd/Dc$b;->Hw:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/Dc$b;->FH:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Labcd/Dc$b;->v5:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Dc$b;->v5:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Dc$b;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method
