.class public Landroidj/support/v4/widget/ImageViewCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;,
        Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;,
        Landroidj/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ImageViewCompat;->IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroidj/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ImageViewCompat;->IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/ImageViewCompat;->IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/ImageViewCompat;->IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/ImageViewCompat;->IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/ImageViewCompat;->IMPL:Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
