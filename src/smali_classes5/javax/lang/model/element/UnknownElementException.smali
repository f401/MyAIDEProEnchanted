.class public Ljavax/lang/model/element/UnknownElementException;
.super Ljavax/lang/model/UnknownEntityException;
.source "UnknownElementException.java"


# static fields
.field private static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient element:Ljavax/lang/model/element/Element;

.field private transient parameter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/Element;Ljava/lang/Object;)V
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/lang/model/UnknownEntityException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Ljavax/lang/model/element/UnknownElementException;->element:Ljavax/lang/model/element/Element;

    .line 63
    iput-object p2, p0, Ljavax/lang/model/element/UnknownElementException;->parameter:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .registers 2

    .line 83
    iget-object v0, p0, Ljavax/lang/model/element/UnknownElementException;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnknownElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 74
    iget-object v0, p0, Ljavax/lang/model/element/UnknownElementException;->element:Ljavax/lang/model/element/Element;

    return-object v0
.end method
