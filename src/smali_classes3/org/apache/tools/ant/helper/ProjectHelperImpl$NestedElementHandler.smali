.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NestedElementHandler"
.end annotation


# instance fields
.field private child:Ljava/lang/Object;

.field private childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

.field private parent:Ljava/lang/Object;

.field private parentWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

.field private target:Lorg/apache/tools/ant/Target;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V
    .registers 7

    .line 840
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 842
    instance-of v0, p3, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_0

    .line 843
    check-cast p3, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p3}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parent:Ljava/lang/Object;

    .line 847
    :goto_0
    iput-object p4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parentWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 848
    iput-object p5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->target:Lorg/apache/tools/ant/Target;

    .line 849
    return-void

    .line 845
    :cond_0
    iput-object p3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parent:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    .line 900
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    .line 901
    return-void
.end method

.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    .line 872
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 873
    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parent:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v2, :cond_0

    .line 874
    new-instance v2, Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 876
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parent:Ljava/lang/Object;

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    .line 877
    iput-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;

    .line 881
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$800(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V

    .line 883
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 884
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttributes(Lorg/xml/sax/AttributeList;)V

    .line 885
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parentWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 888
    return-void

    .line 879
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->parent:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->createElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v3}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/tools/ant/TaskContainer;

    if-eqz v0, :cond_0

    .line 920
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;

    check-cast v3, Lorg/apache/tools/ant/TaskContainer;

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->target:Lorg/apache/tools/ant/Target;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/TaskContainer;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    .line 921
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 926
    :goto_0
    return-void

    .line 923
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->child:Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->childWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->target:Lorg/apache/tools/ant/Target;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_0
.end method
