.class public Lorg/apache/tools/ant/taskdefs/Property;
.super Lorg/apache/tools/ant/Task;
.source "Property.java"


# instance fields
.field private basedir:Ljava/io/File;

.field protected classpath:Lorg/apache/tools/ant/types/Path;

.field protected env:Ljava/lang/String;

.field private fallback:Lorg/apache/tools/ant/Project;

.field protected file:Ljava/io/File;

.field protected name:Ljava/lang/String;

.field protected prefix:Ljava/lang/String;

.field private prefixValues:Z

.field protected ref:Lorg/apache/tools/ant/types/Reference;

.field private relative:Z

.field protected resource:Ljava/lang/String;

.field private runtime:Ljava/lang/String;

.field private untypedValue:Ljava/lang/Object;

.field protected url:Ljava/net/URL;

.field protected userProperty:Z

.field protected value:Ljava/lang/String;

.field private valueAttributeUsed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;-><init>(Z)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Property;-><init>(ZLorg/apache/tools/ant/Project;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(ZLorg/apache/tools/ant/Project;)V
    .registers 4

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 97
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->valueAttributeUsed:Z

    .line 98
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->relative:Z

    .line 100
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefixValues:Z

    .line 129
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->userProperty:Z

    .line 130
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Property;->fallback:Lorg/apache/tools/ant/Project;

    .line 131
    return-void
.end method

.method private internalSetValue(Ljava/lang/Object;)V
    .registers 3

    .line 199
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->untypedValue:Ljava/lang/Object;

    .line 201
    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->value:Ljava/lang/String;

    .line 202
    return-void

    .line 201
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method static synthetic lambda$addProperties$0(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 714
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 715
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_9
    return-void
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    if-eqz p3, :cond_6

    .line 614
    invoke-virtual {p1, p2}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V

    .line 619
    :goto_5
    return-void

    .line 617
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto :goto_5
.end method

.method private resolveAllProperties(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 760
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 763
    new-instance v2, Lorg/apache/tools/ant/property/ResolvePropertyMap;

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/property/ResolvePropertyMap;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/property/GetProperty;Ljava/util/Collection;)V

    .line 764
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getPrefixValues()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 765
    return-void
.end method


# virtual methods
.method protected addProperties(Ljava/util/Properties;)V
    .registers 4

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 713
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V

    .line 718
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->resolveAllProperties(Ljava/util/Map;)V

    .line 719
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Property$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Property;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 723
    return-void
.end method

.method protected addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 741
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 742
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->userProperty:Z

    if-eqz v1, :cond_2c

    .line 743
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 744
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    :goto_15
    return-void

    .line 746
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override ignored for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    goto :goto_15

    .line 749
    :cond_2c
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method protected addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 731
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Property;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 732
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 5

    .line 220
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->valueAttributeUsed:Z

    if-nez v0, :cond_25

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_21

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_21
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->internalSetValue(Ljava/lang/Object;)V

    .line 230
    :cond_24
    return-void

    .line 227
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 228
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t combine nested text with value attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 449
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 451
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 506
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->name:Ljava/lang/String;

    if-eqz v1, :cond_8f

    .line 507
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->untypedValue:Ljava/lang/Object;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->ref:Lorg/apache/tools/ant/types/Reference;

    if-eqz v0, :cond_83

    .line 521
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->url:Ljava/net/URL;

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->file:Ljava/io/File;

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->resource:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    if-nez v0, :cond_af

    .line 527
    :cond_22
    if-eqz v1, :cond_48

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->untypedValue:Ljava/lang/Object;

    if-eqz v0, :cond_48

    .line 528
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Property;->relative:Z

    if-eqz v2, :cond_de

    .line 531
    :try_start_2c
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_bb

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    .line 533
    :goto_33
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->basedir:Ljava/io/File;

    if-eqz v0, :cond_c9

    .line 534
    :goto_37
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 535
    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Property;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_48} :catch_d3

    .line 545
    :cond_48
    :goto_48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->file:Ljava/io/File;

    if-eqz v0, :cond_4f

    .line 546
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->loadFile(Ljava/io/File;)V

    .line 549
    :cond_4f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->url:Ljava/net/URL;

    if-eqz v0, :cond_56

    .line 550
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->loadUrl(Ljava/net/URL;)V

    .line 553
    :cond_56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->resource:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 554
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->loadResource(Ljava/lang/String;)V

    .line 557
    :cond_5d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->env:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 558
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->loadEnvironment(Ljava/lang/String;)V

    .line 561
    :cond_64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->runtime:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 562
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->loadRuntime(Ljava/lang/String;)V

    .line 565
    :cond_6b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->name:Ljava/lang/String;

    if-eqz v0, :cond_82

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->ref:Lorg/apache/tools/ant/types/Reference;

    if-eqz v1, :cond_82

    .line 567
    :try_start_73
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_73 .. :try_end_82} :catch_e3

    .line 578
    :cond_82
    :goto_82
    return-void

    .line 508
    :cond_83
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify value, location or refid with the name attribute"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 513
    :cond_8f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->url:Ljava/net/URL;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->file:Ljava/io/File;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->resource:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->env:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->runtime:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 515
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify url, file, resource, environment or runtime when not using the name attribute"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 522
    :cond_af
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Prefix is only valid when loading from a url, file or resource"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 532
    :cond_bb
    :try_start_bb
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->untypedValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_33

    .line 533
    :cond_c9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d0} :catch_d3

    move-result-object v0

    goto/16 :goto_37

    .line 537
    :catch_d3
    move-exception v0

    .line 538
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 541
    :cond_de
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Property;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 569
    :catch_e3
    move-exception v0

    .line 570
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->fallback:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_f8

    .line 571
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Property;->ref:Lorg/apache/tools/ant/types/Reference;

    .line 572
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 574
    :cond_f8
    throw v0

    .line 503
    :cond_f9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "project has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .registers 2

    .line 392
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->env:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixValues()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefixValues:Z

    return v0
.end method

.method public getRefid()Lorg/apache/tools/ant/types/Reference;
    .registers 2

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->ref:Lorg/apache/tools/ant/types/Reference;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntime()Ljava/lang/String;
    .registers 2

    .line 428
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->runtime:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .registers 2

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->value:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$addProperties$1$Property(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 720
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 721
    :goto_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Property;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    return-void

    .line 720
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method protected loadEnvironment(Ljava/lang/String;)V
    .registers 7

    .line 675
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 676
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 679
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Environment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    .line 680
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 684
    :cond_69
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V

    .line 685
    return-void
.end method

.method protected loadFile(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x3

    .line 627
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    .line 630
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 631
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2e} :catch_4c

    move-result-object v1

    .line 632
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Property;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Z)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_45

    .line 633
    if-eqz v1, :cond_41

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 634
    :cond_41
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_4c

    .line 641
    :goto_44
    return-void

    .line 631
    :catchall_45
    move-exception v0

    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_71

    :cond_4b
    :goto_4b
    :try_start_4b
    throw v0
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 639
    :catch_4c
    move-exception v0

    .line 640
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 636
    :cond_57
    :try_start_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find property file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_70} :catch_4c

    goto :goto_44

    .line 631
    :catchall_71
    move-exception v1

    goto :goto_4b
.end method

.method protected loadResource(Ljava/lang/String;)V
    .registers 6

    .line 649
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource Loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    .line 651
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_55

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 653
    :goto_26
    if-nez v0, :cond_60

    :try_start_28
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_7a
    .catchall {:try_start_28 .. :try_end_2b} :catchall_85

    move-result-object v1

    move-object v2, v1

    .line 655
    :goto_2d
    if-nez v2, :cond_66

    .line 656
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_73

    .line 661
    :goto_44
    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_7a
    .catchall {:try_start_46 .. :try_end_49} :catchall_85

    .line 664
    :cond_49
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_54

    if-eqz v0, :cond_54

    .line 665
    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 668
    :cond_54
    return-void

    .line 652
    :cond_55
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    goto :goto_26

    .line 654
    :cond_60
    :try_start_60
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_7a
    .catchall {:try_start_60 .. :try_end_63} :catchall_85

    move-result-object v1

    move-object v2, v1

    goto :goto_2d

    .line 658
    :cond_66
    :try_start_66
    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v3, v2, v1}, Lorg/apache/tools/ant/taskdefs/Property;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Z)V

    .line 659
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_73

    goto :goto_44

    .line 653
    :catchall_73
    move-exception v1

    if-eqz v2, :cond_79

    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_92

    :cond_79
    :goto_79
    :try_start_79
    throw v1
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7a} :catch_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_85

    .line 661
    :catch_7a
    move-exception v1

    .line 662
    :try_start_7b
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_85

    .line 664
    :catchall_85
    move-exception v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_91

    if-eqz v0, :cond_91

    .line 665
    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 667
    :cond_91
    throw v1

    .line 653
    :catchall_92
    move-exception v2

    goto :goto_79
.end method

.method protected loadRuntime(Ljava/lang/String;)V
    .registers 8

    .line 693
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 694
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 697
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Runtime properties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    .line 698
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "availableProcessors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "freeMemory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "maxMemory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "totalMemory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V

    .line 704
    return-void
.end method

.method protected loadUrl(Ljava/net/URL;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    .line 589
    :try_start_1a
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3b

    move-result-object v1

    .line 590
    :try_start_1e
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Property;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Z)V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_34

    .line 591
    if-eqz v1, :cond_30

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 592
    :cond_30
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_3b

    .line 595
    return-void

    .line 589
    :catchall_34
    move-exception v0

    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_46

    :cond_3a
    :goto_3a
    :try_start_3a
    throw v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 593
    :catch_3b
    move-exception v0

    .line 594
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 589
    :catchall_46
    move-exception v1

    goto :goto_3a
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->basedir:Ljava/io/File;

    .line 149
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 437
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 441
    :goto_6
    return-void

    .line 439
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 460
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Property;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 461
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->env:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->file:Ljava/io/File;

    .line 248
    return-void
.end method

.method public setLocation(Ljava/io/File;)V
    .registers 3

    .line 178
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->relative:Z

    if-eqz v0, :cond_8

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Property;->internalSetValue(Ljava/lang/Object;)V

    .line 183
    :goto_7
    return-void

    .line 181
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setValue(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->name:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4

    .line 284
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    .line 285
    if-eqz p1, :cond_21

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefix:Ljava/lang/String;

    .line 288
    :cond_21
    return-void
.end method

.method public setPrefixValues(Z)V
    .registers 2

    .line 307
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->prefixValues:Z

    .line 308
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->ref:Lorg/apache/tools/ant/types/Reference;

    .line 332
    return-void
.end method

.method public setRelative(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->relative:Z

    .line 140
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->resource:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setRuntime(Ljava/lang/String;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->runtime:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Property;->url:Ljava/net/URL;

    .line 266
    return-void
.end method

.method public setUserProperty(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    const-string v0, "DEPRECATED: Ignoring request to set user property in Property task."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->log(Ljava/lang/String;I)V

    .line 483
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->valueAttributeUsed:Z

    .line 195
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Property;->internalSetValue(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Property;->setValue(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 491
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Property;->value:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method
