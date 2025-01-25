.class public final Landroidx/core/widget/PopupWindowCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;

.field private static sOverlapAnchorFieldAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 5

    const/4 v3, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_46

    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v0, :cond_26

    :try_start_16
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mOverlapAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_24} :catch_35

    :goto_24
    sput-boolean v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    :cond_26
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_46

    :try_start_2a
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_33} :catch_3e

    move-result v0

    goto :goto_b

    :catch_35
    move-exception v0

    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_3e
    move-exception v0

    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not get overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_24

    :try_start_11
    const-class v0, Landroid/widget/PopupWindow;

    const-string v2, "getWindowLayoutType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_39

    :goto_22
    sput-boolean v4, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    :cond_24
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_37

    const/4 v2, 0x0

    :try_start_29
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_36

    move-result v0

    goto :goto_c

    :catch_36
    move-exception v0

    :cond_37
    move v0, v1

    goto :goto_c

    :catch_39
    move-exception v0

    goto :goto_22
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 6

    const/4 v3, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v0, :cond_25

    :try_start_15
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mOverlapAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_23} :catch_3a

    :goto_23
    sput-boolean v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    :cond_25
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_a

    :try_start_29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_a

    :catch_31
    move-exception v0

    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_3a
    move-exception v0

    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 8

    const/4 v5, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_27

    :try_start_f
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_3b

    :goto_25
    sput-boolean v5, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    :cond_27
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :try_start_2c
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_39

    goto :goto_a

    :catch_39
    move-exception v0

    goto :goto_a

    :catch_3b
    move-exception v0

    goto :goto_25
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p4, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    :cond_21
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_9
.end method
