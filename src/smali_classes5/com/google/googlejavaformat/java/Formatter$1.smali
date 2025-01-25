.class Lcom/google/googlejavaformat/java/Formatter$1;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljavax/tools/Diagnostic",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    .line 98
    check-cast p1, Ljavax/tools/Diagnostic;

    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/Formatter$1;->apply(Ljavax/tools/Diagnostic;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljavax/tools/Diagnostic;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/Diagnostic",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-interface {p1}, Ljavax/tools/Diagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    if-eq v1, v2, :cond_a

    .line 112
    :cond_9
    :goto_9
    return v0

    .line 104
    :cond_a
    invoke-interface {p1}, Ljavax/tools/Diagnostic;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x40a3a528

    if-eq v3, v4, :cond_1c

    :cond_18
    :goto_18
    if-eqz v1, :cond_9

    .line 112
    const/4 v0, 0x1

    goto :goto_9

    .line 104
    :cond_1c
    const-string v3, "compiler.err.invalid.meth.decl.ret.type.req"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v1, v0

    goto :goto_18
.end method
