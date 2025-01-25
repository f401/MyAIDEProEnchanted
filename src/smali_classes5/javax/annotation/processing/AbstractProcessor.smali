.class public abstract Ljavax/annotation/processing/AbstractProcessor;
.super Ljava/lang/Object;
.source "AbstractProcessor.java"

# interfaces
.implements Ljavax/annotation/processing/Processor;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private initialized:Z

.field protected processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 59
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/annotation/processing/AbstractProcessor;->initialized:Z

    .line 69
    return-void
.end method

.method private static arrayToSet([Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v1, Ljava/util/HashSet;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 191
    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, p0, v0

    .line 192
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 193
    :cond_12
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCompletions(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Completion;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/annotation/processing/SupportedAnnotationTypes;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/SupportedAnnotationTypes;

    .line 99
    if-nez v0, :cond_42

    .line 100
    invoke-virtual {p0}, Ljavax/annotation/processing/AbstractProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 101
    iget-object v0, p0, Ljavax/annotation/processing/AbstractProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SupportedAnnotationTypes annotation found on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", returning an empty set."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 105
    :cond_3d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 108
    :goto_41
    return-object v0

    :cond_42
    invoke-interface {v0}, Ljavax/annotation/processing/SupportedAnnotationTypes;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/annotation/processing/AbstractProcessor;->arrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_41
.end method

.method public getSupportedOptions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/annotation/processing/SupportedOptions;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/SupportedOptions;

    .line 82
    if-nez v0, :cond_13

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 85
    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v0}, Ljavax/annotation/processing/SupportedOptions;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/annotation/processing/AbstractProcessor;->arrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_12
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .registers 6

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/annotation/processing/SupportedSourceVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/SupportedSourceVersion;

    .line 121
    if-nez v0, :cond_48

    .line 123
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;

    .line 124
    invoke-virtual {p0}, Ljavax/annotation/processing/AbstractProcessor;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 125
    iget-object v1, p0, Ljavax/annotation/processing/AbstractProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SupportedSourceVersion annotation found on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-interface {v1, v2, v3}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 131
    :cond_47
    :goto_47
    return-object v0

    .line 130
    :cond_48
    invoke-interface {v0}, Ljavax/annotation/processing/SupportedSourceVersion;->value()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    goto :goto_47
.end method

.method public init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .registers 4

    monitor-enter p0

    .line 147
    :try_start_1
    iget-boolean v0, p0, Ljavax/annotation/processing/AbstractProcessor;->initialized:Z

    if-nez v0, :cond_19

    .line 149
    if-eqz p1, :cond_e

    .line 152
    iput-object p1, p0, Ljavax/annotation/processing/AbstractProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/annotation/processing/AbstractProcessor;->initialized:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 154
    monitor-exit p0

    return-void

    .line 150
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tool provided null ProcessingEnvironment"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    .line 146
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call init more than once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_16
.end method

.method protected isInitialized()Z
    .registers 2

    monitor-enter p0

    .line 185
    :try_start_1
    iget-boolean v0, p0, Ljavax/annotation/processing/AbstractProcessor;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation
.end method
