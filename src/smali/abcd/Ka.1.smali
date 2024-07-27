.class public final Labcd/Ka;
.super Labcd/Ya;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private J0:I
    .annotation runtime Labcd/ru;
        field = -0x117f8532fe3d5fcL
    .end annotation
.end field

.field private J8:Labcd/Ja;
    .annotation runtime Labcd/ru;
        field = -0x11dace51f00d93c5L
    .end annotation
.end field

.field private we:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x20f95117e18fdf41L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x80df30cb2004b44L

    const-class v0, Labcd/Ka;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>(Labcd/Ea;Labcd/Ba;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x284233db5644c0L
    .end annotation

    const-wide v2, -0x518d9c985d3fe65L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x518d9c985d3fe65L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Labcd/Ya;-><init>(Labcd/Ea;Labcd/Ba;I)V

    iput-object p2, p0, Labcd/Ka;->we:Labcd/Ba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ka;->EQ:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected constructor <init>(Labcd/Ea;Labcd/Ba;Labcd/Ja;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x255c2bd16da27584L
    .end annotation

    const-wide v8, 0x5b1e8a8388a7291L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b1e8a8388a7291L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Labcd/Ya;-><init>(Labcd/Ea;Labcd/Ba;I)V

    iput-object p2, p0, Labcd/Ka;->we:Labcd/Ba;

    invoke-virtual {p2, p0}, Labcd/Ba;->j6(Labcd/Aa;)I

    move-result v0

    iput v0, p0, Labcd/Ka;->J0:I

    iput-object p3, p0, Labcd/Ka;->J8:Labcd/Ja;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ka;->EQ:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public EQ()I
    .registers 5

    const-wide v2, -0x144821fc43cade90L    # -7.846559352255201E210

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x144821fc43cade90L    # -7.846559352255201E210

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ka;->J0:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ka;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Labcd/na;
    .registers 5

    const-wide v2, 0x14114839a0b600c5L    # 5.133579737041714E-212

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14114839a0b600c5L    # 5.133579737041714E-212

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Ka;->x9()Labcd/Ja;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->QX()Labcd/na;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ka;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Labcd/ec;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6cc43d272ed317e0L
    .end annotation

    const-wide v2, 0x50b708816f400565L    # 6.827687030625649E80

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x50b708816f400565L    # 6.827687030625649E80

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Labcd/Ya;->j6(Labcd/ec;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ka;->J0:I

    iget-object v0, p0, Labcd/Ka;->we:Labcd/Ba;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ja;

    iput-object v0, p0, Labcd/Ka;->J8:Labcd/Ja;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ka;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Labcd/fc;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1c058d2b1954c760L
    .end annotation

    const-wide v2, -0x585060a532e0bdc7L

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x585060a532e0bdc7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Labcd/Ya;->j6(Labcd/fc;)V

    iget v0, p0, Labcd/Ka;->J0:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Labcd/Ka;->we:Labcd/Ba;

    iget-object v1, p0, Labcd/Ka;->J8:Labcd/Ja;

    invoke-virtual {v0, v1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ka;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public x9()Labcd/Ja;
    .registers 5

    const-wide v2, 0x4a1b224d7c8f7c13L    # 9.914094475567858E48

    :try_start_0
    sget-boolean v0, Labcd/Ka;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4a1b224d7c8f7c13L    # 9.914094475567858E48

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ka;->J8:Labcd/Ja;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ka;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
