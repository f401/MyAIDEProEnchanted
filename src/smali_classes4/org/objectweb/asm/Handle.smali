.class public final Lorg/objectweb/asm/Handle;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/Handle;->a:I

    iput-object p2, p0, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/objectweb/asm/Handle;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/objectweb/asm/Handle;

    iget v2, p0, Lorg/objectweb/asm/Handle;->a:I

    iget v3, p1, Lorg/objectweb/asm/Handle;->a:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    iget-object v3, p1, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    iget-object v3, p1, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/Handle;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/Handle;->a:I

    iget-object v1, p0, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/Handle;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
