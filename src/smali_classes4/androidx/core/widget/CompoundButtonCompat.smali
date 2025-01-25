.class public final Landroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-boolean v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    if-nez v0, :cond_21

    :try_start_11
    const-class v0, Landroid/widget/CompoundButton;

    const-string v2, "mButtonDrawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_1f} :catch_2c

    :goto_1f
    sput-boolean v4, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    :cond_21
    sget-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3f

    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2b} :catch_35

    goto :goto_c

    :catch_2c
    move-exception v0

    const-string v2, "CompoundButtonCompat"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_35
    move-exception v0

    const-string v2, "CompoundButtonCompat"

    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v1, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    :cond_3f
    move-object v0, v1

    goto :goto_c
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_9
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9
.end method
