.class final Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;
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

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode$1;->j6(Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)I

    move-result v0

    return v0
.end method

.method public j6(Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)I
    .registers 5

    instance-of v0, p1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    invoke-static {p1}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->j6(Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    instance-of v1, p2, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    if-eqz v1, :cond_1

    check-cast p2, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    invoke-static {p2}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->j6(Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
