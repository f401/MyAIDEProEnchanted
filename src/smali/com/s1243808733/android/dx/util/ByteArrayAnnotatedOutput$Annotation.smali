.class Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
.super Ljava/lang/Object;
.source "ByteArrayAnnotatedOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Annotation"
.end annotation


# instance fields
.field private end:I

.field private final start:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->start:I

    .line 593
    iput p2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->end:I

    .line 594
    iput-object p3, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 604
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    .line 643
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->end:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 634
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->start:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setEnd(I)V
    .registers 2

    .line 625
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->end:I

    return-void
.end method

.method public setEndIfUnset(I)V
    .registers 4

    .line 614
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->end:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 615
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->end:I

    :cond_9
    return-void
.end method
