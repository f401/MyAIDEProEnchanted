.class public final Landroidj/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;,
        Landroidj/support/v4/app/ServiceCompat$BaseServiceCompatImpl;,
        Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;,
        Landroidj/support/v4/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;

.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroidj/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/app/ServiceCompat;->IMPL:Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/app/ServiceCompat$BaseServiceCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/app/ServiceCompat$BaseServiceCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/app/ServiceCompat;->IMPL:Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/app/ServiceCompat;->IMPL:Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/app/ServiceCompat$ServiceCompatImpl;->stopForeground(Landroid/app/Service;I)V

    return-void
.end method
