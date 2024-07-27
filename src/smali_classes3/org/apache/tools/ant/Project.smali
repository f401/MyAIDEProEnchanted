.class public Lorg/apache/tools/ant/Project;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/Project$AntRefTable;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final JAVA_1_0:Ljava/lang/String; = "1.0"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_1:Ljava/lang/String; = "1.1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_2:Ljava/lang/String; = "1.2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_3:Ljava/lang/String; = "1.3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_4:Ljava/lang/String; = "1.4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG_DEBUG:I = 0x4

.field public static final MSG_ERR:I = 0x0

.field public static final MSG_INFO:I = 0x2

.field public static final MSG_VERBOSE:I = 0x3

.field public static final MSG_WARN:I = 0x1

.field public static final TOKEN_END:Ljava/lang/String; = "@"

.field public static final TOKEN_START:Ljava/lang/String; = "@"

.field private static final VISITED:Ljava/lang/String; = "VISITED"

.field private static final VISITING:Ljava/lang/String; = "VISITING"


# instance fields
.field private baseDir:Ljava/io/File;

.field private coreLoader:Ljava/lang/ClassLoader;

.field private defaultInputStream:Ljava/io/InputStream;

.field private defaultTarget:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private final globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

.field private final globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

.field private final idReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private inputHandler:Lorg/apache/tools/ant/input/InputHandler;

.field private final isLoggingMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private keepGoingMode:Z

.field private volatile listeners:[Lorg/apache/tools/ant/BuildListener;

.field private final listenersLock:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private final references:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final referencesLock:Ljava/lang/Object;

.field private final targets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final threadGroupTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ThreadGroup;",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final threadTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Lorg/apache/tools/ant/Project$AntRefTable;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project$AntRefTable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->idReferences:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    .line 159
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    .line 162
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/types/FilterSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 170
    new-instance v1, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    iput-object v1, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    .line 180
    new-array v0, v3, [Lorg/apache/tools/ant/BuildListener;

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    .line 184
    sget-object v0, Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda1;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    .line 190
    iput-object v2, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    .line 193
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 194
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 198
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    .line 203
    iput-object v2, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    .line 208
    iput-object v2, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    .line 213
    iput-boolean v3, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    .line 261
    new-instance v0, Lorg/apache/tools/ant/input/DefaultInputHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    .line 262
    return-void
.end method

.method private fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V
    .registers 8

    const/4 v0, 0x0

    .line 2237
    if-nez p2, :cond_0

    .line 2238
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2240
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2241
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2242
    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lorg/apache/tools/ant/BuildEvent;->setMessage(Ljava/lang/String;I)V

    .line 2246
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 2269
    :goto_1
    return-void

    .line 2244
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/BuildEvent;->setMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 2263
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2264
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 2265
    :try_start_1
    invoke-interface {v3, p1}, Lorg/apache/tools/ant/BuildListener;->messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2264
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2268
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2269
    throw v0
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;
    .registers 4

    .line 1744
    instance-of v0, p0, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 1745
    check-cast p0, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 1755
    :goto_0
    return-object v0

    .line 1748
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getProject"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1749
    const-class v1, Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1750
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Project;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1752
    :catch_0
    move-exception v0

    .line 1755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 1

    .line 184
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic lambda$topoSort$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1840
    const-string v0, " `%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeCircularException(Ljava/lang/String;Ljava/util/Stack;)Lorg/apache/tools/ant/BuildException;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/tools/ant/BuildException;"
        }
    .end annotation

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Circular dependency: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1957
    const-string v2, " <- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private setAntLib()V
    .registers 3

    .line 327
    const-class v0, Lorg/apache/tools/ant/Project;

    invoke-static {v0}, Lorg/apache/tools/ant/launch/Locator;->getClassSource(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    const-string v1, "ant.core.lib"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void
.end method

.method private setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 595
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 596
    return-void
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .registers 2

    .line 1732
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1734
    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1732
    :goto_0
    return v0

    .line 1734
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static translatePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/Target;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1902
    const-string v0, "VISITING"

    invoke-virtual {p3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    invoke-virtual {p4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/tools/ant/Target;

    .line 1908
    if-nez v6, :cond_1

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Target \""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    const-string v0, "\" does not exist in the project \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    const-string v0, "\". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1915
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1917
    const-string v2, "It is used from target \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    const-string v0, "\"."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1923
    :cond_1
    invoke-virtual {v6}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1924
    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1925
    if-nez v0, :cond_3

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1927
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/Project;->tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V

    goto :goto_0

    .line 1928
    :cond_3
    const-string v2, "VISITING"

    if-ne v0, v2, :cond_2

    .line 1930
    invoke-static {v1, p4}, Lorg/apache/tools/ant/Project;->makeCircularException(Ljava/lang/String;Ljava/util/Stack;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 1933
    :cond_4
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1934
    if-ne p1, v0, :cond_5

    .line 1938
    const-string v0, "VISITED"

    invoke-virtual {p3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    invoke-virtual {p5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1940
    return-void

    .line 1935
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected internal error: expected to pop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addBuildListener(Lorg/apache/tools/ant/BuildListener;)V
    .registers 8

    const/4 v0, 0x0

    .line 391
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 394
    if-ne v4, p1, :cond_0

    .line 395
    :try_start_1
    monitor-exit v1

    .line 405
    :goto_1
    return-void

    .line 393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/tools/ant/BuildListener;

    .line 401
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v5, v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v2

    aput-object p1, v0, v2

    .line 403
    iput-object v0, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    .line 404
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addDataTypeDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 1070
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1072
    return-void
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    if-nez p1, :cond_0

    .line 813
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    new-instance v1, Lorg/apache/tools/ant/types/FilterSet$Filter;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/FilterSet$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V

    goto :goto_0
.end method

.method public addIdReference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1977
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->idReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    return-void
.end method

.method public addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V
    .registers 5

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " +Target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1155
    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1156
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    return-void
.end method

.method public addOrReplaceTarget(Lorg/apache/tools/ant/Target;)V
    .registers 3

    .line 1140
    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 1141
    return-void
.end method

.method public addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 1987
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1988
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    check-cast v0, Lorg/apache/tools/ant/Project$AntRefTable;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/Project$AntRefTable;->access$000(Lorg/apache/tools/ant/Project$AntRefTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1989
    if-ne v0, p2, :cond_0

    .line 1991
    monitor-exit v1

    .line 2000
    :goto_0
    return-void

    .line 1993
    :cond_0
    if-eqz v0, :cond_1

    instance-of v0, v0, Lorg/apache/tools/ant/UnknownElement;

    if-nez v0, :cond_1

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overriding previous definition of reference to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1997
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding reference: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1998
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1129
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 1130
    return-void

    .line 1127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate target: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addTarget(Lorg/apache/tools/ant/Target;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 1110
    return-void
.end method

.method public addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 984
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    .line 986
    return-void
.end method

.method public checkTaskClass(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 1001
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->checkTaskClass(Ljava/lang/Class;)V

    .line 1003
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1014
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    const-class v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    invoke-static {p1, p0}, Lorg/apache/tools/ant/TaskAdapter;->checkTaskClass(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)V

    .line 1030
    :cond_0
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1025
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1017
    :catch_1
    move-exception v0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No public no-arg constructor in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1021
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is abstract"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1011
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1004
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1006
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1617
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1618
    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    sget-object v1, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1639
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 1638
    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;)V

    .line 1640
    return-void

    .line 1639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1663
    sget-object v1, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1664
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 1663
    :goto_0
    invoke-virtual {v1, p1, p2, v0, p4}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Z)V

    .line 1665
    return-void

    .line 1664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;ZZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1694
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1695
    if-eqz p3, :cond_0

    iget-object v3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 1694
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;ZZ)V

    .line 1696
    return-void

    .line 1695
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1521
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1542
    sget-object v1, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1543
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 1542
    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/types/FilterSetCollection;)V

    .line 1544
    return-void

    .line 1543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    sget-object v1, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1568
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 1567
    :goto_0
    invoke-virtual {v1, p1, p2, v0, p4}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/types/FilterSetCollection;Z)V

    .line 1569
    return-void

    .line 1568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1599
    if-eqz p3, :cond_0

    iget-object v3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 1598
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/types/FilterSetCollection;ZZ)V

    .line 1600
    return-void

    .line 1599
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public copyInheritedProperties(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 708
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->copyInheritedProperties(Lorg/apache/tools/ant/Project;)V

    .line 709
    return-void
.end method

.method public copyUserProperties(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 692
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->copyUserProperties(Lorg/apache/tools/ant/Project;)V

    .line 693
    return-void
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;
    .registers 4

    .line 357
    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;
    .registers 4

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public createDataType(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1208
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createDataType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createSubProject()Lorg/apache/tools/ant/Project;
    .registers 3

    .line 272
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Project;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->initSubProject(Lorg/apache/tools/ant/Project;)V

    .line 279
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    new-instance v0, Lorg/apache/tools/ant/Project;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project;-><init>()V

    goto :goto_0
.end method

.method public createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1192
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    return-object v0
.end method

.method public defaultInput([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1305
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1306
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    .line 1303
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No input provided for project"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public demuxFlush(Ljava/lang/String;Z)V
    .registers 4

    .line 1342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 1343
    if-nez v0, :cond_1

    .line 1344
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p0, p1, v0}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V

    .line 1350
    :goto_1
    return-void

    .line 1344
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1345
    :cond_1
    if-eqz p2, :cond_2

    .line 1346
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_1

    .line 1348
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public demuxInput([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 1324
    if-nez v0, :cond_0

    .line 1325
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->defaultInput([BII)I

    move-result v0

    .line 1327
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result v0

    goto :goto_0
.end method

.method public demuxOutput(Ljava/lang/String;Z)V
    .registers 4

    .line 1277
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 1278
    if-nez v0, :cond_1

    .line 1279
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1285
    :goto_1
    return-void

    .line 1279
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1280
    :cond_1
    if-eqz p2, :cond_2

    .line 1281
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_1

    .line 1283
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public executeSortedTargets(Ljava/util/Vector;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/Target;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1384
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1386
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 1387
    const/4 v5, 0x1

    .line 1388
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1389
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot execute \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' - \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' failed or was not executed."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-virtual {p0, v0, v1, v4}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    move v1, v4

    .line 1398
    :goto_1
    if-eqz v1, :cond_5

    .line 1401
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->performTasks()V

    .line 1402
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 1414
    :cond_1
    if-eqz v1, :cond_5

    .line 1415
    instance-of v5, v1, Lorg/apache/tools/ant/BuildException;

    if-eqz v5, :cond_2

    .line 1416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Target \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' failed with message \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1416
    invoke-virtual {p0, v0, v5, v4}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    .line 1421
    if-nez v2, :cond_5

    move-object v0, v1

    .line 1422
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    :goto_2
    move-object v2, v0

    .line 1437
    goto/16 :goto_0

    .line 1408
    :catchall_0
    move-exception v1

    .line 1409
    iget-boolean v5, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    if-nez v5, :cond_1

    .line 1410
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1403
    :catch_0
    move-exception v1

    .line 1404
    iget-boolean v5, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    if-nez v5, :cond_1

    .line 1405
    throw v1

    .line 1425
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Target \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' failed with message \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    invoke-virtual {p0, v0, v5, v4}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    .line 1429
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1430
    if-nez v2, :cond_5

    .line 1431
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_2

    .line 1438
    :cond_3
    if-nez v2, :cond_4

    .line 1441
    return-void

    .line 1439
    :cond_4
    throw v2

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move v1, v5

    goto/16 :goto_1
.end method

.method public executeTarget(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1365
    if-eqz p1, :cond_0

    .line 1374
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/Project;->topoSort(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->executeSortedTargets(Ljava/util/Vector;)V

    .line 1375
    return-void

    .line 1366
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No target specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeTargets(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 1262
    const-string v0, ","

    invoke-static {v0, p1}, Lorg/apache/tools/ant/Main$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ant.project.invoked-targets"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getExecutor()Lorg/apache/tools/ant/Executor;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lorg/apache/tools/ant/Executor;->executeTargets(Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V

    .line 1265
    return-void
.end method

.method public fireBuildFinished(Ljava/lang/Throwable;)V
    .registers 7

    .line 2108
    new-instance v1, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2109
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2110
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2111
    invoke-interface {v4, v1}, Lorg/apache/tools/ant/BuildListener;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2114
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/IntrospectionHelper;->clearCache()V

    .line 2115
    return-void
.end method

.method public fireBuildStarted()V
    .registers 6

    .line 2094
    new-instance v1, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2095
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2096
    invoke-interface {v4, v1}, Lorg/apache/tools/ant/BuildListener;->buildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2098
    :cond_0
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V
    .registers 5

    .line 2283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2284
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 6

    .line 2299
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2300
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2301
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/Project;->fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V

    .line 2302
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V
    .registers 5

    .line 2315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2316
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 6

    .line 2331
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 2332
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2333
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/Project;->fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V

    .line 2334
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;I)V
    .registers 5

    .line 2346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2347
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 6

    .line 2362
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 2363
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2364
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/Project;->fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V

    .line 2365
    return-void
.end method

.method public fireSubBuildFinished(Ljava/lang/Throwable;)V
    .registers 8

    .line 2142
    new-instance v2, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2143
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2144
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2145
    instance-of v5, v0, Lorg/apache/tools/ant/SubBuildListener;

    if-eqz v5, :cond_0

    .line 2146
    check-cast v0, Lorg/apache/tools/ant/SubBuildListener;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/SubBuildListener;->subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2144
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2149
    :cond_1
    return-void
.end method

.method public fireSubBuildStarted()V
    .registers 7

    .line 2124
    new-instance v2, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2125
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2126
    instance-of v5, v0, Lorg/apache/tools/ant/SubBuildListener;

    if-eqz v5, :cond_0

    .line 2127
    check-cast v0, Lorg/apache/tools/ant/SubBuildListener;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/SubBuildListener;->subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2125
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2130
    :cond_1
    return-void
.end method

.method protected fireTargetFinished(Lorg/apache/tools/ant/Target;Ljava/lang/Throwable;)V
    .registers 8

    .line 2177
    new-instance v1, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 2178
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2179
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2180
    invoke-interface {v4, v1}, Lorg/apache/tools/ant/BuildListener;->targetFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2183
    :cond_0
    return-void
.end method

.method protected fireTargetStarted(Lorg/apache/tools/ant/Target;)V
    .registers 7

    .line 2159
    new-instance v1, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 2160
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2161
    invoke-interface {v4, v1}, Lorg/apache/tools/ant/BuildListener;->targetStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2164
    :cond_0
    return-void
.end method

.method protected fireTaskFinished(Lorg/apache/tools/ant/Task;Ljava/lang/Throwable;)V
    .registers 8

    .line 2212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 2213
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 2214
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 2215
    new-instance v1, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 2216
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2217
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2218
    invoke-interface {v4, v1}, Lorg/apache/tools/ant/BuildListener;->taskFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2221
    :cond_0
    return-void
.end method

.method protected fireTaskStarted(Lorg/apache/tools/ant/Task;)V
    .registers 7

    .line 2194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 2195
    new-instance v1, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 2196
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2197
    invoke-interface {v4, v1}, Lorg/apache/tools/ant/BuildListener;->taskStarted(Lorg/apache/tools/ant/BuildEvent;)V

    .line 2196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2199
    :cond_0
    return-void
.end method

.method public getBaseDir()Ljava/io/File;
    .registers 2

    .line 878
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 880
    :try_start_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    return-object v0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBuildListeners()Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/BuildListener;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    .line 439
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 440
    monitor-exit v1

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCopyOfDataTypeDefinitions()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCopyOfReferences()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2035
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2036
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 2037
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCopyOfTargets()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .line 1175
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCopyOfTaskDefinitions()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 1053
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCoreLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDataTypeDefinitions()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 1082
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInputStream()Ljava/io/InputStream;
    .registers 2

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getDefaultTarget()Ljava/lang/String;
    .registers 2

    .line 733
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 788
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 789
    invoke-static {p0}, Lorg/apache/tools/ant/types/Description;->getDescription(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 2086
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Lorg/apache/tools/ant/Executor;
    .registers 6

    const/4 v4, 0x0

    .line 1224
    const-string v0, "ant.executor"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1225
    if-nez v1, :cond_2

    .line 1226
    const-string v0, "ant.executor.class"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    if-nez v0, :cond_0

    .line 1228
    const-class v0, Lorg/apache/tools/ant/helper/DefaultExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1230
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to create object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1232
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1242
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 1247
    check-cast v0, Lorg/apache/tools/ant/Executor;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->setExecutor(Lorg/apache/tools/ant/Executor;)V

    move-object v0, v1

    .line 1249
    :goto_1
    check-cast v0, Lorg/apache/tools/ant/Executor;

    return-object v0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1233
    :catch_1
    move-exception v2

    .line 1236
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1237
    :catch_2
    move-exception v0

    .line 1238
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1244
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to obtain a Target Executor instance."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getFilters()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->getFilterHash()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;
    .registers 2

    .line 527
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    return-object v0
.end method

.method public getInheritedProperties()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 676
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getInheritedProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getInputHandler()Lorg/apache/tools/ant/input/InputHandler;
    .registers 2

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 768
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 650
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 608
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 609
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPropertyNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 659
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getReference(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2051
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2053
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2054
    if-eqz v0, :cond_0

    .line 2055
    monitor-exit v1

    .line 2069
    :goto_0
    return-object v0

    .line 2057
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    const-string v0, "ant.PropertyHelper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2061
    :try_start_1
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->containsProperties(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unresolvable reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " might be a misuse of property expansion syntax."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2069
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2057
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2065
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getReferences()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2009
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 4

    .line 2485
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTargets()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getTaskDefinitions()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 1040
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;
    .registers 5

    .line 2395
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    monitor-enter v2

    .line 2396
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 2397
    if-nez v0, :cond_0

    .line 2398
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    .line 2399
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 2400
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 2401
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0

    .line 2404
    :cond_0
    monitor-exit v2

    return-object v0

    .line 2405
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserProperties()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 667
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 640
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasReference(Ljava/lang/String;)Z
    .registers 4

    .line 2020
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2021
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inheritIDReferences(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 1968
    return-void
.end method

.method public init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->initProperties()V

    .line 305
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->initDefaultDefinitions()V

    .line 306
    return-void
.end method

.method public initProperties()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->setJavaVersionProperty()V

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->setSystemProperties()V

    .line 316
    const-string v0, "ant.version"

    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lorg/apache/tools/ant/Project;->setAntLib()V

    .line 318
    return-void
.end method

.method public initSubProject(Lorg/apache/tools/ant/Project;)V
    .registers 4

    .line 287
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 288
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->initSubProject(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 289
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDefaultInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setDefaultInputStream(Ljava/io/InputStream;)V

    .line 290
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setKeepGoingMode(Z)V

    .line 291
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getExecutor()Lorg/apache/tools/ant/Executor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/Executor;->getSubProjectExecutor()Lorg/apache/tools/ant/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setExecutor(Lorg/apache/tools/ant/Executor;)V

    .line 292
    return-void
.end method

.method public isKeepGoingMode()Z
    .registers 2

    .line 909
    iget-boolean v0, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    .line 451
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 452
    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 461
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    .line 471
    invoke-virtual {p0, p0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 472
    return-void
.end method

.method public log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V
    .registers 5

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 505
    return-void
.end method

.method public log(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 5

    .line 518
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 519
    return-void
.end method

.method public log(Lorg/apache/tools/ant/Task;Ljava/lang/String;I)V
    .registers 5

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 482
    return-void
.end method

.method public log(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 5

    .line 493
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 494
    return-void
.end method

.method public registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V
    .registers 6

    .line 2376
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    monitor-enter v1

    .line 2377
    if-eqz p2, :cond_0

    .line 2378
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    :goto_0
    monitor-exit v1

    .line 2385
    return-void

    .line 2381
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V
    .registers 8

    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 418
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 419
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lorg/apache/tools/ant/BuildListener;

    .line 421
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v5, v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    .line 428
    :cond_0
    monitor-exit v1

    .line 429
    return-void

    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replaceProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 627
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1}, Lorg/apache/tools/ant/PropertyHelper;->replaceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1478
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public resolveFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1462
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public setBaseDir(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 856
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iput-object v0, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    .line 866
    const-string v1, "basedir"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project base dir set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 869
    return-void

    .line 862
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basedir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a directory"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basedir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBasedir(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    .line 844
    return-void
.end method

.method public setCoreLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    .line 369
    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .registers 3

    .line 744
    if-eqz p1, :cond_0

    .line 745
    const-string v0, "ant.project.default-target"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->defaultTarget:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public setDefaultInputStream(Ljava/io/InputStream;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    .line 235
    return-void
.end method

.method public setDefaultTarget(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->setDefault(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 778
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    .line 779
    return-void
.end method

.method public setExecutor(Lorg/apache/tools/ant/Executor;)V
    .registers 3

    .line 1216
    const-string v0, "ant.executor"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1217
    return-void
.end method

.method public setFileLastModified(Ljava/io/File;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1716
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting modification time for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1718
    return-void
.end method

.method public setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 583
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method public setInputHandler(Lorg/apache/tools/ant/input/InputHandler;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    .line 222
    return-void
.end method

.method public setJavaVersionProperty()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x3

    .line 935
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaVersion()Ljava/lang/String;

    move-result-object v0

    .line 936
    const-string v1, "ant.java.version"

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v1, "1.8"

    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected Java version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected OS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 946
    return-void

    .line 940
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Ant cannot work on Java prior to 1.8"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeepGoingMode(Z)V
    .registers 2

    .line 898
    iput-boolean p1, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    .line 899
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 758
    const-string v0, "ant.project.name"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->name:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public setNewProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 554
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method public final setProjectReference(Ljava/lang/Object;)V
    .registers 7

    .line 2460
    instance-of v0, p1, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_1

    .line 2461
    check-cast p1, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 2474
    :cond_0
    :goto_0
    return-void

    .line 2465
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setProject"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/apache/tools/ant/Project;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2466
    if-eqz v0, :cond_0

    .line 2467
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2469
    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 539
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 540
    return-void
.end method

.method public setSystemProperties()V
    .registers 5

    .line 953
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 954
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 955
    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 956
    if-eqz v3, :cond_0

    .line 957
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_1
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 567
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public final topoSort(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 1774
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, v2}, Lorg/apache/tools/ant/Project;->topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final topoSort(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;Z)",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1796
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/tools/ant/Project;->topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;Z)",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1818
    new-instance v5, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v5}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    .line 1819
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 1820
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 1830
    array-length v7, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v1, p1, v6

    .line 1831
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1832
    if-nez v0, :cond_1

    move-object v0, p0

    move-object v2, p2

    .line 1833
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/Project;->tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V

    .line 1830
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1834
    :cond_1
    const-string v2, "VISITING"

    if-ne v0, v2, :cond_0

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected node in visiting state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1839
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Build sequence for target(s)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda0;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1841
    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1844
    if-eqz p3, :cond_4

    move-object v11, v5

    .line 1845
    :goto_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1846
    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1847
    if-nez v0, :cond_5

    move-object v6, p0

    move-object v8, p2

    move-object v9, v3

    move-object v10, v4

    .line 1848
    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/ant/Project;->tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V

    goto :goto_2

    .line 1844
    :cond_4
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11, v5}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 1849
    :cond_5
    const-string v2, "VISITING"

    if-ne v0, v2, :cond_3

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected node in visiting state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1854
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Complete build sequence is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1855
    return-object v5
.end method
