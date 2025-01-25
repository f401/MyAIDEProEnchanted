.class public Lcom/aide/ui/UserPresentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


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

.field private static j6:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x3e5c021f17debcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2b18ca1555008800L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14cfbd419c22fdL

    :try_start_6
    const-class v3, Lcom/aide/ui/UserPresentBroadcastReceiver;

    const-wide v4, 0x1893cc0675021ee8L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/UserPresentBroadcastReceiver;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6:Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/UserPresentBroadcastReceiver;->FH:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x7d325a169e9099bL  # -7.621442578143473E270

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/UserPresentBroadcastReceiver;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/UserPresentBroadcastReceiver;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/content/Context;Lcom/aide/ui/ba;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/UserPresentBroadcastReceiver;->DW:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x7b9313cdcd20a3cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1, p0}, Lcom/aide/ui/ba;->j6(Landroid/content/Context;)V

    goto :goto_1c

    :cond_17
    sget-object v0, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :goto_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/UserPresentBroadcastReceiver;->FH:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x7b9313cdcd20a3cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method private static j6(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x234b216a605571d0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x78b431730d345e4L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/UserPresentBroadcastReceiver;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2b

    const/16 v4, 0x14

    const-string v5, "power"

    if-lt v3, v4, :cond_20

    :try_start_15
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0

    :cond_20
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2b

    return p0

    :catchall_2b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/UserPresentBroadcastReceiver;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/UserPresentBroadcastReceiver;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xbe97442dd16ef60L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/ba;

    invoke-interface {v1, p1}, Lcom/aide/ui/ba;->j6(Landroid/content/Context;)V

    goto :goto_1e

    :cond_2e
    sget-object v0, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    :cond_33
    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/UserPresentBroadcastReceiver;->FH:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xbe97442dd16ef60L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method
