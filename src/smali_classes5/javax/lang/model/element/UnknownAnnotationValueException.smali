.class public Ljavax/lang/model/element/UnknownAnnotationValueException;
.super Ljavax/lang/model/UnknownEntityException;
.source "UnknownAnnotationValueException.java"


# static fields
.field private static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient av:Ljavax/lang/model/element/AnnotationValue;

.field private transient parameter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)V
    .registers 5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown annotation value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/lang/model/UnknownEntityException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Ljavax/lang/model/element/UnknownAnnotationValueException;->av:Ljavax/lang/model/element/AnnotationValue;

    .line 65
    iput-object p2, p0, Ljavax/lang/model/element/UnknownAnnotationValueException;->parameter:Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .registers 2

    .line 85
    iget-object v0, p0, Ljavax/lang/model/element/UnknownAnnotationValueException;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnknownAnnotationValue()Ljavax/lang/model/element/AnnotationValue;
    .registers 2

    .line 76
    iget-object v0, p0, Ljavax/lang/model/element/UnknownAnnotationValueException;->av:Ljavax/lang/model/element/AnnotationValue;

    return-object v0
.end method
