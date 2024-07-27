.class public final Landroidj/support/v4/widget/ListPopupWindowCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;,
        Landroidj/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;,
        Landroidj/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ListPopupWindowCompat;->IMPL:Landroidj/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroidj/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ListPopupWindowCompat;->IMPL:Landroidj/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/ListPopupWindowCompat;->IMPL:Landroidj/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;->createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
