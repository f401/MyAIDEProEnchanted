.class public Lcom/bumptech/glide/request/target/SquaringDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    }
.end annotation


# instance fields
.field private mutated:Z

.field private state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

.field private wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V
    .registers 5

    new-instance v0, Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V
    .registers 5

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    if-nez p2, :cond_23

    if-eqz p3, :cond_16

    invoke-static {p1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_15

    :cond_23
    iput-object p2, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_15
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-static {v0}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-static {v0}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    return-void
.end method

.method public isAnimated()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    if-nez v0, :cond_20

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_20

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    new-instance v0, Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    :cond_20
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setLoopCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
