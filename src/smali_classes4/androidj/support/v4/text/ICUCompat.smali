.class public final Landroidj/support/v4/text/ICUCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;,
        Landroidj/support/v4/text/ICUCompat$ICUCompatImplBase;,
        Landroidj/support/v4/text/ICUCompat$ICUCompatImplIcs;,
        Landroidj/support/v4/text/ICUCompat$ICUCompatImplLollipop;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/text/ICUCompat$ICUCompatImplLollipop;

    invoke-direct {v0}, Landroidj/support/v4/text/ICUCompat$ICUCompatImplLollipop;-><init>()V

    sput-object v0, Landroidj/support/v4/text/ICUCompat;->IMPL:Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/text/ICUCompat$ICUCompatImplIcs;

    invoke-direct {v0}, Landroidj/support/v4/text/ICUCompat$ICUCompatImplIcs;-><init>()V

    sput-object v0, Landroidj/support/v4/text/ICUCompat;->IMPL:Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroidj/support/v4/text/ICUCompat$ICUCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/text/ICUCompat$ICUCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/text/ICUCompat;->IMPL:Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/text/ICUCompat;->IMPL:Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/text/ICUCompat$ICUCompatImpl;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
