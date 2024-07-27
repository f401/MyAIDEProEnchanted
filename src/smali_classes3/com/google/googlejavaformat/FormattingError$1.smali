.class Lcom/google/googlejavaformat/FormattingError$1;
.super Ljava/lang/Object;
.source "FormattingError.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/FormattingError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljavax/tools/Diagnostic",
        "<*>;",
        "Lcom/google/googlejavaformat/FormatterDiagnostic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljavax/tools/Diagnostic;)Lcom/google/googlejavaformat/FormatterDiagnostic;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/Diagnostic",
            "<*>;)",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljavax/tools/Diagnostic;->getLineNumber()J

    move-result-wide v0

    long-to-int v0, v0

    .line 56
    invoke-interface {p1}, Ljavax/tools/Diagnostic;->getColumnNumber()J

    move-result-wide v2

    long-to-int v1, v2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 57
    invoke-interface {p1, v2}, Ljavax/tools/Diagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/google/googlejavaformat/FormatterDiagnostic;->create(IILjava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 51
    check-cast p1, Ljavax/tools/Diagnostic;

    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/FormattingError$1;->apply(Ljavax/tools/Diagnostic;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    return-object v0
.end method
