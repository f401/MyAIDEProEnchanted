.class Labcd/Hv$a;
.super Landroid/view/inputmethod/InputConnectionWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method

.method private j6()V
    .registers 4

    invoke-static {}, Labcd/Hv;->gn()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/appfour/backbone/api/objects/UserInputAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/appfour/backbone/api/objects/UserInputAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Z)V

    invoke-static {v1}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserInputAction;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-direct {p0}, Labcd/Hv$a;->j6()V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-direct {p0}, Labcd/Hv$a;->j6()V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
