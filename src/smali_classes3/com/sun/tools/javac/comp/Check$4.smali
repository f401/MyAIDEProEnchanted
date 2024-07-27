.class Lcom/sun/tools/javac/comp/Check$4;
.super Ljava/lang/Object;
.source "Check.java"

# interfaces
.implements Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Check;->checkSunAPI(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Check;

.field final val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field final val$s:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 2478
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$4;->this$0:Lcom/sun/tools/javac/comp/Check;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Check$4;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/Check$4;->val$s:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report()V
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2480
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$4;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$700(Lcom/sun/tools/javac/comp/Check;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$4;->this$0:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$4;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const-string v2, "sun.proprietary"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check$4;->val$s:Lcom/sun/tools/javac/code/Symbol;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->warnSunApi(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2484
    :goto_0
    return-void

    .line 2483
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$4;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$4;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const-string v2, "sun.proprietary"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Check$4;->val$s:Lcom/sun/tools/javac/code/Symbol;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->strictWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
