.class public Lcom/s1243808733/data/CodeHighlight;
.super Ljava/lang/Object;
.source "CodeHighlight.java"


# instance fields
.field private data:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/s1243808733/data/CodeHighlight;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/s1243808733/data/CodeHighlight;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/s1243808733/data/CodeHighlight;->data:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/s1243808733/data/CodeHighlight;->name:Ljava/lang/String;

    return-void
.end method
