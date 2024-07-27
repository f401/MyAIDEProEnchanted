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
    .registers 4

    const-wide v2, -0x3d0777e378c8d78L

    const-class v0, Labcd/Bc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, -0x12e6dbc57ba84363L    # -3.466796752298973E217

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Bc;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12e6dbc57ba84363L    # -3.466796752298973E217

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/yd;-><init>(Labcd/La;)V

    if-eqz p1, :cond_1

    new-instance v0, Labcd/Ec;

    invoke-direct {v0, p1, p0}, Labcd/Ec;-><init>(Labcd/La;Labcd/Bc;)V

    iput-object v0, p0, Labcd/Bc;->we:Labcd/Ec;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bc;->EQ:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0xfe1749b4a49dc6dL    # -1.1855224336661656E232

    :try_start_0
    sget-boolean v0, Labcd/Bc;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xfe1749b4a49dc6dL    # -1.1855224336661656E232

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Labcd/yd;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bc;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Labcd/Ec;
    .registers 5

    const-wide v2, -0x2a0fde3876a46d08L    # -9.249651786337731E105

    :try_start_0
    sget-boolean v0, Labcd/Bc;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a0fde3876a46d08L    # -9.249651786337731E105

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Bc;->we:Labcd/Ec;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bc;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
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

    const-wide v2, -0x32241ee1b21bcea8L    # -1.1744160813895173E67

    :try_start_0
    sget-boolean v0, Labcd/Bc;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32241ee1b21bcea8L    # -1.1744160813895173E67

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "Java Binary"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bc;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
