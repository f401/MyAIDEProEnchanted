.class Lcom/sun/tools/javac/comp/Check$3;
.super Ljava/lang/Object;
.source "Check.java"

# interfaces
.implements Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Check;->checkDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V
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

    .line 2467
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$3;->this$0:Lcom/sun/tools/javac/comp/Check;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Check$3;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/Check$3;->val$s:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report()V
    .registers 4

    .line 2470
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$3;->this$0:Lcom/sun/tools/javac/comp/Check;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$3;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check$3;->val$s:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/comp/Check;->warnDeprecated(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2471
    return-void
.end method
