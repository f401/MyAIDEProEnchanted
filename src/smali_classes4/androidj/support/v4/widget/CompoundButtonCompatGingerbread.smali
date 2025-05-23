.class Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompatGingerbread"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableFieldFetched:Z

    if-nez v0, :cond_18

    :try_start_6
    const-class v0, Landroid/widget/CompoundButton;

    const-string v2, "mButtonDrawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_16} :catch_25

    :goto_16
    sput-boolean v4, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableFieldFetched:Z

    :cond_18
    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_38

    :try_start_1c
    sget-object v0, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_24} :catch_2e

    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    const-string v2, "CompoundButtonCompatGingerbread"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_2e
    move-exception v0

    const-string v2, "CompoundButtonCompatGingerbread"

    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v1, Landroidj/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    :cond_38
    move-object v0, v1

    goto :goto_24
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroidj/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroidj/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    check-cast p0, Landroidj/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidj/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    check-cast p0, Landroidj/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidj/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method
