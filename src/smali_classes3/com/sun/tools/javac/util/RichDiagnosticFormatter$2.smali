.class Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;
.super Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;
.source "RichDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 591
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->addUsage(Lcom/sun/tools/javac/code/Symbol;)V

    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 591
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 606
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 609
    :cond_0
    return-object v2
.end method

.method public bridge synthetic visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 591
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 601
    const/4 v0, 0x0

    return-object v0
.end method
