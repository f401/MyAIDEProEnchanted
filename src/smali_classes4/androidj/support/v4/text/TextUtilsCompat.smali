.class public final Landroidj/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;,
        Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
    }
.end annotation


# static fields
.field static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

.field static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static final IMPL:Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

.field public static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_21

    new-instance v0, Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    invoke-direct {v0}, Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/text/TextUtilsCompat;->IMPL:Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    :goto_d
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidj/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    const-string v0, "Arab"

    sput-object v0, Landroidj/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    const-string v0, "Hebr"

    sput-object v0, Landroidj/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void

    :cond_21
    new-instance v0, Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/text/TextUtilsCompat;->IMPL:Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 2
    .param p0  # Ljava/util/Locale;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/text/TextUtilsCompat;->IMPL:Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidj/support/v4/text/TextUtilsCompat;->IMPL:Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
