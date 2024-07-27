.class Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final access:I

.field final desc:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    iput p2, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->access:I

    iput-object p3, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->compareTo(Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;)I
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    iget-object v1, p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->compareTo(Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
