.class public Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;
.super Landroidj/support/v4/app/ActionBarDrawerToggle;
.source "ActionBarDrawerToggle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.s1243808733.graphics.drawable.ActionBarDrawerToggle"


# instance fields
.field protected animateEnabled:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mCloseDrawerContentDescRes:I

.field protected mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

.field protected mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

.field protected mOpenDrawerContentDescRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;II)V
    .registers 12

    .line 32
    const v3, 0x7f070050

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;III)V

    .line 33
    iput-object p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    .line 35
    iput p4, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 36
    iput p5, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 37
    iput-object p3, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    .line 38
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    return-void
.end method


# virtual methods
.method public isAnimateEnabled()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    return v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_9

    .line 68
    invoke-super {p0}, Landroidj/support/v4/app/ActionBarDrawerToggle;->isDrawerIndicatorEnabled()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    .line 75
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 78
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    .line 112
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    return-void

    .line 115
    :cond_8
    iget-boolean p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz p1, :cond_10

    .line 116
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 118
    :cond_10
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    .line 100
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    return-void

    .line 103
    :cond_8
    iget-boolean p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz p1, :cond_11

    .line 104
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 106
    :cond_11
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    .line 88
    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    return-void

    .line 91
    :cond_8
    iget-boolean p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz p1, :cond_1f

    .line 92
    iget-object p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {p1, v1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 93
    iget-object p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p1, p2}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    :cond_1f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    .line 82
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setActionBarDescription()V
    .registers 7

    .line 155
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 157
    :try_start_a
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeActionContentDescription"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 160
    iget-object v3, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    const v4, 0x800003

    invoke-virtual {v3, v4}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_30

    :cond_2e
    iget v3, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 159
    :goto_30
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception v0

    .line 165
    sget-object v1, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->TAG:Ljava/lang/String;

    const-string v2, "setActionBarUpIndicator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return-void
.end method

.method protected setActionBarUpIndicator()V
    .registers 7

    .line 122
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_61

    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    const-class v2, Landroid/app/ActionBar;

    const-string v3, "setHomeAsUpIndicator"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v2

    .line 129
    sget-object v3, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->TAG:Ljava/lang/String;

    const-string v4, "setActionBarUpIndicator error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v2, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    const v3, 0x102002c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_38

    return-void

    .line 137
    :cond_38
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_46

    return-void

    .line 143
    :cond_46
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v3, :cond_55

    move-object v0, v1

    .line 147
    :cond_55
    nop

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_61

    .line 148
    check-cast v0, Landroid/widget/ImageView;

    .line 149
    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_61
    return-void
.end method

.method public setAnimateEnabled(Z)V
    .registers 2

    .line 171
    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    .line 59
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    return-void

    .line 62
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarUpIndicator()V

    .line 63
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    return-void
.end method

.method public syncState()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    .line 43
    invoke-super {p0}, Landroidj/support/v4/app/ActionBarDrawerToggle;->syncState()V

    return-void

    .line 46
    :cond_8
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz v0, :cond_25

    .line 47
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 48
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    goto :goto_25

    .line 50
    :cond_1f
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 53
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarUpIndicator()V

    .line 54
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    return-void
.end method
