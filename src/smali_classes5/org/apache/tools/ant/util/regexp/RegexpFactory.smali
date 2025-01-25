.class public Lorg/apache/tools/ant/util/regexp/RegexpFactory;
.super Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;
.source "RegexpFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createRegexpInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/Regexp;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 77
    const-class v0, Lorg/apache/tools/ant/util/regexp/RegexpFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/regexp/Regexp;

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/regexp/Regexp;

    return-object v0
.end method

.method public newRegexp()Lorg/apache/tools/ant/util/regexp/Regexp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpFactory;->newRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    return-object v0
.end method

.method public newRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 51
    if-nez p1, :cond_f

    .line 52
    const-string v0, "ant.regexp.regexpimpl"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_8
    if-eqz v0, :cond_16

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpFactory;->createRegexpInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    .line 63
    :goto_e
    return-object v0

    .line 54
    :cond_f
    const-string v0, "ant.regexp.regexpimpl"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 63
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpRegexp;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpRegexp;-><init>()V

    goto :goto_e
.end method
