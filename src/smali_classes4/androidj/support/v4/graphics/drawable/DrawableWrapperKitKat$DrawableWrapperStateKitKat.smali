.class Landroidj/support/v4/graphics/drawable/DrawableWrapperKitKat$DrawableWrapperStateKitKat;
.super Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/graphics/drawable/DrawableWrapperKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateKitKat"
.end annotation


# direct methods
.method constructor <init>(Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1  # Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;-><init>(Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableWrapperKitKat;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
