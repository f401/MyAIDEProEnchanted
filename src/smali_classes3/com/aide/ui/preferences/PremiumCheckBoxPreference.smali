.class public Lcom/aide/ui/preferences/PremiumCheckBoxPreference;
.super Landroid/preference/SwitchPreference;


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

    const-class v0, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;

    const-wide v1, 0x49ed618ac923e235L  # 1.3418879566244853E48

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x149b59d400aeab9fL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x4c64548fe0c5f410L  # -4.3047209714288305E-60

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x4c64548fe0c5f410L  # -4.3047209714288305E-60

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xf18ccbfec1e063bL  # -7.376634840567629E235

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0xf18ccbfec1e063bL  # -7.376634840567629E235

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method


# virtual methods
.method protected onClick()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x139fbf62a1958188L
    .end annotation

    const-wide v0, 0x14c7a6dfa66bab10L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Labcd/Ek;->DW(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method
