.class public Lorg/apache/tools/ant/XmlLogger;
.super Ljava/lang/Object;
.source "XmlLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/XmlLogger$TimedElement;
    }
.end annotation


# static fields
.field private static final BUILD_TAG:Ljava/lang/String; = "build"

.field private static final ERROR_ATTR:Ljava/lang/String; = "error"

.field private static final LOCATION_ATTR:Ljava/lang/String; = "location"

.field private static final MESSAGE_TAG:Ljava/lang/String; = "message"

.field private static final NAME_ATTR:Ljava/lang/String; = "name"

.field private static final PRIORITY_ATTR:Ljava/lang/String; = "priority"

.field private static final STACKTRACE_TAG:Ljava/lang/String; = "stacktrace"

.field private static final TARGET_TAG:Ljava/lang/String; = "target"

.field private static final TASK_TAG:Ljava/lang/String; = "task"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;


# instance fields
.field private buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

.field private doc:Lorg/w3c/dom/Document;

.field private msgOutputLevel:I

.field private outStream:Ljava/io/PrintStream;

.field private targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/Target;",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;"
        }
    .end annotation
.end field

.field private tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/Task;",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;"
        }
    .end annotation
.end field

.field private threadStacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    invoke-static {}, Lorg/apache/tools/ant/XmlLogger;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/XmlLogger;->builder:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    .line 111
    sget-object v0, Lorg/apache/tools/ant/XmlLogger;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->threadStacks:Ljava/util/Map;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    return-void
.end method

.method private static getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .registers 2

    .line 74
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 75
    :catch_9
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProperty(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 201
    .line 202
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 203
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 205
    :cond_1a
    return-object p3
.end method

.method private getStack()Ljava/util/Stack;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->threadStacks:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/XmlLogger$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/XmlLogger$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private getTaskElement(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/XmlLogger$TimedElement;
    .registers 5

    .line 347
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 348
    if-eqz v0, :cond_b

    .line 357
    :goto_a
    return-object v0

    .line 351
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 352
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 353
    instance-of v1, v0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    if-ne v1, p1, :cond_1a

    .line 354
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    goto :goto_a

    .line 357
    :cond_3c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic lambda$getStack$0(Ljava/lang/Thread;)Ljava/util/Stack;
    .registers 2

    .line 219
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method

.method private synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 4

    .line 468
    monitor-enter p1

    .line 469
    :try_start_1
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 470
    monitor-exit p1

    .line 471
    return-void

    .line 470
    :catchall_6
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 8

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v2}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J

    move-result-wide v2

    .line 169
    iget-object v4, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v4}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "time"

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "stacktrace"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 178
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 181
    :cond_55
    const-string v0, "XmlLogger.file"

    const-string v1, "log.xml"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/XmlLogger;->getProperty(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v0, "ant.XmlLogger.stylesheet.uri"

    const-string v2, "log.xsl"

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/tools/ant/XmlLogger;->getProperty(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    :try_start_65
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->outStream:Ljava/io/PrintStream;

    if-nez v0, :cond_dc

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_76} :catch_cf

    move-result-object v0

    move-object v1, v0

    .line 186
    :goto_78
    :try_start_78
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_c8

    .line 187
    :try_start_7f
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<?xml-stylesheet type=\"text/xsl\" href=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"?>\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    :cond_a3
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v2}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "\t"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_b7
    .catchall {:try_start_7f .. :try_end_b7} :catchall_c3

    .line 194
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_c8

    if-eqz v1, :cond_bf

    :try_start_bc
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_cf

    .line 196
    :cond_bf
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 198
    return-void

    .line 184
    :catchall_c3
    move-exception v0

    :try_start_c4
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_d8

    :goto_c7
    :try_start_c7
    throw v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception v0

    if-eqz v1, :cond_ce

    :try_start_cb
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_da

    :cond_ce
    :goto_ce
    :try_start_ce
    throw v0
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_cf} :catch_cf

    .line 194
    :catch_cf
    move-exception v0

    .line 195
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to write log file"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :catchall_d8
    move-exception v2

    goto :goto_c7

    :catchall_da
    move-exception v1

    goto :goto_ce

    :cond_dc
    move-object v1, v0

    goto :goto_78
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 6

    .line 154
    new-instance v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>(Lorg/apache/tools/ant/XmlLogger$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "build"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    .line 157
    return-void
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 6

    .line 370
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v0

    .line 371
    iget v1, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    if-le v0, v1, :cond_9

    .line 419
    :goto_8
    return-void

    .line 374
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "message"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 377
    packed-switch v0, :pswitch_data_8a

    .line 388
    const-string v0, "debug"

    .line 380
    :goto_16
    const-string v2, "priority"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 394
    const/4 v2, 0x4

    iget v3, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    if-gt v2, v3, :cond_44

    if-eqz v0, :cond_44

    .line 395
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 396
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v3, "stacktrace"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 397
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 398
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 400
    :cond_44
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 401
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    .line 407
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v3

    .line 408
    if-eqz v2, :cond_60

    .line 409
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/XmlLogger;->getTaskElement(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/XmlLogger$TimedElement;

    move-result-object v0

    .line 411
    :cond_60
    if-nez v0, :cond_6c

    if-eqz v3, :cond_6c

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 414
    :cond_6c
    if-eqz v0, :cond_7f

    .line 415
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_8

    .line 385
    :pswitch_76  #0x2
    const-string v0, "info"

    goto :goto_16

    .line 382
    :pswitch_79  #0x1
    const-string v0, "warn"

    goto :goto_16

    .line 379
    :pswitch_7c  #0x0
    const-string v0, "error"

    goto :goto_16

    .line 417
    :cond_7f
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_8

    .line 377
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_7c  #00000000
        :pswitch_79  #00000001
        :pswitch_76  #00000002
    .end packed-switch
.end method

.method public setEmacsMode(Z)V
    .registers 2

    .line 454
    return-void
.end method

.method public setErrorPrintStream(Ljava/io/PrintStream;)V
    .registers 2

    .line 465
    return-void
.end method

.method public setMessageOutputLevel(I)V
    .registers 2

    .line 432
    iput p1, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    .line 433
    return-void
.end method

.method public setOutputPrintStream(Ljava/io/PrintStream;)V
    .registers 4

    .line 443
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->outStream:Ljava/io/PrintStream;

    .line 444
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 10

    .line 250
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v3

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 252
    if-eqz v0, :cond_52

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J

    move-result-wide v6

    .line 254
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "time"

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_83

    .line 259
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 260
    if-ne v1, v0, :cond_58

    .line 264
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_83

    .line 265
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 268
    :goto_43
    if-nez v1, :cond_77

    .line 269
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 275
    :cond_52
    :goto_52
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void

    .line 261
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch - popped element = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " finished target element = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_77
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 272
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 271
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_52

    :cond_83
    move-object v1, v2

    goto :goto_43
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 7

    .line 232
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    .line 233
    new-instance v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>(Lorg/apache/tools/ant/XmlLogger$1;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J

    .line 235
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v3, "target"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    .line 236
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 10

    .line 312
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 314
    if-eqz v0, :cond_85

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J

    move-result-wide v6

    .line 318
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v3, "time"

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v3

    .line 320
    const/4 v1, 0x0

    .line 321
    if-eqz v3, :cond_33

    .line 322
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 324
    :cond_33
    if-nez v1, :cond_5a

    .line 325
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 329
    :goto_42
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 331
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 332
    if-ne v1, v0, :cond_66

    .line 337
    :cond_54
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void

    .line 327
    :cond_5a
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_42

    .line 333
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch - popped element = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " finished task element = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 7

    .line 288
    new-instance v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>(Lorg/apache/tools/ant/XmlLogger$1;)V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J

    .line 290
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "task"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    .line 292
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    .line 293
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    .line 294
    if-nez v0, :cond_28

    .line 295
    const-string v0, ""

    .line 297
    :cond_28
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method
