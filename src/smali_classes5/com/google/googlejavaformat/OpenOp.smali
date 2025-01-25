.class public final Lcom/google/googlejavaformat/OpenOp;
.super Ljava/lang/Object;
.source "OpenOp.java"

# interfaces
.implements Lcom/google/googlejavaformat/Op;


# instance fields
.field private final plusIndent:Lcom/google/googlejavaformat/Indent;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/Indent;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/googlejavaformat/OpenOp;->plusIndent:Lcom/google/googlejavaformat/Indent;

    .line 30
    return-void
.end method

.method public static make(Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Op;
    .registers 2

    .line 39
    new-instance v0, Lcom/google/googlejavaformat/OpenOp;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/OpenOp;-><init>(Lcom/google/googlejavaformat/Indent;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/googlejavaformat/DocBuilder;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/google/googlejavaformat/OpenOp;->plusIndent:Lcom/google/googlejavaformat/Indent;

    invoke-virtual {p1, v0}, Lcom/google/googlejavaformat/DocBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 49
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "plusIndent"

    iget-object v2, p0, Lcom/google/googlejavaformat/OpenOp;->plusIndent:Lcom/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
