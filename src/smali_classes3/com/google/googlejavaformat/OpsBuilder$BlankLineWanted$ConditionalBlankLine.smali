.class final Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;
.super Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.source "OpsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConditionalBlankLine"
.end annotation


# instance fields
.field private final tags:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    .line 618
    invoke-direct {p0}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;-><init>()V

    .line 619
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/ImmutableList;

    .line 620
    return-void
.end method


# virtual methods
.method public merge(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .registers 4

    .line 634
    instance-of v0, p1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    if-nez v0, :cond_0

    .line 637
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/ImmutableList;

    check-cast p1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    iget-object v1, p1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/ImmutableList;

    .line 638
    new-instance p1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public wanted()Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Output$BreakTag;

    .line 625
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Output$BreakTag;->wasBreakTaken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method
