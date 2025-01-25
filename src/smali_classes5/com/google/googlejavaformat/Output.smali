.class public abstract Lcom/google/googlejavaformat/Output;
.super Lcom/google/googlejavaformat/InputOutput;
.source "Output.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/Output$BreakTag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/google/googlejavaformat/InputOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract append(Ljava/lang/String;Lcom/google/common/collect/Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blankLine(ILcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V
.end method

.method public abstract getCommentsHelper()Lcom/google/googlejavaformat/CommentsHelper;
.end method

.method public abstract indent(I)V
.end method

.method public abstract markForPartialFormat(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Input$Token;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 63
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
