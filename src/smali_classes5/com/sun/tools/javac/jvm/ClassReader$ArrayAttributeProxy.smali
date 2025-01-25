.class Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;
.super Lcom/sun/tools/javac/code/Attribute;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayAttributeProxy"
.end annotation


# instance fields
.field values:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 1541
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 1542
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;->values:Lcom/sun/tools/javac/util/List;

    .line 1543
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 1546
    check-cast p1, Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;

    invoke-interface {p1, p0}, Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;->visitArrayAttributeProxy(Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;)V

    .line 1547
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
