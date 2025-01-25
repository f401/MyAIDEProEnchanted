.class public interface abstract Landroidj/support/v4/app/ActionBarDrawerToggle$Delegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setActionBarDescription(I)V
    .param p1  # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .param p2  # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param
.end method
