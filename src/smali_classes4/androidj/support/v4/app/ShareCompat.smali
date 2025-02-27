.class public final Landroidj/support/v4/app/ShareCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/ShareCompat$IntentReader;,
        Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;,
        Landroidj/support/v4/app/ShareCompat$ShareCompatImplBase;,
        Landroidj/support/v4/app/ShareCompat$ShareCompatImplICS;,
        Landroidj/support/v4/app/ShareCompat$ShareCompatImplJB;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "androidj.support.v4.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "androidj.support.v4.app.EXTRA_CALLING_PACKAGE"

.field static IMPL:Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/app/ShareCompat$ShareCompatImplJB;

    invoke-direct {v0}, Landroidj/support/v4/app/ShareCompat$ShareCompatImplJB;-><init>()V

    sput-object v0, Landroidj/support/v4/app/ShareCompat;->IMPL:Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/app/ShareCompat$ShareCompatImplICS;

    invoke-direct {v0}, Landroidj/support/v4/app/ShareCompat$ShareCompatImplICS;-><init>()V

    sput-object v0, Landroidj/support/v4/app/ShareCompat;->IMPL:Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroidj/support/v4/app/ShareCompat$ShareCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/app/ShareCompat$ShareCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/app/ShareCompat;->IMPL:Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILandroidj/support/v4/app/ShareCompat$IntentBuilder;)V
    .registers 6

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find menu item with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the supplied menu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-static {v0, p2}, Landroidj/support/v4/app/ShareCompat;->configureMenuItem(Landroid/view/MenuItem;Landroidj/support/v4/app/ShareCompat$IntentBuilder;)V

    return-void
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroidj/support/v4/app/ShareCompat$IntentBuilder;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/app/ShareCompat;->IMPL:Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/app/ShareCompat$ShareCompatImpl;->configureMenuItem(Landroid/view/MenuItem;Landroidj/support/v4/app/ShareCompat$IntentBuilder;)V

    return-void
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidj.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :cond_12
    return-object v0
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidj.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method
