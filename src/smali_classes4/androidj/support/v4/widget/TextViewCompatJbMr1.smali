.class Landroidj/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_18

    :goto_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_17

    aget-object v0, v2, v4

    aget-object v3, v2, v1

    aput-object v0, v2, v1

    aput-object v3, v2, v4

    :cond_17
    return-object v2

    :cond_18
    move v0, v1

    goto :goto_9
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    :goto_8
    if-eqz v1, :cond_14

    move-object v0, p3

    :goto_b
    if-eqz v1, :cond_16

    :goto_d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move-object v0, p1

    goto :goto_b

    :cond_16
    move-object p1, p3

    goto :goto_d
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 7
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    :goto_8
    if-eqz v1, :cond_14

    move v0, p3

    :goto_b
    if-eqz v1, :cond_16

    :goto_d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move v0, p1

    goto :goto_b

    :cond_16
    move p1, p3

    goto :goto_d
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    :goto_8
    if-eqz v1, :cond_14

    move-object v0, p3

    :goto_b
    if-eqz v1, :cond_16

    :goto_d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move-object v0, p1

    goto :goto_b

    :cond_16
    move-object p1, p3

    goto :goto_d
.end method
