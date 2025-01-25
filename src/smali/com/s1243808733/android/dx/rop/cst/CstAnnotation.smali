.class public final Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;
.super Lcom/s1243808733/android/dx/rop/cst/Constant;
.source "CstAnnotation.java"


# instance fields
.field private final annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;-><init>()V

    if-eqz p1, :cond_b

    .line 38
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->throwIfMutable()V

    .line 40
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    return-void

    .line 35
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotation == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 46
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotation()Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "annotation"

    return-object v0
.end method
