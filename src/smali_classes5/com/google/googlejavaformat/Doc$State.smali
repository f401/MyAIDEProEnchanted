.class public final Lcom/google/googlejavaformat/Doc$State;
.super Ljava/lang/Object;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field final column:I

.field final indent:I

.field final lastIndent:I

.field final mustBreak:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/google/googlejavaformat/Doc$State;-><init>(IIIZ)V

    .line 78
    return-void
.end method

.method constructor <init>(IIIZ)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/google/googlejavaformat/Doc$State;->lastIndent:I

    .line 71
    iput p2, p0, Lcom/google/googlejavaformat/Doc$State;->indent:I

    .line 72
    iput p3, p0, Lcom/google/googlejavaformat/Doc$State;->column:I

    .line 73
    iput-boolean p4, p0, Lcom/google/googlejavaformat/Doc$State;->mustBreak:Z

    .line 74
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 90
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/Doc$State;->lastIndent:I

    .line 91
    const-string v2, "lastIndent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/Doc$State;->indent:I

    .line 92
    const-string v2, "indent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/Doc$State;->column:I

    .line 93
    const-string v2, "column"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlejavaformat/Doc$State;->mustBreak:Z

    .line 94
    const-string v2, "mustBreak"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method withColumn(I)Lcom/google/googlejavaformat/Doc$State;
    .registers 6

    .line 81
    new-instance v0, Lcom/google/googlejavaformat/Doc$State;

    iget v1, p0, Lcom/google/googlejavaformat/Doc$State;->lastIndent:I

    iget v2, p0, Lcom/google/googlejavaformat/Doc$State;->indent:I

    iget-boolean v3, p0, Lcom/google/googlejavaformat/Doc$State;->mustBreak:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/googlejavaformat/Doc$State;-><init>(IIIZ)V

    return-object v0
.end method

.method withMustBreak(Z)Lcom/google/googlejavaformat/Doc$State;
    .registers 6

    .line 85
    new-instance v0, Lcom/google/googlejavaformat/Doc$State;

    iget v1, p0, Lcom/google/googlejavaformat/Doc$State;->lastIndent:I

    iget v2, p0, Lcom/google/googlejavaformat/Doc$State;->indent:I

    iget v3, p0, Lcom/google/googlejavaformat/Doc$State;->column:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/googlejavaformat/Doc$State;-><init>(IIIZ)V

    return-object v0
.end method
