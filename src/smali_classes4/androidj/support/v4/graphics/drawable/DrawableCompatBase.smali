.class Landroidj/support/v4/graphics/drawable/DrawableCompatBase;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;->setTint(I)V

    :cond_9
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_a

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread;

    invoke-direct {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    :cond_a
    return-object p0
.end method
