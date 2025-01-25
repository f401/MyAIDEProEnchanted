.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;
.super Lorg/apache/tools/ant/Task;
.source "IPlanetEjbcTask.java"


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private debug:Z

.field private dest:Ljava/io/File;

.field private ejbdescriptor:Ljava/io/File;

.field private iasdescriptor:Ljava/io/File;

.field private iashome:Ljava/io/File;

.field private keepgenerated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 96
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->keepgenerated:Z

    .line 97
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->debug:Z

    return-void
.end method

.method private checkConfiguration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->ejbdescriptor:Ljava/io/File;

    if-eqz v0, :cond_e1

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->ejbdescriptor:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iasdescriptor:Ljava/io/File;

    if-eqz v0, :cond_b3

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iasdescriptor:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->dest:Ljava/io/File;

    if-eqz v0, :cond_85

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iashome:Ljava/io/File;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 244
    :cond_40
    return-void

    .line 239
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "If \"iashome\" is specified, it must be a valid directory (it was set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iashome:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 233
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The destination directory ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->dest:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") was not found or isn\'t a directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 228
    :cond_85
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The destination directory must be specified using the \"dest\" attribute."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 222
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The iAS-specific XML descriptor ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iasdescriptor:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") was not found or isn\'t a file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 217
    :cond_b3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The iAS-speific XML descriptor must be specified using the \"iasdescriptor\" attribute."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 211
    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The standard EJB descriptor ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->ejbdescriptor:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") was not found or isn\'t a file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 206
    :cond_e1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The standard EJB descriptor must be specified using the \"ejbdescriptor\" attribute."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private executeEjbc(Ljavax/xml/parsers/SAXParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 271
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->ejbdescriptor:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iasdescriptor:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->dest:Ljava/io/File;

    .line 274
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 276
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->keepgenerated:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setRetainSource(Z)V

    .line 277
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->debug:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setDebugOutput(Z)V

    .line 278
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iashome:Ljava/io/File;

    if-eqz v1, :cond_25

    .line 279
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setIasHomeDir(Ljava/io/File;)V

    .line 282
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->execute()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_69
    .catch Lorg/xml/sax/SAXException; {:try_start_25 .. :try_end_28} :catch_49
    .catch Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException; {:try_start_25 .. :try_end_28} :catch_29

    .line 298
    return-void

    .line 293
    :catch_29
    move-exception v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception occurred while trying to run the ejbc utility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 288
    :catch_49
    move-exception v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A SAXException occurred while trying to read the XML descriptor file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 283
    :catch_69
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An IOException occurred while trying to read the XML descriptor file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method

.method private getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 308
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_14

    .line 309
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 311
    :goto_13
    return-object v0

    :cond_14
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_13
.end method

.method private getParser()Ljavax/xml/parsers/SAXParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 254
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 256
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_b} :catch_2d

    move-result-object v0

    return-object v0

    .line 257
    :catch_d
    move-exception v0

    .line 258
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create a SAXParser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 257
    :catch_2d
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 151
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 153
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->checkConfiguration()V

    .line 195
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->getParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->executeEjbc(Ljavax/xml/parsers/SAXParser;)V

    .line 196
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 143
    :goto_6
    return-void

    .line 141
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setDebug(Z)V
    .registers 2

    .line 173
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->debug:Z

    .line 174
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->dest:Ljava/io/File;

    .line 130
    return-void
.end method

.method public setEjbdescriptor(Ljava/io/File;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->ejbdescriptor:Ljava/io/File;

    .line 108
    return-void
.end method

.method public setIasdescriptor(Ljava/io/File;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iasdescriptor:Ljava/io/File;

    .line 119
    return-void
.end method

.method public setIashome(Ljava/io/File;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->iashome:Ljava/io/File;

    .line 185
    return-void
.end method

.method public setKeepgenerated(Z)V
    .registers 2

    .line 163
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbcTask;->keepgenerated:Z

    .line 164
    return-void
.end method
