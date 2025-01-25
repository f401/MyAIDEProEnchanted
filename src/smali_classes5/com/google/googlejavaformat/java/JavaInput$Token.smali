.class final Lcom/google/googlejavaformat/java/JavaInput$Token;
.super Ljava/lang/Object;
.source "JavaInput.java"

# interfaces
.implements Lcom/google/googlejavaformat/Input$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Token"
.end annotation


# instance fields
.field private final tok:Lcom/google/googlejavaformat/java/JavaInput$Tok;

.field private final toksAfter:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation
.end field

.field private final toksBefore:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInput$Tok;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)V"
        }
    .end annotation

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->toksBefore:Lcom/google/common/collect/ImmutableList;

    .line 638
    iput-object p2, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->tok:Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 639
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->toksAfter:Lcom/google/common/collect/ImmutableList;

    .line 640
    return-void
.end method


# virtual methods
.method public bridge synthetic getTok()Lcom/google/googlejavaformat/Input$Tok;
    .registers 2

    .line 624
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput$Token;->getTok()Lcom/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object v0

    return-object v0
.end method

.method public getTok()Lcom/google/googlejavaformat/java/JavaInput$Tok;
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->tok:Lcom/google/googlejavaformat/java/JavaInput$Tok;

    return-object v0
.end method

.method public getToksAfter()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->toksAfter:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getToksBefore()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->toksBefore:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 674
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->tok:Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 675
    const-string v2, "tok"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->toksBefore:Lcom/google/common/collect/ImmutableList;

    .line 676
    const-string v2, "toksBefore"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInput$Token;->toksAfter:Lcom/google/common/collect/ImmutableList;

    .line 677
    const-string v2, "toksAfter"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    return-object v0
.end method
