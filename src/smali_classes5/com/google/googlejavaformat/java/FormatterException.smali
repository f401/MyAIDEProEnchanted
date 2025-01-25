.class public final Lcom/google/googlejavaformat/java/FormatterException;
.super Ljava/lang/Exception;
.source "FormatterException.java"


# instance fields
.field private diagnostics:Lcom/google/common/collect/ImmutableList;
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
.method public constructor <init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V
    .registers 3

    .line 34
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/Iterable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/FormatterDiagnostic;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/FormatterDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/FormatterException;->diagnostics:Lcom/google/common/collect/ImmutableList;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-static {p1}, Lcom/google/googlejavaformat/FormatterDiagnostic;->create(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V

    .line 31
    return-void
.end method


# virtual methods
.method public diagnostics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/googlejavaformat/java/FormatterException;->diagnostics:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
