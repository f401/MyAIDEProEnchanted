.class Labcd/Qv$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final j6:Labcd/Qv$a;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Qv$a;

    invoke-direct {v0, p2}, Labcd/Qv$a;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    iput-object v0, p0, Labcd/Qv$b;->j6:Labcd/Qv$a;

    return-void
.end method

.method public static j6(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 3

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mTouchInterceptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnTouchListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/Qv$b;->j6:Labcd/Qv$a;

    invoke-virtual {v0, p2}, Labcd/Qv$a;->DW(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
