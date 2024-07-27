.class Lcom/sun/tools/javac/comp/Resolve$StaticError;
.super Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaticError"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 2287
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2288
    const/16 v0, 0x43

    const-string v1, "static error"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    .line 2289
    return-void
.end method


# virtual methods
.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 15
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

    const/4 v5, 0x2

    .line 2299
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v1, v0

    .line 2302
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2303
    invoke-static {v3}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v3

    .line 2302
    const-string v4, "non-static.cant.be.ref"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0

    .line 2301
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$StaticError;->sym:Lcom/sun/tools/javac/code/Symbol;

    move-object v1, v0

    goto :goto_0
.end method
