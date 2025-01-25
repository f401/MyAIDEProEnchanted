.class public final Landroidx/core/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompat"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_9
    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_50

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_21

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_21
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_2f

    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_2f
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v2

    :goto_42
    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_9
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_d

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_50

    sget-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    if-nez v0, :cond_2a

    :try_start_17
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v2, "getLayoutDirection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_28} :catch_3c

    :goto_28
    sput-boolean v4, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    :cond_2a
    sget-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_50

    const/4 v2, 0x0

    :try_start_2f
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_45

    move-result v0

    goto :goto_c

    :catch_3c
    move-exception v0

    const-string v2, "DrawableCompat"

    const-string v3, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_45
    move-exception v0

    const-string v2, "DrawableCompat"

    const-string v3, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_50
    move v0, v1

    goto :goto_c
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_9
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_9
    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_9
    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_9
    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_d

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4c

    sget-boolean v2, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    if-nez v2, :cond_2f

    :try_start_17
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "setLayoutDirection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_2d} :catch_4e

    :goto_2d
    sput-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    :cond_2f
    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4c

    const/4 v3, 0x1

    :try_start_34
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_41

    goto :goto_c

    :catch_41
    move-exception v0

    const-string v2, "DrawableCompat"

    const-string v3, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_4c
    move v0, v1

    goto :goto_c

    :catch_4e
    move-exception v2

    const-string v3, "DrawableCompat"

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTint(I)V

    goto :goto_9
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_9
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_a

    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_18

    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_6

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    invoke-direct {v0, p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    goto :goto_6

    :cond_18
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_6

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;

    invoke-direct {v0, p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    goto :goto_6
.end method
