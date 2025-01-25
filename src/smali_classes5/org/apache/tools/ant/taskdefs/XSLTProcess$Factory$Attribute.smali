.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "XSLTProcess.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1518
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1549
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1531
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 1538
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1562
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1563
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->name:Ljava/lang/String;

    .line 1588
    :goto_a
    return-void

    .line 1564
    :cond_b
    const-string v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1567
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1568
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_a

    .line 1569
    :cond_20
    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1570
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_a

    .line 1573
    :cond_2d
    :try_start_2d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_a

    .line 1574
    :catch_34
    move-exception v0

    .line 1575
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_a

    .line 1578
    :cond_38
    const-string v0, "valueref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1579
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_a

    .line 1580
    :cond_4b
    const-string v0, "classloaderforpath"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1581
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 1583
    new-instance v1, Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/apache/tools/ant/types/Reference;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 1582
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->value:Ljava/lang/Object;

    goto :goto_a

    .line 1586
    :cond_67
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unsupported attribute: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
