.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
.super Lorg/xml/sax/HandlerBase;
.source "DescriptorHandler.java"


# static fields
.field private static final BEAN_CLASS:Ljava/lang/String; = "ejb-class"

.field private static final DEFAULT_HASH_TABLE_SIZE:I = 0xa

.field private static final EJB_JAR:Ljava/lang/String; = "ejb-jar"

.field private static final EJB_LOCAL_REF:Ljava/lang/String; = "ejb-local-ref"

.field private static final EJB_NAME:Ljava/lang/String; = "ejb-name"

.field private static final EJB_REF:Ljava/lang/String; = "ejb-ref"

.field private static final ENTERPRISE_BEANS:Ljava/lang/String; = "enterprise-beans"

.field private static final ENTITY_BEAN:Ljava/lang/String; = "entity"

.field private static final HOME_INTERFACE:Ljava/lang/String; = "home"

.field private static final LOCAL_HOME_INTERFACE:Ljava/lang/String; = "local-home"

.field private static final LOCAL_INTERFACE:Ljava/lang/String; = "local"

.field private static final MESSAGE_BEAN:Ljava/lang/String; = "message-driven"

.field private static final PK_CLASS:Ljava/lang/String; = "prim-key-class"

.field private static final REMOTE_INTERFACE:Ljava/lang/String; = "remote"

.field private static final SESSION_BEAN:Ljava/lang/String; = "session"

.field private static final STATE_IN_BEANS:I = 0x3

.field private static final STATE_IN_EJBJAR:I = 0x2

.field private static final STATE_IN_ENTITY:I = 0x5

.field private static final STATE_IN_MESSAGE:I = 0x6

.field private static final STATE_IN_SESSION:I = 0x4

.field private static final STATE_LOOKING_EJBJAR:I = 0x1


# instance fields
.field protected currentElement:Ljava/lang/String;

.field protected currentText:Ljava/lang/String;

.field protected ejbFiles:Ljava/util/Hashtable;
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

.field protected ejbName:Ljava/lang/String;

.field private fileDTDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private inEJBRef:Z

.field private owningTask:Lorg/apache/tools/ant/Task;

.field private parseState:I

.field private publicId:Ljava/lang/String;

.field private resourceDTDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srcDir:Ljava/io/File;

.field private urlDTDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V
    .registers 5

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    .line 57
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->publicId:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    .line 89
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    .line 106
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->fileDTDs:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->resourceDTDs:Ljava/util/Map;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->urlDTDs:Ljava/util/Map;

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    .line 130
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->srcDir:Ljava/io/File;

    .line 131
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 309
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->processElement()V

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 312
    const-string v0, "ejb-ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ejb-local-ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const-string v0, "entity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 316
    :cond_3
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 318
    :cond_4
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const-string v0, "message-driven"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 320
    :cond_5
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v2, :cond_6

    const-string v0, "enterprise-beans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    iput v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 322
    :cond_6
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v3, :cond_1

    const-string v0, "ejb-jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0
.end method

.method public getEjbName()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    return-object v0
.end method

.method public getFiles()Ljava/util/Hashtable;
    .registers 3
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

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method protected processElement()V
    .registers 5

    .line 356
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v0, "home"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 364
    const-string v1, "remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 365
    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 366
    const-string v1, "local-home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 367
    const-string v1, "ejb-class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 368
    const-string v1, "prim-key-class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 376
    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->srcDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    const-string v1, "ejb-name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public registerDTD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x3

    .line 141
    if-nez p2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->fileDTDs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mapped publicId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 161
    if-eqz p1, :cond_4

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->resourceDTDs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mapped publicId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 169
    :cond_4
    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->urlDTDs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x3

    .line 192
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->publicId:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->fileDTDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 195
    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to local file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 199
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->resourceDTDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_1

    .line 209
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to local resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 211
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->urlDTDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 216
    if-eqz v0, :cond_2

    .line 218
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 221
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 227
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve (publicId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", systemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") to a local entity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 230
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public startDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    .line 267
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 280
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    .line 282
    const-string v0, "ejb-ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ejb-local-ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    :cond_0
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v2, :cond_3

    const-string v0, "ejb-jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iput v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 286
    :cond_3
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v3, :cond_4

    const-string v0, "enterprise-beans"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 288
    :cond_4
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v1, :cond_5

    const-string v0, "session"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 290
    :cond_5
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v1, :cond_6

    const-string v0, "entity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0

    .line 292
    :cond_6
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v1, :cond_1

    const-string v0, "message-driven"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_0
.end method
