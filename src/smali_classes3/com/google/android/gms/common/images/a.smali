.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;


# instance fields
.field protected j6:I


# virtual methods
.method final j6(Landroid/content/Context;Labcd/Ax;Z)V
    .registers 4

    iget p2, p0, Lcom/google/android/gms/common/images/a;->j6:I

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/google/android/gms/common/images/a;->j6(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method final j6(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 5

    invoke-static {p2}, Lcom/google/android/gms/common/internal/b;->j6(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/google/android/gms/common/images/a;->j6(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract j6(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method
