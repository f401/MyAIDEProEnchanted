.class Landroid/support/v4/widget/SlidingPaneLayout$g;
.super Landroid/support/v4/widget/SlidingPaneLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private DW:Ljava/lang/reflect/Field;

.field private j6:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 5

    const-string v0, "SlidingPaneLayout"

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$f;-><init>()V

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "getDisplayList"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$g;->j6:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v1

    const-string v2, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    :try_start_17
    const-class v1, Landroid/view/View;

    const-string v2, "mRecreateDisplayList"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$g;->DW:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception v1

    const-string v2, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method


# virtual methods
.method public j6(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$g;->j6:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$g;->DW:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    :try_start_9
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$g;->j6:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "SlidingPaneLayout"

    const-string v2, "Error refreshing display list state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout$f;->j6(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    return-void

    :cond_1f
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void
.end method
