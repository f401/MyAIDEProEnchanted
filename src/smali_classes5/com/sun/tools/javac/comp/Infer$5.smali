.class Lcom/sun/tools/javac/comp/Infer$5;
.super Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Infer;->instantiateMethod(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Infer;

.field final val$all_tvars:Lcom/sun/tools/javac/util/List;

.field final val$allowBoxing:Z

.field final val$capturedArgs:Lcom/sun/tools/javac/util/List;

.field final val$env:Lcom/sun/tools/javac/comp/Env;

.field final val$inferredTypes:Lcom/sun/tools/javac/util/List;

.field final val$msym:Lcom/sun/tools/javac/code/Symbol;

.field final val$restundet:Lcom/sun/tools/javac/util/ListBuffer;

.field final val$useVarargs:Z

.field final val$warn:Lcom/sun/tools/javac/util/Warner;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Infer;Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 13

    .line 474
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$restundet:Lcom/sun/tools/javac/util/ListBuffer;

    iput-object p5, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$all_tvars:Lcom/sun/tools/javac/util/List;

    iput-object p6, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$inferredTypes:Lcom/sun/tools/javac/util/List;

    iput-object p7, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$env:Lcom/sun/tools/javac/comp/Env;

    iput-object p8, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$capturedArgs:Lcom/sun/tools/javac/util/List;

    iput-boolean p9, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$allowBoxing:Z

    iput-boolean p10, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$useVarargs:Z

    iput-object p11, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$warn:Lcom/sun/tools/javac/util/Warner;

    iput-object p12, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$msym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;-><init>(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method check(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Types;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$capturedArgs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Infer$5;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$allowBoxing:Z

    iget-boolean v5, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$useVarargs:Z

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$warn:Lcom/sun/tools/javac/util/Warner;

    invoke-static/range {v0 .. v6}, Lcom/sun/tools/javac/comp/Infer;->access$200(Lcom/sun/tools/javac/comp/Infer;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZLcom/sun/tools/javac/util/Warner;)V

    .line 495
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$all_tvars:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$inferredTypes:Lcom/sun/tools/javac/util/List;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer$5;->tvars:Lcom/sun/tools/javac/util/List;

    .line 496
    invoke-virtual {p2, v2, v3, p1}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$warn:Lcom/sun/tools/javac/util/Warner;

    .line 495
    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Infer;->checkWithinBounds(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)V

    .line 497
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$useVarargs:Z

    if-eqz v0, :cond_3d

    .line 498
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Infer;->chk:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Infer$5;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$msym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->checkVararg(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)V

    .line 500
    :cond_3d
    return-void
.end method

.method getConstraints(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$restundet:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 478
    check-cast v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 479
    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    if-ne v2, p1, :cond_a

    .line 480
    sget-object v2, Lcom/sun/tools/javac/comp/Infer$7;->$SwitchMap$com$sun$tools$javac$code$Type$ForAll$ConstraintKind:[I

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_40

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3d

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 484
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_38

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 488
    :goto_37
    return-object v0

    .line 484
    :cond_38
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_37

    .line 483
    :cond_3d
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    goto :goto_37

    .line 481
    :cond_40
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Infer;->access$100(Lcom/sun/tools/javac/comp/Infer;)Lcom/sun/tools/javac/util/Filter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->filter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Infer$5;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    .line 482
    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$all_tvars:Lcom/sun/tools/javac/util/List;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Infer$5;->val$inferredTypes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_37

    .line 488
    :cond_65
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_37
.end method
