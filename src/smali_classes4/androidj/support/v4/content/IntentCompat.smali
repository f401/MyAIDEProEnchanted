.class public final Landroidj/support/v4/content/IntentCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;,
        Landroidj/support/v4/content/IntentCompat$IntentCompatImplBase;,
        Landroidj/support/v4/content/IntentCompat$IntentCompatImplHC;,
        Landroidj/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;
    }
.end annotation


# static fields
.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_START_PLAYBACK:Ljava/lang/String; = "android.intent.extra.START_PLAYBACK"

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field private static final IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;

    invoke-direct {v0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;-><init>()V

    sput-object v0, Landroidj/support/v4/content/IntentCompat;->IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/content/IntentCompat$IntentCompatImplHC;

    invoke-direct {v0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    sput-object v0, Landroidj/support/v4/content/IntentCompat;->IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroidj/support/v4/content/IntentCompat$IntentCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/content/IntentCompat;->IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    sget-object v0, Landroidj/support/v4/content/IntentCompat;->IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    sget-object v0, Landroidj/support/v4/content/IntentCompat;->IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    sget-object v0, Landroidj/support/v4/content/IntentCompat;->IMPL:Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImpl;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
