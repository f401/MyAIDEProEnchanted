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
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
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
    .registers 3

    :try_start_0
    const-string v0, "com.android.internal.policy.DecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mWindow"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "this$0"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic DW()V
    .registers 0

    invoke-static {}, Labcd/Hv;->we()V

    return-void
.end method

.method private static DW(Landroid/content/Intent;)Z
    .registers 3

    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static EQ()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Labcd/Hv;->DW:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    sget-object v0, Labcd/Hv;->DW:Ljava/lang/reflect/Field;

    sget-object v1, Labcd/Hv;->FH:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Labcd/Hv;->Hw(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    return-object v2

    :cond_3
    sget-object v1, Labcd/Hv;->Hw:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    sget-object v0, Labcd/Hv;->Hw:Ljava/lang/reflect/Field;

    sget-object v1, Labcd/Hv;->v5:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v3, v0, [Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, [Landroid/view/View;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic FH()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Labcd/Hv;->VH:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static FH(Landroid/view/View;)Z
    .registers 4

    invoke-static {p0}, Labcd/Hv;->DW(Landroid/view/View;)Landroid/view/Window;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic Hw()Ljava/util/List;
    .registers 1

    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    return-object v0
.end method

.method private static Hw(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Labcd/Hv;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static J0()V
    .registers 9

    const/4 v3, 0x1

    invoke-static {}, Labcd/Hv;->EQ()Ljava/util/List;

    move-result-object v5

    sget-object v6, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, v0, :cond_0

    move v0, v2

    :goto_1
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-static {v0}, Labcd/Hv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    move v0, v3

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Labcd/Hv;->FH(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v8, v0, :cond_4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v0}, Labcd/Hv;->v5(Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Labcd/Hv;->FH(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v7, v1, :cond_8

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {v1}, Labcd/Hv;->v5(Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Labcd/Hv;->j6:Ljava/util/List;

    :cond_b
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

    if-eqz v0, :cond_3

    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Labcd/Hv;->gn:Landroid/app/Activity;

    if-ne v1, v3, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/appfour/backbone/api/objects/UserActionWindow;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Labcd/Hv;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Labcd/Hv;->gn:Landroid/app/Activity;

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/appfour/backbone/api/objects/UserActionWindow;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    sput-object p0, Labcd/Hv;->gn:Landroid/app/Activity;

    return-object p0
.end method

.method private static j6(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labcd/Hv;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
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

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 8

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labcd/Hv;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    new-instance v2, Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-direct {v2, v1, v0, p2}, Lcom/appfour/backbone/api/objects/UserActionWindow;-><init>(Landroid/app/Activity;ILandroid/view/View;)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_5

    const-string v4, "Toast"

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
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
    .registers 2

    invoke-static {p0}, Labcd/Hv;->DW(Landroid/content/Intent;)Z

    move-result v0

    return v0
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
    .registers 5

    const/16 v3, 0x11

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Labcd/Hv;->FH:Ljava/lang/Object;

    const-string v2, "mViews"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Labcd/Hv;->DW:Ljava/lang/reflect/Field;

    sget-object v1, Labcd/Hv;->DW:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Labcd/Hv;->Zo:Landroid/os/Handler;

    new-instance v1, Labcd/Fv;

    invoke-direct {v1}, Labcd/Fv;-><init>()V

    sput-object v1, Labcd/Hv;->VH:Ljava/lang/Runnable;

    sget-object v1, Labcd/Hv;->Zo:Landroid/os/Handler;

    sget-object v2, Labcd/Hv;->VH:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Labcd/Gv;

    invoke-direct {v1}, Labcd/Gv;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_1
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_0

    const-string v1, "android.view.WindowManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Labcd/Hv;->v5:Ljava/lang/Object;

    const-string v2, "mViews"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Labcd/Hv;->Hw:Ljava/lang/reflect/Field;

    sget-object v1, Labcd/Hv;->Hw:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic v5()Landroid/os/Handler;
    .registers 1

    sget-object v0, Labcd/Hv;->Zo:Landroid/os/Handler;

    return-object v0
.end method

.method private static v5(Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Labcd/Hv;->DW(Landroid/view/View;)Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    invoke-static {v0}, Labcd/kv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-static {v1, v0}, Labcd/Qv;->j6(Landroid/view/Window;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Labcd/Hv;->j6(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0, v1, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    invoke-static {v0}, Labcd/kv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-static {v1, v0}, Labcd/Qv;->j6(Landroid/widget/PopupWindow;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v0, p0}, Labcd/Hv;->j6(Landroid/view/Window;Landroid/widget/PopupWindow;Landroid/view/View;)Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    invoke-static {v0}, Labcd/kv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-static {p0, v0}, Labcd/Qv;->j6(Landroid/view/View;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    goto :goto_0
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

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mInputConnection"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/ref/WeakReference;

    if-ne v0, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Labcd/Hv$a;

    if-nez v3, :cond_0

    new-instance v3, Labcd/Hv$a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Labcd/Hv$a;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    sput-object v3, Labcd/Hv;->u7:Labcd/Hv$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v3, Labcd/Hv;->u7:Labcd/Hv$a;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    instance-of v3, v0, Labcd/Hv$a;

    if-nez v3, :cond_0

    new-instance v3, Labcd/Hv$a;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Labcd/Hv$a;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    sput-object v3, Labcd/Hv;->u7:Labcd/Hv$a;

    sget-object v0, Labcd/Hv;->u7:Labcd/Hv$a;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
