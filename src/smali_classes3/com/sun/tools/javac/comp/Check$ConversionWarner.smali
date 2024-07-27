.class Lcom/sun/tools/javac/comp/Check$ConversionWarner;
.super Lcom/sun/tools/javac/util/Warner;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionWarner"
.end annotation


# instance fields
.field final expected:Lcom/sun/tools/javac/code/Type;

.field final found:Lcom/sun/tools/javac/code/Type;

.field final this$0:Lcom/sun/tools/javac/comp/Check;

.field final uncheckedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V
    .registers 6

    .line 2762
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    .line 2763
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/util/Warner;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 2764
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->uncheckedKey:Ljava/lang/String;

    .line 2765
    iput-object p4, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->found:Lcom/sun/tools/javac/code/Type;

    .line 2766
    iput-object p5, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->expected:Lcom/sun/tools/javac/code/Type;

    .line 2767
    return-void
.end method


# virtual methods
.method public warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2771
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->warned:Z

    .line 2772
    invoke-super {p0, p1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    .line 2773
    if-eqz v0, :cond_1

    .line 2777
    :cond_0
    :goto_0
    return-void

    .line 2774
    :cond_1
    sget-object v0, Lcom/sun/tools/javac/comp/Check$5;->$SwitchMap$com$sun$tools$javac$code$Lint$LintCategory:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Lint$LintCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v8, :cond_3

    if-ne v0, v9, :cond_2

    .line 2779
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$900(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    .line 2780
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$900(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Check;->access$1000(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    .line 2781
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$900(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/comp/Check;->access$1100(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    .line 2782
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$600(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$900(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "varargs.unsafe.use.varargs.param"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v4}, Lcom/sun/tools/javac/comp/Check;->access$900(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->warnUnsafeVararg(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2787
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected lint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2776
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "prob.found.req"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v4}, Lcom/sun/tools/javac/comp/Check;->access$800(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->uncheckedKey:Ljava/lang/String;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->found:Lcom/sun/tools/javac/code/Type;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check$ConversionWarner;->expected:Lcom/sun/tools/javac/code/Type;

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->warnUnchecked(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
