.class Landroidj/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/widget/TextViewCompat$TextViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseTextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidj/support/v4/widget/TextViewCompatGingerbread;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLines(Landroid/widget/TextView;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/TextViewCompatGingerbread;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/TextViewCompatGingerbread;->getMinLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
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
    .param p5  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 6
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
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
    .param p5  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextAppearance(Landroid/widget/TextView;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroidj/support/annotation/StyleRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidj/support/v4/widget/TextViewCompatGingerbread;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method
