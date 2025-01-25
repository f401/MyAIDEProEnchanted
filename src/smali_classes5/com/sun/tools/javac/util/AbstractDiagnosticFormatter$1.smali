.class Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;
.super Lcom/sun/tools/javac/code/Printer;
.source "AbstractDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Printer;-><init>()V

    return-void
.end method


# virtual methods
.method protected capturedVarId(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-static {v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 492
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-static {v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 504
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-static {v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->access$002(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    .line 506
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
