.class public final Lcom/google/googlejavaformat/DocBuilder;
.super Ljava/lang/Object;
.source "DocBuilder.java"


# instance fields
.field private appendLevel:Lcom/google/googlejavaformat/Doc$Level;

.field private final base:Lcom/google/googlejavaformat/Doc$Level;

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/googlejavaformat/Doc$Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v0}, Lcom/google/googlejavaformat/Doc$Level;->make(Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Level;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->base:Lcom/google/googlejavaformat/Doc$Level;

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    .line 42
    iget-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->base:Lcom/google/googlejavaformat/Doc$Level;

    iput-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->appendLevel:Lcom/google/googlejavaformat/Doc$Level;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method add(Lcom/google/googlejavaformat/Doc;)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->appendLevel:Lcom/google/googlejavaformat/Doc$Level;

    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/Doc$Level;->add(Lcom/google/googlejavaformat/Doc;)V

    .line 85
    return-void
.end method

.method breakDoc(Lcom/google/googlejavaformat/Doc$Break;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Level;

    iput-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->appendLevel:Lcom/google/googlejavaformat/Doc$Level;

    .line 94
    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/Doc$Level;->add(Lcom/google/googlejavaformat/Doc;)V

    .line 95
    return-void
.end method

.method public build()Lcom/google/googlejavaformat/Doc;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->base:Lcom/google/googlejavaformat/Doc$Level;

    return-object v0
.end method

.method close()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Level;

    .line 75
    iget-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/Doc$Level;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/Doc$Level;->add(Lcom/google/googlejavaformat/Doc;)V

    .line 76
    return-void
.end method

.method open(Lcom/google/googlejavaformat/Indent;)V
    .registers 4

    .line 68
    invoke-static {p1}, Lcom/google/googlejavaformat/Doc$Level;->make(Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Level;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 108
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->base:Lcom/google/googlejavaformat/Doc$Level;

    .line 109
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    .line 110
    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/DocBuilder;->appendLevel:Lcom/google/googlejavaformat/Doc$Level;

    .line 111
    const-string v2, "appendLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public withOps(Ljava/util/List;)Lcom/google/googlejavaformat/DocBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;)",
            "Lcom/google/googlejavaformat/DocBuilder;"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 57
    invoke-interface {v0, p0}, Lcom/google/googlejavaformat/Op;->add(Lcom/google/googlejavaformat/DocBuilder;)V

    goto :goto_4

    .line 59
    :cond_14
    return-object p0
.end method
