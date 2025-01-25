.class Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;
.super Lcom/sun/tools/javac/code/Attribute;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnumAttributeProxy"
.end annotation


# instance fields
.field enumType:Lcom/sun/tools/javac/code/Type;

.field enumerator:Lcom/sun/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)V
    .registers 4

    .line 1522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 1523
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumType:Lcom/sun/tools/javac/code/Type;

    .line 1524
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lcom/sun/tools/javac/util/Name;

    .line 1525
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 1528
    check-cast p1, Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;

    invoke-interface {p1, p0}, Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;->visitEnumAttributeProxy(Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;)V

    .line 1529
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*proxy enum*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
