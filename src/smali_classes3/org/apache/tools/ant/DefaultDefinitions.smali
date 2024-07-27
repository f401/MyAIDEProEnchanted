.class public final Lorg/apache/tools/ant/DefaultDefinitions;
.super Ljava/lang/Object;
.source "DefaultDefinitions.java"


# static fields
.field private static final IF_NAMESPACE:Ljava/lang/String; = "ant:if"

.field private static final UNLESS_NAMESPACE:Ljava/lang/String; = "ant:unless"


# instance fields
.field private final componentHelper:Lorg/apache/tools/ant/ComponentHelper;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/ComponentHelper;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/tools/ant/DefaultDefinitions;->componentHelper:Lorg/apache/tools/ant/ComponentHelper;

    .line 37
    return-void
.end method

.method private attributeNamespaceDef(Ljava/lang/String;)V
    .registers 4

    .line 52
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->nsToComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 54
    const-string v1, "org.apache.tools.ant.attribute.AttributeNamespace"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 57
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultDefinitions;->componentHelper:Lorg/apache/tools/ant/ComponentHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 58
    return-void
.end method

.method private componentDef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 67
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 68
    invoke-static {p1, p2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 72
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultDefinitions;->componentHelper:Lorg/apache/tools/ant/ComponentHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 73
    return-void
.end method

.method private ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.apache.tools.ant.attribute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "ant:if"

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/tools/ant/DefaultDefinitions;->componentDef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$Unless"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ant:unless"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->componentDef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 43
    const-string v0, "ant:if"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DefaultDefinitions;->attributeNamespaceDef(Ljava/lang/String;)V

    .line 44
    const-string v0, "ant:unless"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DefaultDefinitions;->attributeNamespaceDef(Ljava/lang/String;)V

    .line 46
    const-string v0, "true"

    const-string v1, "IfTrueAttribute"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "set"

    const-string v1, "IfSetAttribute"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "blank"

    const-string v1, "IfBlankAttribute"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
