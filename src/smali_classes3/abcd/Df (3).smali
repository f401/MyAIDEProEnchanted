.class public Labcd/Df;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;


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

    const-class v0, Labcd/Df;

    const-wide v1, -0x96d64983a4c5c18L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x340b32504ed02d01L  # -8.161590502825581E57

    :try_start_6
    sget-boolean v3, Labcd/Df;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Df;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x2c63879ad83bd2b0L  # 7.314541207831809E-95

    :try_start_5
    sget-boolean v2, Labcd/Df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->a8()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Df;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x3992d30128ffd114L  # -1.8492337086529296E31

    :try_start_5
    sget-boolean v2, Labcd/Df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800fb

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Df;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, -0xe2c85649cbb28f8L  # -2.029465779840053E240

    :try_start_5
    sget-boolean v2, Labcd/Df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-virtual {p0}, Labcd/Df;->isEnabled()Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Df;->DW:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x1019cd9182ceaa6cL

    :try_start_5
    sget-boolean v2, Labcd/Df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Zo()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    const/4 v0, 0x1

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Df;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
