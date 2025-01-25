.class public Lcom/sun/tools/javac/api/ClientCodeWrapper;
.super Ljava/lang/Object;
.source "ClientCodeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;,
        Lcom/sun/tools/javac/api/ClientCodeWrapper$Trusted;,
        Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;,
        Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;,
        Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;,
        Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;,
        Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;
    }
.end annotation


# instance fields
.field trustedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper;->trustedClasses:Ljava/util/Map;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/Diagnostic;)Ljavax/tools/Diagnostic;
    .registers 3

    .line 90
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/Diagnostic;)Ljavax/tools/Diagnostic;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/api/ClientCodeWrapper;
    .registers 2

    .line 96
    const-class v0, Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/ClientCodeWrapper;

    .line 97
    if-nez v0, :cond_f

    .line 98
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/api/ClientCodeWrapper;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 99
    :cond_f
    return-object v0
.end method

.method private unwrap(Ljavax/tools/Diagnostic;)Ljavax/tools/Diagnostic;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/tools/Diagnostic",
            "<TT;>;)",
            "Ljavax/tools/Diagnostic",
            "<TT;>;"
        }
    .end annotation

    .line 165
    instance-of v0, p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_c

    .line 166
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 167
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    move-object p1, v0

    .line 169
    :cond_c
    return-object p1
.end method


# virtual methods
.method protected isTrusted(Ljava/lang/Object;)Z
    .registers 5

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 175
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper;->trustedClasses:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 176
    if-nez v0, :cond_2c

    .line 177
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sun.tools.javac."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 178
    const-class v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$Trusted;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_22
    const/4 v0, 0x1

    .line 177
    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper;->trustedClasses:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 178
    :cond_31
    const/4 v0, 0x0

    goto :goto_23
.end method

.method unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 3

    .line 125
    instance-of v0, p1, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;

    if-eqz v0, :cond_8

    .line 126
    check-cast p1, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;

    iget-object p1, p1, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    .line 128
    :cond_8
    return-object p1
.end method

.method unwrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 3

    .line 145
    instance-of v0, p1, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;

    if-eqz v0, :cond_b

    .line 146
    check-cast p1, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;

    iget-object v0, p1, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->clientFileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 148
    :goto_a
    return-object v0

    :cond_b
    move-object v0, p1

    goto :goto_a
.end method

.method wrap(Lcom/sun/source/util/TaskListener;)Lcom/sun/source/util/TaskListener;
    .registers 3

    .line 158
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Lcom/sun/source/util/TaskListener;)V

    move-object p1, v0

    goto :goto_6
.end method

.method wrap(Ljavax/tools/DiagnosticListener;)Ljavax/tools/DiagnosticListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/tools/DiagnosticListener",
            "<TT;>;)",
            "Ljavax/tools/DiagnosticListener",
            "<TT;>;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/DiagnosticListener;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 3

    .line 119
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/FileObject;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public wrap(Ljavax/tools/JavaFileManager;)Ljavax/tools/JavaFileManager;
    .registers 3

    .line 113
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/JavaFileManager;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->isTrusted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/JavaFileObject;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public wrapJavaFileObjects(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 140
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 141
    :cond_1d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
