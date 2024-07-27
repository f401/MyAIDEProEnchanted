.class public Lcom/blankj/utilcode/util/ShadowUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ShadowUtils$Config;,
        Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final SHADOW_TAG:I = -0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/View;Lcom/blankj/utilcode/util/ShadowUtils$Config;)V
    .registers 6

    const/16 v3, -0x10

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs apply([Landroid/view/View;)V
    .registers 5

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    new-instance v3, Lcom/blankj/utilcode/util/ShadowUtils$Config;

    invoke-direct {v3}, Lcom/blankj/utilcode/util/ShadowUtils$Config;-><init>()V

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/ShadowUtils;->apply(Landroid/view/View;Lcom/blankj/utilcode/util/ShadowUtils$Config;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
