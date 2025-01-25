.class public abstract Labcd/Bv;
.super Labcd/Vu;


# instance fields
.field private EQ:Z

.field private J0:Z

.field private J8:Z

.field private Mr:Z

.field private QX:Z

.field private U2:Z

.field private Ws:Z

.field private XL:Z

.field private a8:Z

.field private aM:Z

.field private er:I

.field private j3:Z

.field private lg:Z

.field private rN:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Z

.field private u7:Z

.field private we:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/Vu;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/Bv;->er:I

    return-void
.end method


# virtual methods
.method public EQ()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Bv;->rN:Ljava/lang/Class;

    return-object v0
.end method

.method public J0()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->u7:Z

    return v0
.end method

.method public J8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->tp:Z

    return v0
.end method

.method public Mr()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->aM:Z

    return v0
.end method

.method public QX()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->j3:Z

    return v0
.end method

.method public U2()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->U2:Z

    return v0
.end method

.method public Ws()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->EQ:Z

    return v0
.end method

.method public XL()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->XL:Z

    return v0
.end method

.method public a8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->Mr:Z

    return v0
.end method

.method public aM()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->a8:Z

    return v0
.end method

.method public er()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->QX:Z

    return v0
.end method

.method public gW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->we:Z

    return v0
.end method

.method public j3()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->lg:Z

    return v0
.end method

.method public lg()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->Ws:Z

    return v0
.end method

.method public onActivityCreate(Lcom/appfour/backbone/api/closures/OnActivityClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->u7:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/uv;

    invoke-direct {v0, p0, p1}, Labcd/uv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnActivityClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onActivityStart(Lcom/appfour/backbone/api/closures/OnActivityClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->tp:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/sv;

    invoke-direct {v0, p0, p1}, Labcd/sv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnActivityClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onActivityStop(Lcom/appfour/backbone/api/closures/OnActivityClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->EQ:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/tv;

    invoke-direct {v0, p0, p1}, Labcd/tv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnActivityClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->j3:Z

    iput-object p1, p0, Labcd/Bv;->rN:Ljava/lang/Class;

    iput p2, p0, Labcd/Bv;->er:I

    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_10

    :cond_b
    new-instance p1, Labcd/Av;

    invoke-direct {p1, p0, p3}, Labcd/Av;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnClickClosure;)V

    :goto_10
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onInput(Lcom/appfour/backbone/api/closures/OnInputClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->XL:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/nv;

    invoke-direct {v0, p0, p1}, Labcd/nv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnInputClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnItemClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnItemClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->a8:Z

    iput p2, p0, Labcd/Bv;->er:I

    iput-object p1, p0, Labcd/Bv;->rN:Ljava/lang/Class;

    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_10

    :cond_b
    new-instance p1, Labcd/yv;

    invoke-direct {p1, p0, p3}, Labcd/yv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnItemClickClosure;)V

    :goto_10
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onItemLongPress(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnItemClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnItemClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->lg:Z

    iput p2, p0, Labcd/Bv;->er:I

    iput-object p1, p0, Labcd/Bv;->rN:Ljava/lang/Class;

    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_10

    :cond_b
    new-instance p1, Labcd/zv;

    invoke-direct {p1, p0, p3}, Labcd/zv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnItemClickClosure;)V

    :goto_10
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onLaunch(Lcom/appfour/backbone/api/closures/OnLaunchClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->aM:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/rv;

    invoke-direct {v0, p0, p1}, Labcd/rv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnLaunchClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onLongPress(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnClickClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnClickClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->U2:Z

    iput-object p1, p0, Labcd/Bv;->rN:Ljava/lang/Class;

    iput p2, p0, Labcd/Bv;->er:I

    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_10

    :cond_b
    new-instance p1, Labcd/mv;

    invoke-direct {p1, p0, p3}, Labcd/mv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnClickClosure;)V

    :goto_10
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onMenuItemSelected(Ljava/lang/Class;ILcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;I",
            "Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure<",
            "TA;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->Mr:Z

    iput p2, p0, Labcd/Bv;->er:I

    iput-object p1, p0, Labcd/Bv;->rN:Ljava/lang/Class;

    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_10

    :cond_b
    new-instance p1, Labcd/xv;

    invoke-direct {p1, p0, p3}, Labcd/xv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;)V

    :goto_10
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onNotificationAction(Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->Ws:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/qv;

    invoke-direct {v0, p0, p1}, Labcd/qv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnNotificationActionClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onNotificationShown(Lcom/appfour/backbone/api/closures/OnNotificationClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->J8:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/pv;

    invoke-direct {v0, p0, p1}, Labcd/pv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnNotificationClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onTouch(Lcom/appfour/backbone/api/closures/OnTouchClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->QX:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/ov;

    invoke-direct {v0, p0, p1}, Labcd/ov;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnTouchClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onWindowHidden(Lcom/appfour/backbone/api/closures/OnWindowClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->J0:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/wv;

    invoke-direct {v0, p0, p1}, Labcd/wv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnWindowClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onWindowShown(Lcom/appfour/backbone/api/closures/OnWindowClosure;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Bv;->we:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/vv;

    invoke-direct {v0, p0, p1}, Labcd/vv;-><init>(Labcd/Bv;Lcom/appfour/backbone/api/closures/OnWindowClosure;)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public rN()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->J8:Z

    return v0
.end method

.method public we()I
    .registers 2

    iget v0, p0, Labcd/Bv;->er:I

    return v0
.end method

.method public yS()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Bv;->J0:Z

    return v0
.end method
