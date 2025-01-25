.class public interface abstract Landroidj/support/v4/widget/TintableImageSourceView;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract getSupportImageTintList()Landroid/content/res/ColorStateList;
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
.end method
