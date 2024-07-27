.class public Lcom/google/googlejavaformat/FormattingError;
.super Ljava/lang/Error;
.source "FormattingError.java"


# static fields
.field private static final TO_FORMATTER_DIAGNOSTIC:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljavax/tools/Diagnostic",
            "<*>;",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final diagnostics:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/google/googlejavaformat/FormattingError$1;

    invoke-direct {v0}, Lcom/google/googlejavaformat/FormattingError$1;-><init>()V

    sput-object v0, Lcom/google/googlejavaformat/FormattingError;->TO_FORMATTER_DIAGNOSTIC:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V
    .registers 3

    .line 33
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/FormattingError;-><init>(Ljava/lang/Iterable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/FormattingError;->diagnostics:Lcom/google/common/collect/ImmutableList;

    .line 39
    return-void
.end method

.method public static fromJavacDiagnostics(Ljava/lang/Iterable;)Lcom/google/googlejavaformat/FormattingError;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/Diagnostic",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;>;)",
            "Lcom/google/googlejavaformat/FormattingError;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/googlejavaformat/FormattingError;

    sget-object v1, Lcom/google/googlejavaformat/FormattingError;->TO_FORMATTER_DIAGNOSTIC:Lcom/google/common/base/Function;

    invoke-static {p0, v1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/FormattingError;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public diagnostics()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/googlejavaformat/FormattingError;->diagnostics:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
