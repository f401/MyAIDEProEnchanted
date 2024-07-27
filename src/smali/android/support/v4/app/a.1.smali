.class public Landroid/support/v4/app/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/a$a;,
        Landroid/support/v4/app/a$b;,
        Landroid/support/v4/app/a$c;,
        Landroid/support/v4/app/a$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final j6:[I


# instance fields
.field final DW:Landroid/app/Activity;

.field private final EQ:I

.field private final FH:Landroid/support/v4/app/a$a;

.field private final Hw:Landroid/support/v4/widget/DrawerLayout;

.field private J0:Landroid/support/v4/app/a$c;

.field private VH:Landroid/graphics/drawable/Drawable;

.field private Zo:Z

.field private gn:Landroid/graphics/drawable/Drawable;

.field private final tp:I

.field private u7:Landroid/support/v4/app/a$d;

.field private v5:Z

.field private final we:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/a;->j6:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .registers 13

    invoke-static {p1}, Landroid/support/v4/app/a;->j6(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    iput-object p1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    instance-of v0, p1, Landroid/support/v4/app/a$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/a$b;

    invoke-interface {v0}, Landroid/support/v4/app/a$b;->j6()Landroid/support/v4/app/a$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    iput p4, p0, Landroid/support/v4/app/a;->tp:I

    iput p5, p0, Landroid/support/v4/app/a;->EQ:I

    iput p6, p0, Landroid/support/v4/app/a;->we:I

    invoke-direct {p0}, Landroid/support/v4/app/a;->DW()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->VH:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p4}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->gn:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/support/v4/app/a$d;

    iget-object v1, p0, Landroid/support/v4/app/a;->gn:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/a$d;-><init>(Landroid/support/v4/app/a;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    iget-object v1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    if-eqz p3, :cond_1

    const v0, 0x3eaaaaab

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/a$d;->j6(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private DW()Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/a$a;->j6()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    sget-object v2, Landroid/support/v4/app/a;->j6:[I

    const v3, 0x10102ce

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    sget-object v1, Landroid/support/v4/app/a;->j6:[I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private DW(I)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v4/app/a$a;->j6(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/app/a$c;

    iget-object v1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/a$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v0, v0, Landroid/support/v4/app/a$c;->j6:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v1, Landroid/support/v4/app/a$c;->DW:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionBarDrawerToggle"

    const-string v2, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private j6(Landroid/graphics/drawable/Drawable;I)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/a$a;->j6(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/app/a$c;

    iget-object v1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/a$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v0, Landroid/support/v4/app/a$c;->j6:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v1, Landroid/support/v4/app/a$c;->j6:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v1, Landroid/support/v4/app/a$c;->DW:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionBarDrawerToggle"

    const-string v2, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    iget-object v0, v0, Landroid/support/v4/app/a$c;->FH:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "Couldn\'t set home-as-up indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static j6(Landroid/content/Context;)Z
    .registers 3

    const/16 v1, 0x15

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/a$d;->DW(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/a;->EQ:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->DW(I)V

    :cond_0
    return-void
.end method

.method public j6()V
    .registers 4

    const v2, 0x800003

    iget-object v0, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/a$d;->DW(F)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    iget-object v0, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/a;->we:I

    :goto_1
    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/a;->j6(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/a$d;->DW(F)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/a;->EQ:I

    goto :goto_1
.end method

.method public j6(I)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/a;->Zo:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/a;->DW()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->VH:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    iget v1, p0, Landroid/support/v4/app/a;->tp:I

    invoke-static {v0, v1}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->gn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/app/a;->j6()V

    return-void
.end method

.method public j6(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/a$d;->DW(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/a;->we:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->DW(I)V

    :cond_0
    return-void
.end method

.method public j6(Landroid/view/View;F)V
    .registers 7

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    invoke-virtual {v0}, Landroid/support/v4/app/a$d;->j6()F

    move-result v0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/a$d;->DW(F)V

    return-void

    :cond_0
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public j6(Landroid/view/MenuItem;)Z
    .registers 5

    const v2, 0x800003

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->VH(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->j6(I)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->gn(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
