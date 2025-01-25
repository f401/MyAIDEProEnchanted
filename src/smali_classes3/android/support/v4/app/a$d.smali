.class Landroid/support/v4/app/a$d;
.super Landroid/graphics/drawable/InsetDrawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final DW:Landroid/graphics/Rect;

.field private FH:F

.field private Hw:F

.field private final j6:Z

.field final v5:Landroid/support/v4/app/a;


# direct methods
.method constructor <init>(Landroid/support/v4/app/a;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/app/a$d;->v5:Landroid/support/v4/app/a;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-le p2, v0, :cond_d

    const/4 p1, 0x1

    :cond_d
    iput-boolean p1, p0, Landroid/support/v4/app/a$d;->j6:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/a$d;->DW:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public DW(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/app/a$d;->FH:F

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/a$d;->DW:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Landroid/support/v4/app/a$d;->v5:Landroid/support/v4/app/a;

    iget-object v0, v0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_21

    const/4 v1, -0x1

    :cond_21
    iget-object v2, p0, Landroid/support/v4/app/a$d;->DW:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/a$d;->Hw:F

    neg-float v3, v3

    int-to-float v2, v2

    mul-float v3, v3, v2

    iget v4, p0, Landroid/support/v4/app/a$d;->FH:F

    mul-float v3, v3, v4

    int-to-float v1, v1

    mul-float v3, v3, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Landroid/support/v4/app/a$d;->j6:Z

    if-nez v0, :cond_48

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_48
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public j6()F
    .registers 2

    iget v0, p0, Landroid/support/v4/app/a$d;->FH:F

    return v0
.end method

.method public j6(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/app/a$d;->Hw:F

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->invalidateSelf()V

    return-void
.end method
