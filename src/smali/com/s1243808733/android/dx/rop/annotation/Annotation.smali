.class public final Lcom/s1243808733/android/dx/rop/annotation/Annotation;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/util/MutabilityControl;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/rop/annotation/Annotation;",
        ">;",
        "Lcom/s1243808733/android/dx/util/ToHuman;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 60
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visibility == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->throwIfImmutable()V

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pair == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)I
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 106
    iget-object v0, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 108
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 110
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 112
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 33
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 67
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 73
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    if-ne v1, v2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNameValuePairs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getVisibility()Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->hashCode()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public put(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->throwIfImmutable()V

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pair == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->visibility:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, "-annotation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 150
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 148
    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
