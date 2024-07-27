.class public abstract Labcd/Vu;
.super Labcd/hv;


# instance fields
.field private VH:J

.field private gn:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Labcd/hv;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/Vu;->gn:J

    return-void
.end method


# virtual methods
.method public gn()J
    .registers 3

    iget-wide v0, p0, Labcd/Vu;->VH:J

    return-wide v0
.end method

.method public onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure0",
            "<TC;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    iput-wide p1, p0, Labcd/Vu;->VH:J

    iput-wide p3, p0, Labcd/Vu;->gn:J

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Ku;

    invoke-direct {v0, p0, p1, p2, p5}, Labcd/Ku;-><init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure0;)V

    goto :goto_0
.end method

.method public onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure1;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure1",
            "<TC;TT0;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    iput-wide p1, p0, Labcd/Vu;->VH:J

    iput-wide p3, p0, Labcd/Vu;->gn:J

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Mu;

    invoke-direct {v0, p0, p1, p2, p5}, Labcd/Mu;-><init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure1;)V

    goto :goto_0
.end method

.method public onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure2;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure2",
            "<TC;TT0;TT1;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    iput-wide p1, p0, Labcd/Vu;->VH:J

    iput-wide p3, p0, Labcd/Vu;->gn:J

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Ou;

    invoke-direct {v0, p0, p1, p2, p5}, Labcd/Ou;-><init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure2;)V

    goto :goto_0
.end method

.method public onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure3;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
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
            ">(JJ",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure3",
            "<TC;TT0;TT1;TT2;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    iput-wide p1, p0, Labcd/Vu;->VH:J

    iput-wide p3, p0, Labcd/Vu;->gn:J

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Qu;

    invoke-direct {v0, p0, p1, p2, p5}, Labcd/Qu;-><init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure3;)V

    goto :goto_0
.end method

.method public onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure4;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
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
            ">(JJ",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure4",
            "<TC;TT0;TT1;TT2;TT3;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    iput-wide p1, p0, Labcd/Vu;->VH:J

    iput-wide p3, p0, Labcd/Vu;->gn:J

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Su;

    invoke-direct {v0, p0, p1, p2, p5}, Labcd/Su;-><init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure4;)V

    goto :goto_0
.end method

.method public onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure5;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
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
            ">(JJ",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure5",
            "<TC;TT0;TT1;TT2;TT3;TT4;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    iput-wide p1, p0, Labcd/Vu;->VH:J

    iput-wide p3, p0, Labcd/Vu;->gn:J

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/yu;->j6:Labcd/jv;

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/Uu;

    invoke-direct {v0, p0, p1, p2, p5}, Labcd/Uu;-><init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure5;)V

    goto :goto_0
.end method

.method public onEnter(Ljava/lang/Class;Ljava/lang/String;Lcom/appfour/backbone/api/closures/OnEnterClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure0",
            "<TC;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure1;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT0;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure1",
            "<TC;TT0;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure2;)Lcom/appfour/backbone/api/define/DefineHook;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT0;>;",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure2",
            "<TC;TT0;TT1;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure3;)Lcom/appfour/backbone/api/define/DefineHook;
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
            ">(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT0;>;",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Ljava/lang/Class",
            "<TT2;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure3",
            "<TC;TT0;TT1;TT2;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure4;)Lcom/appfour/backbone/api/define/DefineHook;
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
            ">(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT0;>;",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Ljava/lang/Class",
            "<TT2;>;",
            "Ljava/lang/Class",
            "<TT3;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure4",
            "<TC;TT0;TT1;TT2;TT3;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/appfour/backbone/api/closures/OnEnterClosure5;)Lcom/appfour/backbone/api/define/DefineHook;
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
            ">(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT0;>;",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Ljava/lang/Class",
            "<TT2;>;",
            "Ljava/lang/Class",
            "<TT3;>;",
            "Ljava/lang/Class",
            "<TT4;>;",
            "Lcom/appfour/backbone/api/closures/OnEnterClosure5",
            "<TC;TT0;TT1;TT2;TT3;TT4;>;)",
            "Lcom/appfour/backbone/api/define/DefineHook;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yu;->j6()Lcom/appfour/backbone/api/define/DefineHook;

    move-result-object v0

    return-object v0
.end method

.method public tp()Z
    .registers 5

    iget-wide v0, p0, Labcd/Vu;->gn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u7()J
    .registers 3

    iget-wide v0, p0, Labcd/Vu;->gn:J

    return-wide v0
.end method
