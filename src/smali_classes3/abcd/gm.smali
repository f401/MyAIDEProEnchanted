.class public Labcd/gm;
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

    const-class v0, Labcd/gm;

    const-wide v1, 0x173a71e8a93e4a88L  # 8.844345492657728E-197

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x7aedc9f57103a80bL  # -3.061683177016744E-284

    :try_start_6
    sget-boolean v3, Labcd/gm;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/gm;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(IIII)I
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/gm;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x62152de1948be200L  # 3.0490720001352347E164

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_27

    :cond_21
    if-ne p1, p3, :cond_25

    sub-int/2addr p0, p2

    return p0

    :cond_25
    sub-int/2addr p1, p3

    return p1

    :catchall_27
    move-exception v0

    sget-boolean v1, Labcd/gm;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x62152de1948be200L  # 3.0490720001352347E164

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method
