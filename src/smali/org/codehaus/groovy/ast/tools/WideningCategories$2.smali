.class final Lorg/codehaus/groovy/ast/tools/WideningCategories$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/ast/tools/WideningCategories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/codehaus/groovy/ast/ClassNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/codehaus/groovy/ast/ClassNode;

    check-cast p2, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/ast/tools/WideningCategories$2;->j6(Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)I

    move-result v0

    return v0
.end method

.method public j6(Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)I
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->u7()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->u7()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    array-length v3, v3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->tp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->tp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    if-ge v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
