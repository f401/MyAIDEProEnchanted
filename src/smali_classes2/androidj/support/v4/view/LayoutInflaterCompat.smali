.class public final Landroidj/support/v4/view/LayoutInflaterCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;,
        Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;,
        Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;,
        Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;

    invoke-direct {v0}, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;-><init>()V

    sput-object v0, Landroidj/support/v4/view/LayoutInflaterCompat;->IMPL:Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;

    invoke-direct {v0}, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;-><init>()V

    sput-object v0, Landroidj/support/v4/view/LayoutInflaterCompat;->IMPL:Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/view/LayoutInflaterCompat;->IMPL:Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidj/support/v4/view/LayoutInflaterFactory;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/LayoutInflaterCompat;->IMPL:Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;->getFactory(Landroid/view/LayoutInflater;)Landroidj/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidj/support/v4/view/LayoutInflaterFactory;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/LayoutInflaterCompat;->IMPL:Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;->setFactory(Landroid/view/LayoutInflater;Landroidj/support/v4/view/LayoutInflaterFactory;)V

    return-void
.end method
