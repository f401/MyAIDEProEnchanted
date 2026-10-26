.class public abstract Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "BaseAnnotations.java"


# instance fields
.field private final annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

.field private final byteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 46
    :try_start_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->isMutable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    .line 55
    iput p3, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->byteLength:I

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "annotations.isMutable()"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final byteLength()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->byteLength:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->annotations:Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    return-object v0
.end method
