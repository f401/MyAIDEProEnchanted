.class public Lcom/aide/ui/Ha;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:Ljava/util/GregorianCalendar;
    .annotation runtime Labcd/ru;
        field = -0x1ef0d08590260980L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1885d903e219c79dL
    .end annotation

    const-wide v8, 0x30d6290d4fc2abb0L    # 1.9597373311645413E-73

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/Ha;

    const-wide v2, 0x15700bfd820a3210L    # 1.9992744059302907E-205

    const-wide v4, 0x15700bfd820a3210L    # 1.9992744059302907E-205

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30d6290d4fc2abb0L    # 1.9597373311645413E-73

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7de

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/aide/ui/Ha;->j6:Ljava/util/GregorianCalendar;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0xfc085cbc76a2ad0L    # 8.31443645496112E-233

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfc085cbc76a2ad0L    # 8.31443645496112E-233

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW()Ljava/util/GregorianCalendar;
    .registers 8

    const-wide v6, -0x137764380a8dbbebL    # -6.627540935591116E214

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x137764380a8dbbebL    # -6.627540935591116E214

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "PrimeYearlyPromoAIDE3"

    invoke-static {v0}, Lcom/aide/ui/Ha;->j6(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static DW(Ljava/util/GregorianCalendar;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x289ce057e4f5e33cL
    .end annotation

    const-wide v4, -0x1fed1a96a3d0d5f0L    # -6.333895030570487E154

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1fed1a96a3d0d5f0L    # -6.333895030570487E154

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static FH()Ljava/util/GregorianCalendar;
    .registers 10

    const-wide v8, 0x622dd92ed7d088c8L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x622dd92ed7d088c8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->XL()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Hw()Ljava/util/GregorianCalendar;
    .registers 6

    const-wide v4, -0x69c2980fe5f907L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x69c2980fe5f907L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/Ha;->j6:Ljava/util/GregorianCalendar;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static VH()Z
    .registers 6

    const-wide v4, -0x5ef5395942a0f270L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5ef5395942a0f270L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Zo()Z
    .registers 8

    const-wide v6, -0x9c733ea7a2776d7L

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x9c733ea7a2776d7L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->VH()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->we()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->v5()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public static gn()Z
    .registers 6

    const-wide v4, 0x1cba34bdc05cb123L    # 2.712461216455794E-170

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1cba34bdc05cb123L    # 2.712461216455794E-170

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/aide/ui/Ha;->DW()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/Ha;->j6(Ljava/util/GregorianCalendar;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private static j6(Ljava/lang/String;)J
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x4c67ef28e09d5560L
    .end annotation

    const-wide v8, 0x349be11b072b0138L    # 2.8425162913522336E-55

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x349be11b072b0138L    # 2.8425162913522336E-55

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "StartTimes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static j6()Ljava/util/GregorianCalendar;
    .registers 10

    const-wide v8, -0x5163f750c4ad4f80L    # -3.6076559335716185E-84

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5163f750c4ad4f80L    # -3.6076559335716185E-84

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->DW()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private static j6(Ljava/util/GregorianCalendar;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x197fe597de5d2958L
    .end annotation

    const-wide v4, -0x2adf3e5be8e31a98L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2adf3e5be8e31a98L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static u7()Z
    .registers 6

    const-wide v4, 0x1597aaaf1f9527e3L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1597aaaf1f9527e3L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/Ha;->Hw()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/Ha;->j6(Ljava/util/GregorianCalendar;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static v5()Z
    .registers 6

    const-wide v4, -0x5c1aab60a781610L    # -6.88261741257352E280

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5c1aab60a781610L    # -6.88261741257352E280

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/Ha;->j6()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/Ha;->DW(Ljava/util/GregorianCalendar;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
