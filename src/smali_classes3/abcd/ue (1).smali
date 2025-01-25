.class public Labcd/ue;
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

    const-class v0, Labcd/ue;

    const-wide v1, 0x2dc7c3a578efeb8L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x27b8ab151a986613L  # -1.8386323033236648E117

    :try_start_6
    sget-boolean v3, Labcd/ue;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ue;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x45461a97ba515c60L  # -8.367488406754585E-26

    :try_start_6
    sget-boolean v3, Labcd/ue;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "aidelicensing"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/ue;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public static FH(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xd607315ec212d74L

    :try_start_6
    sget-boolean v3, Labcd/ue;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "aidelicensing"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/ue;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x10201a7607f45953L  # 5.18620800333795E-231

    :try_start_6
    sget-boolean v3, Labcd/ue;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    :cond_d
    return-void

    :catchall_e
    move-exception v3

    sget-boolean v4, Labcd/ue;->DW:Z

    if-eqz v4, :cond_16

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/ue;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xa30325d68e2e0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v0, "aidelicensing"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Labcd/ue;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, -0xa30325d68e2e0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public static j6(Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x14690e6b29cde700L  # -1.8857321995798227E210

    :try_start_6
    sget-boolean v3, Labcd/ue;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "aidelicensing"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/ue;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method
