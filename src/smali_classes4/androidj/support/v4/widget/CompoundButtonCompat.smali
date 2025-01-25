.class public final Landroidj/support/v4/widget/CompoundButtonCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;,
        Landroidj/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;,
        Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;,
        Landroidj/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroidj/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;

    invoke-direct {v0}, Landroidj/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0  # Landroid/widget/CompoundButton;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0  # Landroid/widget/CompoundButton;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0  # Landroid/widget/CompoundButton;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0  # Landroid/widget/CompoundButton;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0  # Landroid/widget/CompoundButton;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompat;->IMPL:Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
