.class public final Landroidj/support/v4/widget/PopupMenuCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;,
        Landroidj/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;,
        Landroidj/support/v4/widget/PopupMenuCompat$PopupMenuImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/widget/PopupMenuCompat$PopupMenuImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/PopupMenuCompat;->IMPL:Landroidj/support/v4/widget/PopupMenuCompat$PopupMenuImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/PopupMenuCompat;->IMPL:Landroidj/support/v4/widget/PopupMenuCompat$PopupMenuImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/PopupMenuCompat;->IMPL:Landroidj/support/v4/widget/PopupMenuCompat$PopupMenuImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/PopupMenuCompat$PopupMenuImpl;->getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
