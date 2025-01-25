.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->attributes:Ljava/util/List;

    .line 1458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->features:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;)V
    .registers 3

    .line 1480
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    return-void
.end method

.method public addFeature(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;)V
    .registers 3

    .line 1497
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    return-void
.end method

.method public getAttributes()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;",
            ">;"
        }
    .end annotation

    .line 1488
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->attributes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;",
            ">;"
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->features:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1464
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1472
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->name:Ljava/lang/String;

    .line 1473
    return-void
.end method
