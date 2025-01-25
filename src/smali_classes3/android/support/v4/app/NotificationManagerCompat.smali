.class public final Landroid/support/v4/app/NotificationManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;,
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;,
        Landroid/support/v4/app/NotificationManagerCompat$a;,
        Landroid/support/v4/app/NotificationManagerCompat$b;
    }
.end annotation


# static fields
.field private static DW:Ljava/lang/String;

.field private static FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Hw:Ljava/lang/Object;

.field private static final j6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->FH:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->Hw:Ljava/lang/Object;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_notification_listeners"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->j6:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_3d

    :try_start_f
    sget-object v1, Landroid/support/v4/app/NotificationManagerCompat;->DW:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_39

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_39
    sput-object v2, Landroid/support/v4/app/NotificationManagerCompat;->FH:Ljava/util/Set;

    sput-object p0, Landroid/support/v4/app/NotificationManagerCompat;->DW:Ljava/lang/String;

    :cond_3d
    sget-object p0, Landroid/support/v4/app/NotificationManagerCompat;->FH:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_41

    goto :goto_45

    :goto_44
    throw p0

    :goto_45
    goto :goto_44
.end method
