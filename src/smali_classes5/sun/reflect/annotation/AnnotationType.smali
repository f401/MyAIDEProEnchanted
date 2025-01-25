.class public Lsun/reflect/annotation/AnnotationType;
.super Ljava/lang/Object;
.source "AnnotationType.java"


# instance fields
.field private inherited:Z

.field private final memberDefaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final memberTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private retention:Ljava/lang/annotation/RetentionPolicy;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    .line 65
    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    iput-object v0, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    .line 70
    iput-boolean v1, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 100
    new-instance v0, Lsun/reflect/annotation/AnnotationType$1;

    invoke-direct {v0, p0, p1}, Lsun/reflect/annotation/AnnotationType$1;-><init>(Lsun/reflect/annotation/AnnotationType;Ljava/lang/Class;)V

    .line 101
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    .line 109
    array-length v2, v0

    :goto_31
    if-ge v1, v2, :cond_7c

    aget-object v3, v0, v1

    .line 110
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_65

    .line 112
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 114
    iget-object v6, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    invoke-static {v5}, Lsun/reflect/annotation/AnnotationType;->invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v5, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v5

    .line 118
    if-eqz v5, :cond_5d

    .line 119
    iget-object v6, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_5d
    iget-object v5, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 111
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_7c
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaLangAccess()Lsun/misc/JavaLangAccess;

    move-result-object v0

    .line 125
    invoke-interface {v0, p1, p0}, Lsun/misc/JavaLangAccess;->setAnnotationType(Ljava/lang/Class;Lsun/reflect/annotation/AnnotationType;)V

    .line 129
    const-class v0, Ljava/lang/annotation/Retention;

    if-eq p1, v0, :cond_a1

    const-class v0, Ljava/lang/annotation/Inherited;

    if-eq p1, v0, :cond_a1

    .line 131
    const-class v0, Ljava/lang/annotation/Retention;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Retention;

    .line 132
    if-nez v0, :cond_a2

    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    :goto_97
    iput-object v0, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    .line 133
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    .line 135
    :cond_a1
    return-void

    .line 132
    :cond_a2
    invoke-interface {v0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    goto :goto_97

    .line 98
    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an annotation type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;
    .registers 3

    const-class v0, Lsun/reflect/annotation/AnnotationType;

    monitor-enter v0

    .line 81
    :try_start_3
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaLangAccess()Lsun/misc/JavaLangAccess;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0}, Lsun/misc/JavaLangAccess;->getAnnotationType(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;

    move-result-object v0

    .line 83
    if-nez v0, :cond_12

    .line 84
    new-instance v0, Lsun/reflect/annotation/AnnotationType;

    invoke-direct {v0, p0}, Lsun/reflect/annotation/AnnotationType;-><init>(Ljava/lang/Class;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 86
    :cond_12
    const-class v1, Lsun/reflect/annotation/AnnotationType;

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_16
    move-exception v0

    const-class v1, Lsun/reflect/annotation/AnnotationType;

    monitor-exit v1

    throw v0
.end method

.method public static invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    .line 145
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 146
    const-class p0, Ljava/lang/Byte;

    .line 163
    :cond_6
    :goto_6
    return-object p0

    .line 147
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    .line 148
    const-class p0, Ljava/lang/Character;

    goto :goto_6

    .line 149
    :cond_e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    .line 150
    const-class p0, Ljava/lang/Double;

    goto :goto_6

    .line 151
    :cond_15
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    .line 152
    const-class p0, Ljava/lang/Float;

    goto :goto_6

    .line 153
    :cond_1c
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    .line 154
    const-class p0, Ljava/lang/Integer;

    goto :goto_6

    .line 155
    :cond_23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    .line 156
    const-class p0, Ljava/lang/Long;

    goto :goto_6

    .line 157
    :cond_2a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    .line 158
    const-class p0, Ljava/lang/Short;

    goto :goto_6

    .line 159
    :cond_31
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 160
    const-class p0, Ljava/lang/Boolean;

    goto :goto_6
.end method


# virtual methods
.method public isInherited()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    return v0
.end method

.method public memberDefaults()Ljava/util/Map;
    .registers 2
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

    .line 187
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    return-object v0
.end method

.method public memberTypes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    return-object v0
.end method

.method public members()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    return-object v0
.end method

.method public retention()Ljava/lang/annotation/RetentionPolicy;
    .registers 2

    .line 194
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Annotation Type:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Member types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Member defaults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Retention policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Inherited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
