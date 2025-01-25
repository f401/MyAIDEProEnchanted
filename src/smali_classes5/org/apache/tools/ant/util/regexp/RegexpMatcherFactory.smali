.class public Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;
.super Ljava/lang/Object;
.source "RegexpMatcherFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static regexpMatcherPresent(Lorg/apache/tools/ant/Project;)Z
    .registers 2

    .line 104
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_a

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_9
    return v0

    .line 106
    :catchall_a
    move-exception v0

    .line 107
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 77
    const-class v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    return-object v0
.end method

.method public newRegexpMatcher()Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object v0

    return-object v0
.end method

.method public newRegexpMatcher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 54
    if-nez p1, :cond_f

    .line 55
    const-string v0, "ant.regexp.regexpimpl"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_8
    if-eqz v0, :cond_16

    .line 61
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->createInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object v0

    .line 66
    :goto_e
    return-object v0

    .line 57
    :cond_f
    const-string v0, "ant.regexp.regexpimpl"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 66
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;-><init>()V

    goto :goto_e
.end method

.method protected testAvailability(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 92
    return-void

    .line 90
    :catchall_4
    move-exception v0

    .line 91
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
