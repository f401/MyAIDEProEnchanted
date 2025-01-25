.class public Ljavax/lang/model/type/MirroredTypeException;
.super Ljavax/lang/model/type/MirroredTypesException;
.source "MirroredTypeException.java"


# static fields
.field private static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to access Class object for TypeMirror "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/lang/model/type/MirroredTypesException;-><init>(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V

    .line 58
    iput-object p1, p0, Ljavax/lang/model/type/MirroredTypeException;->type:Ljavax/lang/model/type/TypeMirror;

    .line 59
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 78
    iput-object v0, p0, Ljavax/lang/model/type/MirroredTypeException;->type:Ljavax/lang/model/type/TypeMirror;

    .line 79
    iput-object v0, p0, Ljavax/lang/model/type/MirroredTypeException;->types:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public getTypeMirror()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 69
    iget-object v0, p0, Ljavax/lang/model/type/MirroredTypeException;->type:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method
