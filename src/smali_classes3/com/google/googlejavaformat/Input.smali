.class public abstract Lcom/google/googlejavaformat/Input;
.super Lcom/google/googlejavaformat/InputOutput;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/Input$Tok;,
        Lcom/google/googlejavaformat/Input$Token;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/google/googlejavaformat/InputOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public createDiagnostic(ILjava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;
    .registers 5

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/Input;->getColumnNumber(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/google/googlejavaformat/FormatterDiagnostic;->create(IILjava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public abstract getColumnNumber(I)I
.end method

.method public abstract getLineNumber(I)I
.end method

.method public abstract getPositionToColumnMap()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTokens()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 116
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "super"

    invoke-super {p0}, Lcom/google/googlejavaformat/InputOutput;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
