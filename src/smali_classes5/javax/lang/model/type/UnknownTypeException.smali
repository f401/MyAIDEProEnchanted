.class public Ljavax/lang/model/type/UnknownTypeException;
.super Ljavax/lang/model/UnknownEntityException;
.source "UnknownTypeException.java"


# static fields
.field private static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient parameter:Ljava/lang/Object;

.field private transient type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/lang/model/UnknownEntityException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Ljavax/lang/model/type/UnknownTypeException;->type:Ljavax/lang/model/type/TypeMirror;

    .line 63
    iput-object p2, p0, Ljavax/lang/model/type/UnknownTypeException;->parameter:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .registers 2

    .line 83
    iget-object v0, p0, Ljavax/lang/model/type/UnknownTypeException;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnknownType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 74
    iget-object v0, p0, Ljavax/lang/model/type/UnknownTypeException;->type:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method
