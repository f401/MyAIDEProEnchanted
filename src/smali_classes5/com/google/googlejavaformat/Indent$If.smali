.class public final Lcom/google/googlejavaformat/Indent$If;
.super Lcom/google/googlejavaformat/Indent;
.source "Indent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Indent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "If"
.end annotation


# instance fields
.field private final condition:Lcom/google/googlejavaformat/Output$BreakTag;

.field private final elseIndent:Lcom/google/googlejavaformat/Indent;

.field private final thenIndent:Lcom/google/googlejavaformat/Indent;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/google/googlejavaformat/Indent;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/googlejavaformat/Indent$If;->condition:Lcom/google/googlejavaformat/Output$BreakTag;

    .line 62
    iput-object p2, p0, Lcom/google/googlejavaformat/Indent$If;->thenIndent:Lcom/google/googlejavaformat/Indent;

    .line 63
    iput-object p3, p0, Lcom/google/googlejavaformat/Indent$If;->elseIndent:Lcom/google/googlejavaformat/Indent;

    .line 64
    return-void
.end method

.method public static make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;
    .registers 4

    .line 67
    new-instance v0, Lcom/google/googlejavaformat/Indent$If;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlejavaformat/Indent$If;-><init>(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)V

    return-object v0
.end method


# virtual methods
.method eval()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/googlejavaformat/Indent$If;->condition:Lcom/google/googlejavaformat/Output$BreakTag;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Output$BreakTag;->wasBreakTaken()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlejavaformat/Indent$If;->thenIndent:Lcom/google/googlejavaformat/Indent;

    :goto_a
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Indent;->eval()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlejavaformat/Indent$If;->elseIndent:Lcom/google/googlejavaformat/Indent;

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 77
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Indent$If;->condition:Lcom/google/googlejavaformat/Output$BreakTag;

    .line 78
    const-string v2, "condition"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Indent$If;->thenIndent:Lcom/google/googlejavaformat/Indent;

    .line 79
    const-string v2, "thenIndent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Indent$If;->elseIndent:Lcom/google/googlejavaformat/Indent;

    .line 80
    const-string v2, "elseIndent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method
