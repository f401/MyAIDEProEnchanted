.class public abstract Labcd/hv;
.super Labcd/yu;


# instance fields
.field private DW:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private FH:J

.field private Hw:J

.field private Zo:Z

.field private v5:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Labcd/yu;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/hv;->v5:J

    return-void
.end method


# virtual methods
.method public FH()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/hv;->DW:Ljava/lang/Class;

    return-object v0
.end method

.method public Hw()J
    .registers 3

    iget-wide v0, p0, Labcd/hv;->FH:J

    return-wide v0
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/hv;->Zo:Z

    return v0
.end method

.method public Zo()J
    .registers 3

    iget-wide v0, p0, Labcd/hv;->v5:J

    return-wide v0
.end method

.method public onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TE;>;J",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure0<",
            "TC;TE;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hv;->Zo:Z

    iput-object p5, p0, Labcd/hv;->DW:Ljava/lang/Class;

    iput-wide p6, p0, Labcd/hv;->FH:J

    iput-wide p1, p0, Labcd/hv;->Hw:J

    iput-wide p3, p0, Labcd/hv;->v5:J

    if-nez p8, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    new-instance p3, Labcd/Xu;

    invoke-direct {p3, p0, p1, p2, p8}, Labcd/Xu;-><init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure0;)V

    move-object p1, p3

    :goto_15
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure1;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TE;>;J",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure1<",
            "TC;TE;TT0;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hv;->Zo:Z

    iput-object p5, p0, Labcd/hv;->DW:Ljava/lang/Class;

    iput-wide p6, p0, Labcd/hv;->FH:J

    iput-wide p1, p0, Labcd/hv;->Hw:J

    iput-wide p3, p0, Labcd/hv;->v5:J

    if-nez p8, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    new-instance p3, Labcd/Zu;

    invoke-direct {p3, p0, p1, p2, p8}, Labcd/Zu;-><init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure1;)V

    move-object p1, p3

    :goto_15
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure2;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TE;>;J",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure2<",
            "TC;TE;TT0;TT1;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hv;->Zo:Z

    iput-object p5, p0, Labcd/hv;->DW:Ljava/lang/Class;

    iput-wide p6, p0, Labcd/hv;->FH:J

    iput-wide p1, p0, Labcd/hv;->Hw:J

    iput-wide p3, p0, Labcd/hv;->v5:J

    if-nez p8, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    new-instance p3, Labcd/av;

    invoke-direct {p3, p0, p1, p2, p8}, Labcd/av;-><init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure2;)V

    move-object p1, p3

    :goto_15
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure3;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TE;>;J",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure3<",
            "TC;TE;TT0;TT1;TT2;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hv;->Zo:Z

    iput-object p5, p0, Labcd/hv;->DW:Ljava/lang/Class;

    iput-wide p6, p0, Labcd/hv;->FH:J

    iput-wide p1, p0, Labcd/hv;->Hw:J

    iput-wide p3, p0, Labcd/hv;->v5:J

    if-nez p8, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    new-instance p3, Labcd/cv;

    invoke-direct {p3, p0, p1, p2, p8}, Labcd/cv;-><init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure3;)V

    move-object p1, p3

    :goto_15
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure4;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TE;>;J",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure4<",
            "TC;TE;TT0;TT1;TT2;TT3;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hv;->Zo:Z

    iput-object p5, p0, Labcd/hv;->DW:Ljava/lang/Class;

    iput-wide p6, p0, Labcd/hv;->FH:J

    iput-wide p1, p0, Labcd/hv;->Hw:J

    iput-wide p3, p0, Labcd/hv;->v5:J

    if-nez p8, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    new-instance p3, Labcd/ev;

    invoke-direct {p3, p0, p1, p2, p8}, Labcd/ev;-><init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure4;)V

    move-object p1, p3

    :goto_15
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure5;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TE;>;J",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure5<",
            "TC;TE;TT0;TT1;TT2;TT3;TT4;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hv;->Zo:Z

    iput-object p5, p0, Labcd/hv;->DW:Ljava/lang/Class;

    iput-wide p6, p0, Labcd/hv;->FH:J

    iput-wide p1, p0, Labcd/hv;->Hw:J

    iput-wide p3, p0, Labcd/hv;->v5:J

    if-nez p8, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    new-instance p3, Labcd/gv;

    invoke-direct {p3, p0, p1, p2, p8}, Labcd/gv;-><init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure5;)V

    move-object p1, p3

    :goto_15
    iput-object p1, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure0<",
            "TC;TE;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure1;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure1<",
            "TC;TE;TT0;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure2;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure2<",
            "TC;TE;TT0;TT1;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure3;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure3<",
            "TC;TE;TT0;TT1;TT2;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure4;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TT3;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure4<",
            "TC;TE;TT0;TT1;TT2;TT3;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public onExceptionIn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnExceptionClosure5;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT0;>;",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/lang/Class<",
            "TT3;>;",
            "Ljava/lang/Class<",
            "TT4;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/appfour/backbone/api/closures/OnExceptionClosure5<",
            "TC;TE;TT0;TT1;TT2;TT3;TT4;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object p1

    return-object p1
.end method

.method public v5()J
    .registers 3

    iget-wide v0, p0, Labcd/hv;->Hw:J

    return-wide v0
.end method
