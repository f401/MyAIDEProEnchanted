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
    .registers 1

    const v0, 0x101030b

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/a;->j6:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .registers 14

    invoke-static {p1}, Landroid/support/v4/app/a;->j6(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    iput-object p1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    instance-of v0, p1, Landroid/support/v4/app/a$b;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/a$b;

    invoke-interface {v0}, Landroid/support/v4/app/a$b;->j6()Landroid/support/v4/app/a$a;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    iput-object p2, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    iput p4, p0, Landroid/support/v4/app/a;->tp:I

    iput p5, p0, Landroid/support/v4/app/a;->EQ:I

    iput p6, p0, Landroid/support/v4/app/a;->we:I

    invoke-direct {p0}, Landroid/support/v4/app/a;->DW()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/app/a;->VH:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p4}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/a;->gn:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/support/v4/app/a$d;

    iget-object p2, p0, Landroid/support/v4/app/a;->gn:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/app/a$d;-><init>(Landroid/support/v4/app/a;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    if-eqz p3, :cond_3a

    const p2, 0x3eaaaaab

    goto :goto_3b

    :cond_3a
    const/4 p2, 0x0

    :goto_3b
    invoke-virtual {p1, p2}, Landroid/support/v4/app/a$d;->j6(F)V

    return-void
.end method

.method private DW()Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/support/v4/app/a$a;->j6()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_31

    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    :goto_1f
    sget-object v1, Landroid/support/v4/app/a;->j6:[I

    const v3, 0x10102ce

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_29
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_31
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    sget-object v1, Landroid/support/v4/app/a;->j6:[I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_29
.end method

.method private DW(I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroid/support/v4/app/a$a;->j6(I)V

    return-void

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_54

    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    if-nez v0, :cond_27

    new-instance v0, Landroid/support/v4/app/a$c;

    iget-object v1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/a$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v0, v0, Landroid/support/v4/app/a$c;->j6:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_54

    :try_start_2d
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v1, Landroid/support/v4/app/a$c;->DW:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception p1

    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    :goto_54
    return-void
.end method

.method private j6(Landroid/graphics/drawable/Drawable;I)V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/app/a;->FH:Landroid/support/v4/app/a$a;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/a$a;->j6(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_69

    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    if-nez v0, :cond_2a

    new-instance v0, Landroid/support/v4/app/a$c;

    iget-object v1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/a$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    :cond_2a
    iget-object v0, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v0, Landroid/support/v4/app/a$c;->j6:Ljava/lang/reflect/Method;

    const-string v2, "ActionBarDrawerToggle"

    if-eqz v1, :cond_5c

    :try_start_32
    iget-object v0, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object v1, v1, Landroid/support/v4/app/a$c;->j6:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/support/v4/app/a;->J0:Landroid/support/v4/app/a$c;

    iget-object p1, p1, Landroid/support/v4/app/a$c;->DW:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_54} :catch_55

    goto :goto_69

    :catch_55
    move-exception p1

    const-string p2, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    :cond_5c
    iget-object p2, v0, Landroid/support/v4/app/a$c;->FH:Landroid/widget/ImageView;

    if-eqz p2, :cond_64

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_69

    :cond_64
    const-string p1, "Couldn\'t set home-as-up indicator"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-void
.end method

.method private static j6(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_10

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public DW(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/a$d;->DW(F)V

    iget-boolean p1, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz p1, :cond_f

    iget p1, p0, Landroid/support/v4/app/a;->EQ:I

    invoke-direct {p0, p1}, Landroid/support/v4/app/a;->DW(I)V

    :cond_f
    return-void
.end method

.method public j6()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/high16 v2, 0x3f800000  # 1.0f

    goto :goto_13

    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v2}, Landroid/support/v4/app/a$d;->DW(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    iget-object v2, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->Zo(I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v1, p0, Landroid/support/v4/app/a;->we:I

    goto :goto_29

    :cond_27
    iget v1, p0, Landroid/support/v4/app/a;->EQ:I

    :goto_29
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/a;->j6(Landroid/graphics/drawable/Drawable;I)V

    :cond_2c
    return-void
.end method

.method public j6(I)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean p1, p0, Landroid/support/v4/app/a;->Zo:Z

    if-nez p1, :cond_a

    invoke-direct {p0}, Landroid/support/v4/app/a;->DW()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/a;->VH:Landroid/graphics/drawable/Drawable;

    :cond_a
    iget-object p1, p0, Landroid/support/v4/app/a;->DW:Landroid/app/Activity;

    iget v0, p0, Landroid/support/v4/app/a;->tp:I

    invoke-static {p1, v0}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/a;->gn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/app/a;->j6()V

    return-void
.end method

.method public j6(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/v4/app/a$d;->DW(F)V

    iget-boolean p1, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz p1, :cond_10

    iget p1, p0, Landroid/support/v4/app/a;->we:I

    invoke-direct {p0, p1}, Landroid/support/v4/app/a;->DW(I)V

    :cond_10
    return-void
.end method

.method public j6(Landroid/view/View;F)V
    .registers 6

    iget-object p1, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    invoke-virtual {p1}, Landroid/support/v4/app/a$d;->j6()F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_1b

    const/4 v2, 0x0

    sub-float/2addr p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float p2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_21

    :cond_1b
    mul-float p2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_21
    iget-object p2, p0, Landroid/support/v4/app/a;->u7:Landroid/support/v4/app/a$d;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/a$d;->DW(F)V

    return-void
.end method

.method public j6(Landroid/view/MenuItem;)Z
    .registers 3

    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_27

    iget-boolean p1, p0, Landroid/support/v4/app/a;->v5:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->VH(I)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(I)V

    goto :goto_25

    :cond_20
    iget-object p1, p0, Landroid/support/v4/app/a;->Hw:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->gn(I)V

    :goto_25
    const/4 p1, 0x1

    return p1

    :cond_27
    const/4 p1, 0x0

    return p1
.end method
