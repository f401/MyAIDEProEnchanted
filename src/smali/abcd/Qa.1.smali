.class public final Labcd/Qa;
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
        field = 0x1b69052a5721bac4L
    .end annotation
.end field

.field private J8:Labcd/Ya;
    .annotation runtime Labcd/ru;
        field = 0x3005e3681e9352dL
    .end annotation
.end field

.field private we:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = 0xf69a590e2798177L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x4e35543f6f76f3f3L    # 5.750312083239026E68

    const-class v0, Labcd/Qa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>(Labcd/Ea;Labcd/Ba;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xc1f7d922f2d1c0L
    .end annotation

    const-wide v2, -0x2cb3c889c04a017dL    # -1.8393064729552164E93

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Qa;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2cb3c889c04a017dL    # -1.8393064729552164E93

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Labcd/Ya;-><init>(Labcd/Ea;Labcd/Ba;I)V

    iput-object p2, p0, Labcd/Qa;->we:Labcd/Ba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Qa;->EQ:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public EQ()I
    .registers 5

    const-wide v2, -0x20fb1e42ae1aa911L    # -5.340177481886907E149

    :try_start_0
    sget-boolean v0, Labcd/Qa;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20fb1e42ae1aa911L    # -5.340177481886907E149

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Qa;->J0:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qa;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Labcd/na;
    .registers 5

    const-wide v2, -0x300c3736032508d0L

    :try_start_0
    sget-boolean v0, Labcd/Qa;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x300c3736032508d0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Qa;->x9()Labcd/Ya;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->QX()Labcd/na;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qa;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Labcd/ec;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x36876bf92397f790L
    .end annotation

    const-wide v2, -0x337f4e08d120c800L    # -3.35351457839069E60

    :try_start_0
    sget-boolean v0, Labcd/Qa;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x337f4e08d120c800L    # -3.35351457839069E60

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Labcd/Ya;->j6(Labcd/ec;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Qa;->J0:I

    iget-object v0, p0, Labcd/Qa;->we:Labcd/Ba;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ya;

    iput-object v0, p0, Labcd/Qa;->J8:Labcd/Ya;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qa;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Labcd/fc;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x754d397dc5253a20L
    .end annotation

    const-wide v2, 0x23adc97a5faf1220L    # 8.004221346291406E-137

    :try_start_0
    sget-boolean v0, Labcd/Qa;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23adc97a5faf1220L    # 8.004221346291406E-137

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Labcd/Ya;->j6(Labcd/fc;)V

    iget v0, p0, Labcd/Qa;->J0:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Labcd/Qa;->we:Labcd/Ba;

    iget-object v1, p0, Labcd/Qa;->J8:Labcd/Ya;

    invoke-virtual {v0, v1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qa;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public x9()Labcd/Ya;
    .registers 5

    const-wide v2, 0xd1e71b540106570L

    :try_start_0
    sget-boolean v0, Labcd/Qa;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd1e71b540106570L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Qa;->J8:Labcd/Ya;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qa;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
