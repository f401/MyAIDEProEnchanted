.class Lcom/sun/tools/javac/comp/Resolve$2;
.super Lcom/sun/tools/javac/comp/Resolve$ResolveError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Resolve;->resolveDiamond(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Resolve;

.field final val$details:Lcom/sun/tools/javac/util/JCDiagnostic;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 5

    .line 1621
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$2;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/Resolve$2;->val$details:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    .line 1625
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$2;->val$details:Lcom/sun/tools/javac/util/JCDiagnostic;

    if-nez v0, :cond_0

    .line 1626
    const-string v4, "cant.apply.diamond"

    .line 1628
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$2;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$2;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$2;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1629
    const-string v5, "diamond"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$2;->val$details:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 1628
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0

    .line 1627
    :cond_0
    const-string v4, "cant.apply.diamond.1"

    goto :goto_0
.end method
