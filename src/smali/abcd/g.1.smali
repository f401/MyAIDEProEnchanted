.class Labcd/g;
.super Labcd/as/graphics/drawable/DrawableWrapperGingerbread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/g$a;
    }
.end annotation


# direct methods
.method constructor <init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;-><init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method DW()Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    .registers 4

    new-instance v0, Labcd/g$a;

    iget-object v1, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;->mState:Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/g$a;-><init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method
