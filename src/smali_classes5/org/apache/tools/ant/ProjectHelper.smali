.class public Lorg/apache/tools/ant/ProjectHelper;
.super Ljava/lang/Object;
.source "ProjectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
    }
.end annotation


# static fields
.field public static final ANTLIB_URI:Ljava/lang/String; = "antlib:"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANT_ATTRIBUTE_URI:Ljava/lang/String; = "ant:attribute"

.field public static final ANT_CORE_URI:Ljava/lang/String; = "antlib:org.apache.tools.ant"

.field public static final ANT_CURRENT_URI:Ljava/lang/String; = "ant:current"

.field public static final ANT_TYPE:Ljava/lang/String; = "ant-type"

.field public static final HELPER_PROPERTY:Ljava/lang/String; = "org.apache.tools.ant.ProjectHelper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROJECTHELPER_REFERENCE:Ljava/lang/String; = "ant.projectHelper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.tools.ant.ProjectHelper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USE_PROJECT_NAME_AS_TARGET_PREFIX:Ljava/lang/String; = "USE_PROJECT_NAME_AS_TARGET_PREFIX"

.field private static final inIncludeMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final prefixSeparator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final targetPrefix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extensionStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private importStack:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 191
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/ProjectHelper;->targetPrefix:Ljava/lang/ThreadLocal;

    .line 216
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/ProjectHelper;->prefixSeparator:Ljava/lang/ThreadLocal;

    .line 240
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda1;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/ProjectHelper;->inIncludeMode:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->importStack:Ljava/util/Vector;

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->extensionStack:Ljava/util/List;

    return-void
.end method

.method public static addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;
    .registers 7

    .line 566
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 582
    :cond_c
    :goto_c
    return-object p0

    .line 569
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 570
    const-string v2, "The following error occurred while executing this line:%n%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 572
    instance-of v0, p0, Lorg/apache/tools/ant/ExitStatusException;

    if-eqz v0, :cond_40

    .line 573
    check-cast p0, Lorg/apache/tools/ant/ExitStatusException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/ExitStatusException;->getStatus()I

    move-result v0

    .line 574
    if-nez p1, :cond_3a

    .line 575
    new-instance p0, Lorg/apache/tools/ant/ExitStatusException;

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;I)V

    goto :goto_c

    .line 577
    :cond_3a
    new-instance p0, Lorg/apache/tools/ant/ExitStatusException;

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V

    goto :goto_c

    .line 579
    :cond_40
    if-nez p1, :cond_49

    .line 580
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_c

    .line 582
    :cond_49
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    move-object p0, v0

    goto :goto_c
.end method

.method public static addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 391
    if-nez p2, :cond_3

    .line 398
    :goto_2
    return-void

    .line 394
    :cond_3
    instance-of v0, p1, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_d

    .line 395
    check-cast p1, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p1}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object p1

    .line 397
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;[CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/ProjectHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public static configure(Ljava/lang/Object;Lorg/xml/sax/AttributeList;Lorg/apache/tools/ant/Project;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    instance-of v0, p0, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_a

    .line 338
    check-cast p0, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p0}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object p0

    .line 340
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v2

    .line 342
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v3

    move v1, v0

    :goto_18
    if-ge v1, v3, :cond_45

    .line 344
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v4

    invoke-static {p2, v0, v4}, Lorg/apache/tools/ant/ProjectHelper;->replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :try_start_26
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, p0, v4, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_26 .. :try_end_33} :catch_37

    .line 342
    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 347
    :catch_37
    move-exception v0

    .line 349
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 350
    throw v0

    .line 354
    :cond_45
    return-void
.end method

.method public static configureProject(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 102
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperForBuildFile(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;

    move-result-object v0

    .line 103
    const-string v1, "ant.projectHelper"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/ProjectHelper;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public static extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 538
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 539
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 542
    :goto_9
    return-object p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 521
    if-nez p0, :cond_5

    .line 522
    const-string v0, ""

    .line 528
    :goto_4
    return-object v0

    .line 524
    :cond_5
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 525
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 526
    const-string v0, ""

    goto :goto_4

    .line 528
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 508
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "antlib:org.apache.tools.ant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 511
    :cond_10
    :goto_10
    return-object p1

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->isContextLoaderAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getCurrentPrefixSeparator()Ljava/lang/String;
    .registers 1

    .line 227
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->prefixSeparator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentTargetPrefix()Ljava/lang/String;
    .registers 1

    .line 203
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->targetPrefix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getProjectHelper()Lorg/apache/tools/ant/ProjectHelper;
    .registers 1

    .line 299
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    return-object v0
.end method

.method public static isInIncludeMode()Z
    .registers 2

    .line 259
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lorg/apache/tools/ant/ProjectHelper;->inIncludeMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .registers 1

    .line 216
    const-string v0, "."

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/Boolean;
    .registers 1

    .line 240
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static nsToComponentName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute namespace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parsePropertyString(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->parsePropertyStringDefault(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 496
    return-void
.end method

.method public static replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->replaceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentPrefixSeparator(Ljava/lang/String;)V
    .registers 2

    .line 237
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->prefixSeparator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public static setCurrentTargetPrefix(Ljava/lang/String;)V
    .registers 2

    .line 213
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->targetPrefix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public static setInIncludeMode(Z)V
    .registers 3

    .line 270
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->inIncludeMode:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public static storeChild(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    .line 415
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->storeElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    return-void
.end method


# virtual methods
.method public canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public canParseBuildFile(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultBuildFile()Ljava/lang/String;
    .registers 2

    .line 643
    const-string v0, "build.xml"

    return-object v0
.end method

.method public getExtensionStack()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->extensionStack:Ljava/util/List;

    return-object v0
.end method

.method public getImportStack()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->importStack:Ljava/util/Vector;

    return-object v0
.end method

.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectHelper.parse() must be implemented in a helper plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseAntlibDescriptor(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/UnknownElement;
    .registers 5

    .line 620
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t parse antlib descriptors"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveExtensionOfAttributes(Lorg/apache/tools/ant/Project;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 667
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 668
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 669
    aget-object v3, v0, v7

    .line 670
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    move-result-object v4

    .line 674
    array-length v5, v0

    if-le v5, v8, :cond_76

    aget-object v0, v0, v8

    .line 677
    :goto_27
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v5

    .line 678
    if-nez v0, :cond_78

    .line 681
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 698
    :cond_33
    :goto_33
    if-nez v0, :cond_9c

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t add target "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to extension-point "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because the extension-point is unknown."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    if-eq v4, v0, :cond_96

    .line 704
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->WARN:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    if-ne v4, v0, :cond_a

    .line 705
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v7}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    goto :goto_a

    .line 674
    :cond_76
    const/4 v0, 0x0

    goto :goto_27

    .line 691
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 692
    if-nez v0, :cond_33

    .line 693
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    goto :goto_33

    .line 703
    :cond_96
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_9c
    instance-of v4, v0, Lorg/apache/tools/ant/ExtensionPoint;

    if-eqz v4, :cond_a5

    .line 713
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 710
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "referenced target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not an extension-point"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 716
    :cond_c1
    return-void
.end method
