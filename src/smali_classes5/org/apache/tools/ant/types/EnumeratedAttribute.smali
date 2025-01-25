.class public abstract Lorg/apache/tools/ant/types/EnumeratedAttribute;
.super Ljava/lang/Object;
.source "EnumeratedAttribute.java"


# instance fields
.field private index:I

.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->index:I

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/types/EnumeratedAttribute;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/tools/ant/types/EnumeratedAttribute;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/tools/ant/types/EnumeratedAttribute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 72
    const-class v0, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 78
    const/4 v0, 0x0

    :try_start_9
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/EnumeratedAttribute;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1c

    .line 81
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->setValue(Ljava/lang/String;)V

    .line 83
    return-object v0

    .line 79
    :catch_1c
    move-exception v0

    .line 80
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :cond_23
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You have to provide a subclass from EnumeratedAttribute as clazz-parameter."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/String;)Z
    .registers 4

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->indexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final getIndex()I
    .registers 2

    .line 141
    iget v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->index:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValues()[Ljava/lang/String;
.end method

.method public final indexOfValue(Ljava/lang/String;)I
    .registers 6

    const/4 v1, -0x1

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->getValues()[Ljava/lang/String;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 126
    :cond_a
    :goto_a
    return v0

    .line 121
    :cond_b
    const/4 v0, 0x0

    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 122
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    move v0, v1

    .line 126
    goto :goto_a
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->indexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 93
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 96
    iput v0, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->index:I

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/types/EnumeratedAttribute;->value:Ljava/lang/String;

    .line 98
    return-void

    .line 94
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a legal value for this attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
