.class final Lcom/aide/ui/marketing/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/ba;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/marketing/d;->j6(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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


# instance fields
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final VH:I

.field final Zo:Landroid/app/PendingIntent;

.field final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x23b68dc95e2127d0L

    const-wide v2, -0x2645b93973203af7L  # -1.7370215439624802E124

    const-class v4, Lcom/aide/ui/marketing/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;I)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/marketing/c;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/marketing/c;->Hw:Ljava/lang/String;

    iput p3, p0, Lcom/aide/ui/marketing/c;->v5:I

    iput-object p4, p0, Lcom/aide/ui/marketing/c;->Zo:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/aide/ui/marketing/c;->VH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Context;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2c3744dca2213bbbL
    .end annotation

    const-string v0, "lastText"

    const-wide v1, -0x2baca0685c325e19L  # -1.6552538982038874E98

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/marketing/c;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "WhatsNewNotification"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/aide/ui/marketing/a;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "lastShown"

    invoke-interface {v5, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "other"

    invoke-direct {v0, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/ui/marketing/c;->FH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/aide/ui/marketing/c;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget v3, p0, Lcom/aide/ui/marketing/c;->v5:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/aide/ui/marketing/c;->Zo:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_64

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_68

    :cond_64
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_68
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget v4, p0, Lcom/aide/ui/marketing/c;->VH:I

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aide/ui/marketing/c;->j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    :try_end_79
    .catchall {:try_start_7 .. :try_end_79} :catchall_7a

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/marketing/c;->DW:Z

    if-eqz v3, :cond_82

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    throw v0
.end method
