.class Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;
.super Lcom/sun/tools/javac/code/Attribute;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundAnnotationProxy"
.end annotation


# instance fields
.field final values:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;>;)V"
        }
    .end annotation

    .line 1563
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 1564
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->values:Lcom/sun/tools/javac/util/List;

    .line 1565
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 1568
    check-cast p1, Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;

    invoke-interface {p1, p0}, Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;->visitCompoundAnnotationProxy(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V

    .line 1569
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1574
    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1576
    const-string v0, "/*proxy*/{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    const/4 v1, 0x1

    .line 1578
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->values:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    .line 1579
    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 1581
    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    :cond_0
    const/4 v3, 0x0

    .line 1583
    iget-object v1, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1584
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1579
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move v1, v3

    goto :goto_0

    .line 1587
    :cond_1
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
