.class public Labcd/Pi;
.super Labcd/Oi;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static we:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Pi;

    const-wide v1, 0x28efdb2f1649c088L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0xc007c5d8b7f0140L

    :try_start_6
    sget-boolean v3, Labcd/Pi;->EQ:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const-string v3, "com.aide.premium.key"

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkjXTkIvABlLJgyvluBm4h4Ytw87BbBrSRXohMVMvk0Eq2pYJKT1jYfC1W65/YY5GcFYwMiaemVlpH40h/h+rkm+GYYq04awtN8zv35+HymbrW6ztGgNv7gF7ksAOOb8swqQwlx6uzfZWzbny7r9kkKURlXWmpkcKpWUjfoQ1MIRFxuXoJ2owTjvdkezI2hjCxC+NJ57QCG8tBoWJo5jscDRylHuaXBGVX7fJx7NsWzlk9xTXUFE7F8J5OaPRpgCNwo+xC0pXSoA/yCv1dOy4v2tPr9L9rfB95nrTwRs1ob44LOY3UqYgVMC1wpy+nxU6UGch8g8/DfHXfaefBcsbfwIDAQAB"

    const-class v5, Lcom/aide/licensing/IAideLicensingService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x6b6b8adb

    invoke-direct {p0, v3, v4, v6, v5}, Labcd/Oi;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Labcd/Pi;->we:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v3
.end method


# virtual methods
.method protected Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d758ed49de835b4L
    .end annotation

    const-wide v0, 0x4f22fc5821fae983L  # 1.6772431649616874E73

    :try_start_5
    sget-boolean v2, Labcd/Pi;->EQ:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->J8()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Pi;->we:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected j6(J)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x27b34e81fd1f5c69L
    .end annotation

    const-wide v0, 0x183d0f0cb786765cL

    :try_start_5
    sget-boolean v2, Labcd/Pi;->EQ:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting premium key valid until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Labcd/Ek;->FH(J)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "validDays"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Premium key valid"

    invoke-static {v3, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception v2

    sget-boolean v3, Labcd/Pi;->we:Z

    if-eqz v3, :cond_60

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v2
.end method

.method protected j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x45a57badb6766393L
    .end annotation

    const-wide v0, 0x3c0102ecd60922d0L  # 1.1527390866218426E-19

    :try_start_5
    sget-boolean v2, Labcd/Pi;->EQ:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting premium key not valid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->J0()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "reason"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Premium key not valid"

    invoke-static {v3, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/Pi;->we:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method
