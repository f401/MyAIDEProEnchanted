.class public Labcd/jh;
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

    const-class v0, Labcd/jh;

    const-wide v1, 0x19e4cd5b573927c0L  # 6.119576997894645E-184

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x31e80595f2307694L  # -1.616126185813243E68

    :try_start_6
    sget-boolean v3, Labcd/jh;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/jh;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x737072fafd94f49L

    :try_start_5
    sget-boolean v2, Labcd/jh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/jh;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0xfa100d8ce8c589bL  # -1.9249169922381726E233

    :try_start_5
    sget-boolean v2, Labcd/jh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800fe

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/jh;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0xafbb898ce990a5L

    :try_start_5
    sget-boolean v2, Labcd/jh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->j6()Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2e

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/jh;->DW:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public run()Z
    .registers 10

    const-wide v0, 0x602ed697dcac731L

    :try_start_5
    sget-boolean v2, Labcd/jh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d060e

    const-string v6, "go_premium_command"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_20

    const/4 v0, 0x1

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/jh;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
