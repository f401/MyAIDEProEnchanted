.class public final Lcom/s1243808733/android/dx/rop/annotation/Annotations;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "Annotations.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/util/MutabilityControl;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/annotation/Annotations;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/rop/annotation/Annotations;


# instance fields
.field private final annotations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    .line 35
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    return-void
.end method

.method public static combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    .line 75
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->addAll(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 77
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    return-object v0
.end method

.method public static combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 52
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    .line 54
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->addAll(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->addAll(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)V

    .line 56
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->throwIfImmutable()V

    if-eqz p1, :cond_2f

    .line 176
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 183
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 179
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "duplicate type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotation == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)V
    .registers 3

    .line 194
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->throwIfImmutable()V

    if-eqz p1, :cond_20

    .line 200
    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 201
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    goto :goto_f

    :cond_1f
    return-void

    .line 197
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "toAdd == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :goto_28
    throw p1

    :goto_29
    goto :goto_28
.end method

.method public compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 113
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 117
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)I

    move-result v1

    if-eqz v1, :cond_14

    return v1

    .line 123
    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 p1, 0x1

    return p1

    .line 125
    :cond_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, -0x1

    return p1

    :cond_43
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotations;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 98
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    .line 104
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "annotations{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    goto :goto_27

    .line 144
    :cond_22
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_27
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 149
    :cond_2f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
