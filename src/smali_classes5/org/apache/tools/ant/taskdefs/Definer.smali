.class public abstract Lorg/apache/tools/ant/taskdefs/Definer;
.super Lorg/apache/tools/ant/taskdefs/DefBase;
.source "Definer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Definer$Format;,
        Lorg/apache/tools/ant/taskdefs/Definer$OnError;
    }
.end annotation


# static fields
.field private static final ANTLIB_XML:Ljava/lang/String; = "/antlib.xml"

.field private static final RESOURCE_STACK:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Lorg/apache/tools/ant/Location;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adaptTo:Ljava/lang/String;

.field private adaptToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private adapter:Ljava/lang/String;

.field private adapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private classname:Ljava/lang/String;

.field private definerSet:Z

.field private file:Ljava/io/File;

.field private format:I

.field private name:Ljava/lang/String;

.field private onError:I

.field private resource:Ljava/lang/String;

.field private restrict:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Definer$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Definer$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Definer;->RESOURCE_STACK:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;-><init>()V

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->restrict:Z

    .line 65
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->format:I

    .line 66
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 67
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    return-void
.end method

.method private fileToURL()Ljava/net/URL;
    .registers 5

    const/4 v1, 0x0

    .line 317
    .line 318
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_87

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_21
    if-nez v0, :cond_43

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_43

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_43
    if-nez v0, :cond_70

    .line 326
    :try_start_45
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_50

    move-result-object v0

    .line 341
    :goto_4f
    return-object v0

    .line 327
    :catch_50
    move-exception v0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot use as URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_70
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    packed-switch v2, :pswitch_data_8a

    :goto_75
    move-object v0, v1

    .line 341
    goto :goto_4f

    .line 336
    :pswitch_77  #0x3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :pswitch_7d  #0x2
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_75

    .line 340
    :pswitch_82  #0x0, 0x1
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_75

    :cond_87
    move-object v0, v1

    goto :goto_21

    .line 334
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_82  #00000000
        :pswitch_82  #00000001
        :pswitch_7d  #00000002
        :pswitch_77  #00000003
    .end packed-switch
.end method

.method private loadAntlib(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .registers 5

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Antlib;->createAntlib(Lorg/apache/tools/ant/Project;Ljava/net/URL;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Antlib;

    move-result-object v0

    .line 417
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Antlib;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Antlib;->setURI(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Antlib;->execute()V
    :try_end_19
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 423
    return-void

    .line 420
    :catch_1a
    move-exception v0

    .line 421
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static makeResourceFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 291
    const-string v0, "antlib:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 296
    const-string v1, "//"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/antlib.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_35
    :goto_35
    return-object v0

    .line 303
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/antlib.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method private resourceToURLs(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 356
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_3a

    move-result-object v0

    .line 361
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_29

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load definitions from resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". It could not be found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    packed-switch v2, :pswitch_data_58

    .line 380
    :cond_29
    :goto_29
    return-object v0

    .line 367
    :pswitch_2a  #0x3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_30  #0x2
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_29

    .line 370
    :pswitch_35  #0x0, 0x1
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_29

    .line 357
    :catch_3a
    move-exception v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not fetch resources named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 365
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_35  #00000000
        :pswitch_35  #00000001
        :pswitch_30  #00000002
        :pswitch_2a  #00000003
    .end packed-switch
.end method

.method private tooManyDefinitions()V
    .registers 4

    .line 626
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of the attributes name, file and resource can be set"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method protected addDefinition(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x1

    .line 563
    const/4 v0, 0x0

    .line 566
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    .line 569
    const/4 v0, 0x1

    invoke-static {p3, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 572
    :cond_14
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapter:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 573
    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapterClass:Ljava/lang/Class;

    .line 576
    :cond_1f
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptTo:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 577
    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptToClass:Ljava/lang/Class;

    .line 580
    :cond_2a
    new-instance v2, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v2}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 581
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2, p3}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 584
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapterClass:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdapterClass(Ljava/lang/Class;)V

    .line 585
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptToClass:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdaptToClass(Ljava/lang/Class;)V

    .line 586
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->restrict:Z

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 587
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 588
    if-eqz v0, :cond_53

    .line 589
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->checkClass(Lorg/apache/tools/ant/Project;)V

    .line 591
    :cond_53
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 592
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5e} :catch_b8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_5e} :catch_5f
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_5e} :catch_96

    .line 619
    :goto_5e
    return-void

    .line 598
    :catch_5f
    move-exception v0

    .line 599
    :try_start_60
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " A class needed by class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n using the classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_96
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_60 .. :try_end_96} :catch_96

    .line 605
    :catch_96
    move-exception v0

    .line 606
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    packed-switch v1, :pswitch_data_106

    .line 615
    :pswitch_9c  #0x2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_5e

    .line 593
    :catch_b8
    move-exception v0

    .line 594
    :try_start_b9
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be found\n using the classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_e3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_b9 .. :try_end_e3} :catch_96

    .line 611
    :pswitch_e3  #0x1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto/16 :goto_5e

    .line 609
    :pswitch_104  #0x0, 0x3
    throw v0

    .line 606
    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_104  #00000000
        :pswitch_e3  #00000001
        :pswitch_9c  #00000002
        :pswitch_104  #00000003
    .end packed-switch
.end method

.method public execute()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    .line 206
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 208
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-nez v0, :cond_26

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "antlib:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 222
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Definer;->makeResourceFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Definer;->setResource(Ljava/lang/String;)V

    .line 231
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    if-eqz v0, :cond_9a

    .line 232
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    if-eqz v1, :cond_76

    .line 236
    invoke-virtual {p0, v4, v0, v1}, Lorg/apache/tools/ant/taskdefs/Definer;->addDefinition(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_31
    :goto_31
    return-void

    .line 225
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only antlib URIs can be located from the URI alone, not the URI \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name, file or resource attribute of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is undefined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 233
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "classname attribute of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " element is undefined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 238
    :cond_9a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    if-nez v0, :cond_14a

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    if-nez v0, :cond_d0

    .line 245
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Definer;->resourceToURLs(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;

    move-result-object v0

    move-object v2, v0

    .line 254
    :goto_a7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 255
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/net/URL;

    .line 257
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->format:I

    .line 258
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    move v0, v3

    .line 262
    :cond_c9
    if-nez v0, :cond_e0

    .line 263
    invoke-virtual {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/Definer;->loadProperties(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    goto/16 :goto_31

    .line 247
    :cond_d0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->fileToURL()Ljava/net/URL;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_31

    .line 251
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    move-object v2, v0

    goto :goto_a7

    .line 265
    :cond_e0
    sget-object v5, Lorg/apache/tools/ant/taskdefs/Definer;->RESOURCE_STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_121

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Warning: Recursive loading of "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ignored at "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " originally loaded at "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_a7

    .line 274
    :cond_121
    :try_start_121
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/Definer;->loadAntlib(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    :try_end_131
    .catchall {:try_start_121 .. :try_end_131} :catchall_13c

    .line 277
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a7

    :catchall_13c
    move-exception v0

    move-object v2, v0

    sget-object v0, Lorg/apache/tools/ant/taskdefs/Definer;->RESOURCE_STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    throw v2

    .line 239
    :cond_14a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not specify classname together with file or resource."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getClassname()Ljava/lang/String;
    .registers 2

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    return-object v0
.end method

.method protected loadProperties(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .registers 8

    .line 390
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_52

    move-result-object v1

    .line 391
    if-nez v1, :cond_21

    .line 392
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load definitions from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_4b

    .line 403
    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_52

    .line 405
    :cond_20
    :goto_20
    return-void

    .line 396
    :cond_21
    :try_start_21
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 397
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 398
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    .line 400
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    .line 401
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v0}, Lorg/apache/tools/ant/taskdefs/Definer;->addDefinition(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_4b

    goto :goto_31

    .line 390
    :catchall_4b
    move-exception v0

    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_63

    :cond_51
    :goto_51
    :try_start_51
    throw v0
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_52} :catch_52

    .line 403
    :catch_52
    move-exception v0

    .line 404
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 403
    :cond_5d
    if-eqz v1, :cond_20

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_52

    goto :goto_20

    .line 390
    :catchall_63
    move-exception v1

    goto :goto_51
.end method

.method public setAdaptTo(Ljava/lang/String;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptTo:Ljava/lang/String;

    .line 540
    return-void
.end method

.method protected setAdaptToClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptToClass:Ljava/lang/Class;

    .line 551
    return-void
.end method

.method public setAdapter(Ljava/lang/String;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapter:Ljava/lang/String;

    .line 520
    return-void
.end method

.method protected setAdapterClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapterClass:Ljava/lang/Class;

    .line 529
    return-void
.end method

.method public setAntlib(Ljava/lang/String;)V
    .registers 6

    .line 463
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_7

    .line 464
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    .line 466
    :cond_7
    const-string v0, "antlib:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 470
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Definer;->setURI(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "antlib:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/antlib.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 474
    return-void

    .line 467
    :cond_3b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid antlib attribute - it must start with antlib:"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 3

    .line 432
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_7

    .line 433
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    .line 435
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 436
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    .line 437
    return-void
.end method

.method public setFormat(Lorg/apache/tools/ant/taskdefs/Definer$Format;)V
    .registers 3

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Definer$Format;->getIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->format:I

    .line 175
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_7

    .line 482
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    .line 484
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 485
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setOnError(Lorg/apache/tools/ant/taskdefs/Definer$OnError;)V
    .registers 3

    .line 166
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Definer$OnError;->getIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    .line 167
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 3

    .line 445
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_7

    .line 446
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    .line 448
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 449
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    .line 450
    return-void
.end method

.method protected setRestrict(Z)V
    .registers 2

    .line 151
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->restrict:Z

    .line 152
    return-void
.end method
