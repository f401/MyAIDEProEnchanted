.class Lsun/misc/QueueElement;
.super Ljava/lang/Object;
.source "Queue.java"


# instance fields
.field next:Lsun/misc/QueueElement;

.field obj:Ljava/lang/Object;

.field prev:Lsun/misc/QueueElement;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object v0, p0, Lsun/misc/QueueElement;->next:Lsun/misc/QueueElement;

    .line 202
    iput-object v0, p0, Lsun/misc/QueueElement;->prev:Lsun/misc/QueueElement;

    .line 204
    iput-object v0, p0, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    .line 207
    iput-object p1, p0, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    .line 208
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QueueElement[obj="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/misc/QueueElement;->prev:Lsun/misc/QueueElement;

    if-nez v0, :cond_0

    const-string v0, " null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lsun/misc/QueueElement;->next:Lsun/misc/QueueElement;

    if-nez v0, :cond_1

    const-string v0, " null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    return-object v0

    :cond_0
    const-string v0, " prev"

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, " next"

    goto :goto_1
.end method
