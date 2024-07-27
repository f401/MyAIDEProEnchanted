.class public Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;
.super Landroidj/support/v4/app/ActionBarDrawerToggle;
.source "ActionBarDrawerToggle.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected animateEnabled:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mCloseDrawerContentDescRes:I

.field protected mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

.field protected mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

.field protected mOpenDrawerContentDescRes:I


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "com.s1243808733.graphics.drawable.ActionBarDrawerToggle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->TAG:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
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
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

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

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0}, Landroidj/support/v4/app/ActionBarDrawerToggle;->isDrawerIndicatorEnabled()Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->syncState()V

    goto :goto_0
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    goto :goto_0
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_1

    .line 88
    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 93
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p2}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 82
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected setActionBarDescription()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    const-string v0, "android.app.ActionBar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "setHomeActionContentDescription"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :catch_1
    move-exception v0

    .line 165
    sget-object v1, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->TAG:Ljava/lang/String;

    const-string v2, "setActionBarUpIndicator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 159
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method protected setActionBarUpIndicator()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v7, 0x102002c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    const-string v0, "android.app.ActionBar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "android.graphics.drawable.Drawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    const-string v2, "setHomeAsUpIndicator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    :catch_1
    move-exception v0

    .line 129
    sget-object v1, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->TAG:Ljava/lang/String;

    const-string v2, "setActionBarUpIndicator error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 133
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 139
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 143
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 147
    :goto_1
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Landroid/widget/ImageView;

    .line 149
    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 124
    :catch_2
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v0, v1

    .line 145
    goto :goto_1
.end method

.method public setAnimateEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 171
    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroidj/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarUpIndicator()V

    .line 63
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    goto :goto_0
.end method

.method public syncState()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0}, Landroidj/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->animateEnabled:Z

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerLayout:Landroidj/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarUpIndicator()V

    .line 54
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->setActionBarDescription()V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->mDrawerImage:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    goto :goto_1
.end method
