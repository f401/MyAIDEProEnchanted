.class public Labcd/Hv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Hv$a;
    }
.end annotation


# static fields
.field private static DW:Ljava/lang/reflect/Field;

.field private static FH:Ljava/lang/Object;

.field private static Hw:Ljava/lang/reflect/Field;

.field private static VH:Ljava/lang/Runnable;

.field private static Zo:Landroid/os/Handler;

.field private static gn:Landroid/app/Activity;

.field private static j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/appfour/backbone/api/objects/UserActionWindow;",
            ">;>;"
        }
    .end annotation
.end field

.field private static u7:Labcd/Hv$a;

.field private static v5:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Labcd/Hv;->j6:Ljava/util/List;

    return-void
.end method

.method private static DW(Landroid/view/View;)Landroid/view/Window;
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.android.internal.policy.DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWindow"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v1

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "this$0"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic DW()V
    .registers 0

    invoke-static {}, Labcd/Hv;->we()V

    return-void
.end method

.method private static DW(Landroid/content/Intent;)Z
    .registers 3

    if-eqz p0, :cond_22

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method private static EQ()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    sget-object v1, Labcd/Hv;->DW:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_10

    sget-object v2, Labcd/Hv;->FH:Ljava/lang/Object;

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_18

    :cond_10
    sget-object v1, Labcd/Hv;->Hw:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_17

    sget-object v2, Labcd/Hv;->v5:Ljava/lang/Object;

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    :goto_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_25

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    goto :goto_2f

    :cond_25
    instance-of v3, v1, [Landroid/view/View;

    if-eqz v3, :cond_2f

    check-cast v1, [Landroid/view/View;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Labcd/Hv;->Hw(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_48} :catch_49

    goto :goto_33

    :catch_49
    move-exception v1

    :cond_4a
    return-object v0
.end method

.method static synthetic FH()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Labcd/Hv;->VH:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static FH(Landroid/view/View;)Z
    .registers 3

    invoke-static {p0}, Labcd/Hv;->DW(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static synthetic Hw()Ljava/util/List;
    .registers 1

    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    return-object v0
.end method

.method private static Hw(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Labcd/Hv;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method private static J0()V
    .registers 9

    invoke-static {}, Labcd/Hv;->EQ()Ljava/util/List;

    move-result-object v0

    sget-object v1, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_d
    if-ltz v2, :cond_3d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-ne v7, v5, :cond_1d

    goto :goto_3a

    :cond_2c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-static {v4}, Labcd/Hv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    const/4 v4, 0x1

    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_3d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5}, Labcd/Hv;->FH(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_46

    sget-object v6, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v8, v5, :cond_5e

    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_78
    invoke-static {v5}, Labcd/Hv;->v5(Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_46

    :cond_85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Labcd/Hv;->FH(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_89

    sget-object v5, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v7, v2, :cond_a1

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :cond_bb
    invoke-static {v2}, Labcd/Hv;->v5(Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_89

    :cond_c8
    if-eqz v4, :cond_d1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Labcd/Hv;->j6:Ljava/util/List;

    :cond_d1
    return-void
.end method

.method static synthetic VH()Landroid/app/Activity;
    .registers 1

    sget-object v0, Labcd/Hv;->gn:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic Zo()V
    .registers 0

    invoke-static {}, Labcd/Hv;->tp()V

    return-void
.end method

.method public static gn()Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 4

    sget-object v0, Labcd/Hv;->gn:Landroid/app/Activity;

    if-eqz v0, :cond_50

    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Labcd/Hv;->gn:Landroid/app/Activity;

    if-ne v2, v3, :cond_a

    :goto_2c
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/appfour/backbone/api/objects/UserActionWindow;

    return-object v0

    :cond_31
    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Labcd/Hv;->gn:Landroid/app/Activity;

    if-ne v2, v3, :cond_37

    goto :goto_2c

    :cond_50
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic j6(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    sput-object p0, Labcd/Hv;->gn:Landroid/app/Activity;

    return-object p0
.end method

.method private static j6(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_7
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Labcd/Hv;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/view/View;)Landroid/widget/PopupWindow;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "this$0"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/PopupWindow;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 5

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Labcd/Hv;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_1e

    const/4 p0, 0x0

    goto :goto_47

    :cond_1e
    if-nez p0, :cond_3e

    if-nez p1, :cond_3e

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_46

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const-string p1, "Toast"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 p0, 0x4

    goto :goto_47

    :cond_3e
    if-eqz p0, :cond_42

    const/4 p0, 0x1

    goto :goto_47

    :cond_42
    if-eqz p1, :cond_46

    const/4 p0, 0x2

    goto :goto_47

    :cond_46
    const/4 p0, 0x3

    :goto_47
    if-eqz v1, :cond_4a

    move-object v0, v1

    :cond_4a
    new-instance p1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {p1, v0, p0, p2}, Lcom/appfour/backbone/api/objects/UserActionWindow;-><init>(Landroid/app/Activity;ILandroid/view/View;)V

    return-object p1
.end method

.method static synthetic j6()V
    .registers 0

    invoke-static {}, Labcd/Hv;->J0()V

    return-void
.end method

.method private static j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    invoke-static {p0}, Labcd/kv;->FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-void
.end method

.method static synthetic j6(Landroid/content/Intent;)Z
    .registers 1

    invoke-static {p0}, Labcd/Hv;->DW(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static tp()V
    .registers 2

    sget-object v0, Labcd/Hv;->Zo:Landroid/os/Handler;

    sget-object v1, Labcd/Hv;->VH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Labcd/Hv;->Zo:Landroid/os/Handler;

    sget-object v1, Labcd/Hv;->VH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static u7()V
    .registers 8

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    :try_start_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_56

    const/4 v2, 0x1

    const-string v3, "mViews"

    const/4 v4, 0x0

    const/16 v5, 0x11

    const/4 v6, 0x0

    if-lt v1, v5, :cond_2f

    :try_start_f
    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getInstance"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Labcd/Hv;->FH:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Labcd/Hv;->DW:Ljava/lang/reflect/Field;

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_57

    :cond_2f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v1, v7, :cond_57

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_57

    const-string v1, "android.view.WindowManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getDefault"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Labcd/Hv;->v5:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Labcd/Hv;->Hw:Ljava/lang/reflect/Field;
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_56

    goto :goto_2b

    :catchall_56
    move-exception v1

    :cond_57
    :goto_57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Labcd/Hv;->Zo:Landroid/os/Handler;

    new-instance v1, Labcd/Fv;

    invoke-direct {v1}, Labcd/Fv;-><init>()V

    sput-object v1, Labcd/Hv;->VH:Ljava/lang/Runnable;

    sget-object v2, Labcd/Hv;->Zo:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Labcd/Gv;

    invoke-direct {v1}, Labcd/Gv;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic v5()Landroid/os/Handler;
    .registers 1

    sget-object v0, Labcd/Hv;->Zo:Landroid/os/Handler;

    return-object v0
.end method

.method private static v5(Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 3

    invoke-static {p0}, Labcd/Hv;->DW(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-static {v0, v1, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p0

    invoke-static {p0}, Labcd/kv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-static {v0, p0}, Labcd/Qv;->j6(Landroid/view/Window;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-object p0

    :cond_12
    invoke-static {p0}, Labcd/Hv;->j6(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {v1, v0, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p0

    invoke-static {p0}, Labcd/kv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-static {v0, p0}, Labcd/Qv;->j6(Landroid/widget/PopupWindow;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-object p0

    :cond_23
    invoke-static {v1, v1, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    invoke-static {v0}, Labcd/kv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-static {p0, v0}, Labcd/Qv;->j6(Landroid/view/View;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-object v0
.end method

.method private static we()V
    .registers 5

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mServedInputConnectionWrapper"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mInputConnection"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/ref/WeakReference;

    if-ne v3, v4, :cond_67

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7f

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Labcd/Hv$a;

    if-nez v4, :cond_7f

    new-instance v4, Labcd/Hv$a;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    invoke-direct {v4, v3, v2}, Labcd/Hv$a;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    sput-object v4, Labcd/Hv;->u7:Labcd/Hv$a;

    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Labcd/Hv;->u7:Labcd/Hv$a;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7f

    :cond_67
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_7f

    instance-of v4, v3, Labcd/Hv$a;

    if-nez v4, :cond_7f

    new-instance v4, Labcd/Hv$a;

    invoke-direct {v4, v3, v2}, Labcd/Hv$a;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    sput-object v4, Labcd/Hv;->u7:Labcd/Hv$a;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception v0

    :cond_7f
    :goto_7f
    return-void
.end method
