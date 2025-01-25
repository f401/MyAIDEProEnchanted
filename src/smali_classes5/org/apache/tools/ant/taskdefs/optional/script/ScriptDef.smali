.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
.super Lorg/apache/tools/ant/taskdefs/DefBase;
.source "ScriptDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;,
        Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;
    }
.end annotation


# instance fields
.field private attributeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private name:Ljava/lang/String;

.field private nestedElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;",
            ">;"
        }
    .end annotation
.end field

.field private nestedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElements:Ljava/util/List;

    return-void
.end method

.method private lookupScriptRepository()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 264
    monitor-enter v1

    .line 265
    :try_start_5
    const-string v0, "org.apache.ant.scriptrepo"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 267
    if-nez v0, :cond_19

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v2, "org.apache.ant.scriptrepo"

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :cond_19
    monitor-exit v1

    .line 273
    return-object v0

    .line 272
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 413
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 414
    return-void
.end method

.method public addAttribute(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public addElement(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 404
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public createNestedElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;

    .line 284
    if-eqz v0, :cond_5c

    .line 291
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v1

    .line 292
    if-nez v1, :cond_30

    .line 293
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v1

    .line 294
    if-nez v1, :cond_6c

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createDataType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    :goto_2d
    if-eqz v0, :cond_4c

    .line 313
    return-object v0

    .line 298
    :cond_30
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 301
    :try_start_34
    invoke-static {v1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_37
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_34 .. :try_end_37} :catch_40

    move-result-object v0

    .line 305
    :goto_38
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    goto :goto_2d

    .line 302
    :catch_40
    move-exception v0

    .line 303
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_38

    .line 309
    :cond_4c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<%s> is unable to create the <%s> nested element"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 285
    :cond_5c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<%s> does not support the <%s> nested element"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6c
    move-object v0, v1

    goto :goto_2d
.end method

.method public execute()V
    .registers 8

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 186
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    if-eqz v0, :cond_13c

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 196
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getSrc()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_69

    .line 202
    :cond_1f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getAntlibClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->hasCpDelegate()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 203
    :cond_2b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 206
    :cond_34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;

    .line 208
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    .line 212
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 217
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 197
    :cond_69
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef requires a src attribute if the encoding is set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_71
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 215
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "scriptdef <%s> declares the %s attribute more than once"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 209
    :cond_85
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <attribute> elements must specify an attribute name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_8d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;

    .line 222
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fe

    .line 226
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ea

    .line 232
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c4

    .line 233
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_da

    .line 237
    :cond_c4
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d0

    .line 238
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e2

    .line 242
    :cond_d0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 234
    :cond_da
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <element> elements must specify either a classname or type attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_e2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <element> elements must specify only one of the classname and type attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_ea
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 229
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "scriptdef <%s> declares the %s nested element more than once"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 223
    :cond_fe
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <element> elements must specify an element name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_106
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->lookupScriptRepository()Ljava/util/Map;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 248
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 250
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 251
    const-class v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 252
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 254
    return-void

    .line 192
    :cond_134
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef requires a language attribute to specify the script language"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_13c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef requires a name attribute to name the script"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeScript(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->executeScript(Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;)V

    .line 328
    return-void
.end method

.method public executeScript(Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;",
            ")V"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    .line 342
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    const-string v1, "elements"

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const-string v1, "project"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    if-eqz p3, :cond_20

    .line 346
    const-string v1, "self"

    invoke-virtual {v0, v1, p3}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scriptdef_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public isAttributeSupported(Ljava/lang/String;)Z
    .registers 3

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCompiled(Z)V
    .registers 3

    .line 376
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setCompiled(Z)V

    .line 377
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .registers 3

    .line 357
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 4

    .line 73
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/DefBase;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    .line 76
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 385
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    .line 386
    return-void
.end method
