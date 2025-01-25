.class public Labcd/Qv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Qv$a;,
        Labcd/Qv$b;,
        Labcd/Qv$c;,
        Labcd/Qv$d;,
        Labcd/Qv$e;
    }
.end annotation


# static fields
.field public static DW:I

.field private static FH:Z

.field private static Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Labcd/Qv$c;",
            ">;"
        }
    .end annotation
.end field

.field public static j6:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/Qv;->Hw:Ljava/util/Map;

    return-void
.end method

.method static synthetic DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-void
.end method

.method public static DW(Lcom/appfour/backbone/api/objects/UserInputAction;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserInputAction;)V

    return-void
.end method

.method static synthetic DW(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->v5(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void
.end method

.method private static DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V
    .registers 2

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    invoke-static {p0, p1}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method static synthetic DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    return-void
.end method

.method static synthetic DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    return-void
.end method

.method private static FH(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-void
.end method

.method private static FH(Lcom/appfour/backbone/api/objects/UserInputAction;)V
    .registers 2

    invoke-virtual {p0}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)V

    const/4 p0, 0x0

    :goto_a
    sput-boolean p0, Labcd/Qv;->FH:Z

    goto :goto_16

    :cond_d
    sget-boolean v0, Labcd/Qv;->FH:Z

    if-nez v0, :cond_16

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)V

    const/4 p0, 0x1

    goto :goto_a

    :cond_16
    :goto_16
    return-void
.end method

.method static synthetic FH(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->Hw(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void
.end method

.method private static FH(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    invoke-static {p0, p1}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method private static FH(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 5

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    invoke-static {p0, p1, p2, p3, p4}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method private static Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    invoke-static {p0}, Labcd/kv;->DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-void
.end method

.method private static Hw(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 1

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method private static Hw(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    invoke-static {p0, p1}, Labcd/kv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method private static Hw(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 5

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    invoke-static {p0, p1, p2, p3, p4}, Labcd/kv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method private static Zo(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 1

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method

.method public static j6(Landroid/view/View;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 3

    instance-of v0, p0, Labcd/Qv$c;

    if-eqz v0, :cond_9

    check-cast p0, Labcd/Qv$c;

    invoke-virtual {p0, p1}, Labcd/Qv$c;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    :cond_9
    return-void
.end method

.method public static j6(Landroid/view/Window;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v0, v0, Labcd/Qv$d;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    check-cast p0, Labcd/Qv$d;

    invoke-static {p0}, Labcd/Qv$d;->j6(Labcd/Qv$d;)V

    goto :goto_1a

    :cond_12
    new-instance v0, Labcd/Qv$d;

    invoke-direct {v0, p0, p1}, Labcd/Qv$d;-><init>(Landroid/view/Window;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :goto_1a
    return-void
.end method

.method public static j6(Landroid/widget/PopupWindow;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 3

    invoke-static {p0}, Labcd/Qv$b;->j6(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    instance-of v0, v0, Labcd/Qv$b;

    if-nez v0, :cond_10

    new-instance v0, Labcd/Qv$b;

    invoke-direct {v0, p0, p1}, Labcd/Qv$b;-><init>(Landroid/widget/PopupWindow;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_10
    return-void
.end method

.method static synthetic j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->Hw(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    return-void
.end method

.method static synthetic j6(Lcom/appfour/backbone/api/objects/UserInputAction;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->FH(Lcom/appfour/backbone/api/objects/UserInputAction;)V

    return-void
.end method

.method static synthetic j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 1

    invoke-static {p0}, Labcd/Qv;->Zo(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    return-void
.end method

.method static synthetic j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V
    .registers 2

    invoke-static {p0, p1}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Labcd/Qv;->Hw(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;)V

    return-void
.end method

.method static synthetic j6(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Labcd/Qv;->Hw(Lcom/appfour/backbone/api/objects/UserTouchAction;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)V

    return-void
.end method

.method private static v5(Lcom/appfour/backbone/api/objects/UserTouchAction;)V
    .registers 1

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)V

    const/4 p0, 0x0

    sput-boolean p0, Labcd/Qv;->FH:Z

    return-void
.end method
