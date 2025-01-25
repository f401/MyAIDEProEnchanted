.class public final Labcd/Ra;
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
.field private final J0:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = 0x21516f446b31de60L
    .end annotation
.end field

.field private J8:I
    .annotation runtime Labcd/ru;
        field = 0x1c1cac883f4a9a43L
    .end annotation
.end field

.field private final we:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = -0x172e90628ba12108L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ra;

    const-wide v1, 0x18ab9bfb58fc735L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>(Labcd/Ba;Labcd/Ea;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xadb506b0215d1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ra;->tp:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x46a45c1023369c19L  # -2.1293373251618917E-32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p2, p1}, Labcd/Ya;-><init>(Labcd/Ea;Labcd/Ba;)V

    iput-object p2, p0, Labcd/Ra;->we:Labcd/Ea;

    iput-object p1, p0, Labcd/Ra;->J0:Labcd/Ba;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Ra;->EQ:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x46a45c1023369c19L  # -2.1293373251618917E-32

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method protected constructor <init>(Labcd/Ba;Labcd/Ea;ILabcd/na;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x5862847992fa3e7L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ra;->tp:Z

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1da89483db7b36dfL  # 8.336748434990718E-166

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0, p2, p1, p3}, Labcd/Ya;-><init>(Labcd/Ea;Labcd/Ba;I)V

    iput-object p2, p0, Labcd/Ra;->we:Labcd/Ea;

    iput-object p1, p0, Labcd/Ra;->J0:Labcd/Ba;

    invoke-virtual {p1, p0}, Labcd/Ba;->j6(Labcd/Aa;)I

    move-result v0

    iput v0, p0, Labcd/Ra;->J8:I

    invoke-virtual {p0, p4}, Labcd/Aa;->j6(Labcd/na;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Ra;->EQ:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x1da89483db7b36dfL  # 8.336748434990718E-166

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method


# virtual methods
.method public EQ()I
    .registers 5

    const-wide v0, 0x193d7a4e41f8fc0dL  # 4.234256222960501E-187

    :try_start_5
    sget-boolean v2, Labcd/Ra;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ra;->J8:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ra;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method protected j6(Labcd/ec;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe8c4d8b97398ef3L
    .end annotation

    const-wide v0, 0x149f6bcd33d162b0L

    :try_start_5
    sget-boolean v2, Labcd/Ra;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Labcd/Ya;->j6(Labcd/ec;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/Ra;->J8:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ra;->EQ:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method protected j6(Labcd/fc;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x563b1972569da01bL
    .end annotation

    const-wide v0, 0x399b528b1d63dbc0L  # 3.3677501536288513E-31

    :try_start_5
    sget-boolean v2, Labcd/Ra;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Labcd/Ya;->j6(Labcd/fc;)V

    iget v2, p0, Labcd/Ra;->J8:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ra;->EQ:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
