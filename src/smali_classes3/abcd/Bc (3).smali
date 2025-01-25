.class public Labcd/Bc;
.super Labcd/yd;


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
.field private we:Labcd/Ec;
    .annotation runtime Labcd/ru;
        field = 0x307dc238f47de8b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Bc;

    const-wide v1, -0x3d0777e378c8d78L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x12e6dbc57ba84363L  # -3.466796752298973E217

    :try_start_6
    sget-boolean v3, Labcd/Bc;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/yd;-><init>(Labcd/La;)V

    if-eqz p1, :cond_19

    new-instance v3, Labcd/Ec;

    invoke-direct {v3, p1, p0}, Labcd/Ec;-><init>(Labcd/La;Labcd/Bc;)V

    iput-object v3, p0, Labcd/Bc;->we:Labcd/Ec;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/Bc;->EQ:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0xfe1749b4a49dc6dL  # -1.1855224336661656E232

    :try_start_5
    sget-boolean v2, Labcd/Bc;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Labcd/yd;->DW()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Bc;->EQ:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public VH()Labcd/Ec;
    .registers 5

    const-wide v0, -0x2a0fde3876a46d08L  # -9.249651786337731E105

    :try_start_5
    sget-boolean v2, Labcd/Bc;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Bc;->we:Labcd/Ec;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Bc;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public bridge synthetic VH()Labcd/Ed;
    .registers 2

    invoke-virtual {p0}, Labcd/Bc;->VH()Labcd/Ec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic VH()Labcd/oa;
    .registers 2

    invoke-virtual {p0}, Labcd/Bc;->VH()Labcd/Ec;

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x32241ee1b21bcea8L  # -1.1744160813895173E67

    :try_start_5
    sget-boolean v2, Labcd/Bc;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "Java Binary"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Bc;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
