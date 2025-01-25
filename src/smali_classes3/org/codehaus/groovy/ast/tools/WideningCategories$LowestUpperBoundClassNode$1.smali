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
        "Ljava/util/Comparator<",
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
    .registers 3

    check-cast p1, Lorg/codehaus/groovy/ast/ClassNode;

    check-cast p2, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode$1;->j6(Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)I

    move-result p1

    return p1
.end method

.method public j6(Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)I
    .registers 4

    instance-of v0, p1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    invoke-static {p1}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->j6(Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_f
    instance-of v0, p2, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    if-eqz v0, :cond_1a

    check-cast p2, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    invoke-static {p2}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->j6(Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1e

    :cond_1a
    invoke-virtual {p2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_1e
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
