.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;
.super Ljava/lang/Object;
.source "IPlanetEjbc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;
    }
.end annotation


# static fields
.field private static final ENTITY_BEAN:Ljava/lang/String; = "entity"

.field private static final MAX_NUM_ARGS:I = 0x8

.field private static final MIN_NUM_ARGS:I = 0x2

.field private static final NUM_CLASSES_WITHOUT_IIOP:I = 0x9

.field private static final NUM_CLASSES_WITH_IIOP:I = 0xf

.field private static final STATEFUL_SESSION:Ljava/lang/String; = "stateful"

.field private static final STATELESS_SESSION:Ljava/lang/String; = "stateless"


# instance fields
.field private classpath:Ljava/lang/String;

.field private classpathElements:[Ljava/lang/String;

.field private debugOutput:Z

.field private destDirectory:Ljava/io/File;

.field private displayName:Ljava/lang/String;

.field private ejbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

.field private iasDescriptor:Ljava/io/File;

.field private iasHomeDir:Ljava/io/File;

.field private parser:Ljavax/xml/parsers/SAXParser;

.field private retainSource:Z

.field private stdDescriptor:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .registers 8

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->retainSource:Z

    .line 100
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    .line 107
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->ejbFiles:Ljava/util/Hashtable;

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->stdDescriptor:Ljava/io/File;

    .line 143
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasDescriptor:Ljava/io/File;

    .line 144
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    .line 145
    iput-object p4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpath:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    .line 152
    if-eqz p4, :cond_3b

    .line 153
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpathElements:[Ljava/lang/String;

    .line 158
    :cond_3b
    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->displayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)Ljava/util/Hashtable;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->ejbFiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method private buildArgumentList(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;)[Ljava/lang/String;
    .registers 5

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    if-eqz v1, :cond_e

    .line 503
    const-string v1, "-debug"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_e
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getBeantype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stateless"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 508
    const-string v1, "-sl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getIiop()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 514
    const-string v1, "-iiop"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_2a
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getCmp()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 518
    const-string v1, "-cmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_35
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->retainSource:Z

    if-eqz v1, :cond_3e

    .line 522
    const-string v1, "-gs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_3e
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getHasession()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 526
    const-string v1, "-fo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_49
    const-string v1, "-classpath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v1, "-d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getHome()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;->getQualifiedClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getRemote()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;->getQualifiedClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getImplementation()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;->getQualifiedClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 509
    :cond_8c
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getBeantype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stateful"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 510
    const-string v1, "-sf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private callEjbc([Ljava/lang/String;)V
    .registers 6

    .line 397
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasHomeDir:Ljava/io/File;

    if-nez v0, :cond_65

    .line 398
    const-string v0, ""

    .line 403
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ejbc "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v1, " "

    invoke-static {v1, p1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 416
    :try_start_2f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 417
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;-><init>(Ljava/io/InputStream;)V

    .line 418
    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;-><init>(Ljava/io/InputStream;)V

    .line 419
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;->start()V

    .line 420
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;->start()V

    .line 421
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 422
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_64} :catch_87
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_64} :catch_95

    .line 428
    :goto_64
    return-void

    .line 400
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasHomeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 423
    :catch_87
    move-exception v0

    .line 424
    const-string v1, "An IOException has occurred while trying to execute ejbc."

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 426
    :catch_95
    move-exception v0

    goto :goto_64
.end method

.method private getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->stdDescriptor:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V

    .line 484
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasDescriptor:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getCmpDescriptors$0(I)[Ljava/lang/String;
    .registers 2

    .line 235
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    .line 552
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    if-eqz v0, :cond_9

    .line 553
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    :cond_9
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 248
    .line 255
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    array-length v0, p0

    const/16 v1, 0x8

    if-le v0, v1, :cond_10

    .line 256
    :cond_c
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->usage()V

    .line 325
    :goto_f
    return-void

    .line 260
    :cond_10
    new-instance v1, Ljava/io/File;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-object v0, p0, v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/io/File;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object v3, v4

    move v6, v9

    move v7, v9

    move v8, v9

    .line 263
    :goto_29
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v8, v4, :cond_73

    .line 264
    const-string v4, "-classpath"

    aget-object v9, p0, v8

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 265
    add-int/lit8 v8, v8, 0x1

    aget-object v0, p0, v8

    move v4, v6

    .line 263
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    move v6, v4

    goto :goto_29

    .line 266
    :cond_41
    const-string v4, "-d"

    aget-object v9, p0, v8

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 267
    add-int/lit8 v8, v8, 0x1

    new-instance v3, Ljava/io/File;

    aget-object v4, p0, v8

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v4, v6

    goto :goto_3d

    .line 268
    :cond_56
    const-string v4, "-debug"

    aget-object v9, p0, v8

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    move v4, v5

    .line 269
    goto :goto_3d

    .line 270
    :cond_62
    const-string v4, "-keepsource"

    aget-object v7, p0, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    move v4, v6

    move v7, v5

    .line 271
    goto :goto_3d

    .line 273
    :cond_6f
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->usage()V

    goto :goto_f

    .line 279
    :cond_73
    if-nez v0, :cond_125

    .line 280
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 281
    const-string v4, "java.class.path"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    :goto_7f
    if-nez v3, :cond_90

    .line 289
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 290
    new-instance v3, Ljava/io/File;

    const-string v8, "user.dir"

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    :cond_90
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 297
    :try_start_97
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_111

    move-result-object v5

    .line 304
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 309
    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setDebugOutput(Z)V

    .line 310
    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setRetainSource(Z)V

    .line 314
    :try_start_a6
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->execute()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_ab
    .catch Lorg/xml/sax/SAXException; {:try_start_a6 .. :try_end_a9} :catch_ef
    .catch Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException; {:try_start_a6 .. :try_end_a9} :catch_cd

    goto/16 :goto_f

    .line 315
    :catch_ab
    move-exception v0

    .line 316
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An IOException has occurred while reading the XML descriptors ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 321
    :catch_cd
    move-exception v0

    .line 322
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error has occurred while executing the ejbc utility ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 318
    :catch_ef
    move-exception v0

    .line 319
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A SAXException has occurred while reading the XML descriptors ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 298
    :catch_111
    move-exception v0

    .line 300
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "An exception was generated while trying to "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "create a new SAXParser."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_125
    move-object v4, v0

    goto/16 :goto_7f
.end method

.method private static usage()V
    .registers 2

    .line 331
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "java org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc \\"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  [OPTIONS] [EJB 1.1 descriptor] [iAS EJB descriptor]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Where OPTIONS are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -debug -- for additional debugging output"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -keepsource -- to retain Java source files generated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -classpath [classpath] -- classpath used for compilation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -d [destination directory] -- directory for compiled classes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "If a classpath is not specified, the system classpath"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "will be used.  If a destination directory is not specified,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "the current working directory will be used (classes will"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "still be placed in subfolders which correspond to their"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "package name)."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "The EJB home interface, remote interface, and implementation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "class must be found in the destination directory.  In"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "addition, the destination will look for the stubs and skeletons"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "in the destination directory to ensure they are up to date."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method protected checkConfiguration()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->stdDescriptor:Ljava/io/File;

    if-nez v1, :cond_e

    .line 441
    const-string v1, "A standard XML descriptor file must be specified.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasDescriptor:Ljava/io/File;

    if-nez v1, :cond_17

    .line 444
    const-string v1, "An iAS-specific XML descriptor file must be specified.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_17
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpath:Ljava/lang/String;

    if-nez v1, :cond_20

    .line 447
    const-string v1, "A classpath must be specified.    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_20
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    if-nez v1, :cond_29

    .line 450
    const-string v1, "An XML parser must be specified.    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_29
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    if-nez v1, :cond_39

    .line 454
    const-string v1, "A destination directory must be specified.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_53

    .line 464
    return-void

    .line 455
    :cond_39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 456
    const-string v1, "The destination directory specified does not exist.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 457
    :cond_45
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_32

    .line 458
    const-string v1, "The destination specified is not a directory.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 462
    :cond_53
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    throw v1
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->checkConfiguration()V

    .line 368
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v2

    .line 370
    array-length v3, v2

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_1d

    aget-object v4, v2, v1

    .line 371
    const-string v5, "EJBInfo..."

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 375
    :cond_1d
    array-length v1, v2

    :goto_1e
    if-ge v0, v1, :cond_6a

    aget-object v3, v2, v0

    .line 376
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-static {v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;Ljava/io/File;)V

    .line 378
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->mustBeRecompiled(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must be recompiled using ejbc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->buildArgumentList(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->callEjbc([Ljava/lang/String;)V

    .line 375
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 382
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is up to date."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    goto :goto_4e

    .line 385
    :cond_6a
    return-void
.end method

.method public getCmpDescriptors()[Ljava/lang/String;
    .registers 3

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda0;

    .line 235
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 234
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEjbFiles()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->ejbFiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method public registerDTD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setDebugOutput(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    .line 180
    return-void
.end method

.method public setIasHomeDir(Ljava/io/File;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasHomeDir:Ljava/io/File;

    .line 204
    return-void
.end method

.method public setRetainSource(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->retainSource:Z

    .line 170
    return-void
.end method
