.class Landroidj/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;
.super Landroidj/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr2TextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidj/support/v4/widget/TextViewCompatJbMr2;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
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

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/widget/TextViewCompatJbMr2;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

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

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/widget/TextViewCompatJbMr2;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

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

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/widget/TextViewCompatJbMr2;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
