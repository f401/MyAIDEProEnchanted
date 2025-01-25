.class Landroidj/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.super Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread;-><init>(Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public jumpToCurrentState()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method mutateConstantState()Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    .registers 4
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;

    iget-object v1, p0, Landroidj/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mState:Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;-><init>(Landroidj/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
