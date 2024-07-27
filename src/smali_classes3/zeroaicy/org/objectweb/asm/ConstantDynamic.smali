.class public final Lzeroaicy/org/objectweb/asm/ConstantDynamic;
.super Ljava/lang/Object;
.source "ConstantDynamic.java"


# instance fields
.field private final bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

.field private final bootstrapMethodArguments:[Ljava/lang/Object;

.field private final descriptor:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

    .line 71
    iput-object p4, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 147
    if-ne p1, p0, :cond_2

    :cond_0
    move v0, v1

    .line 154
    :cond_1
    :goto_0
    return v0

    .line 150
    :cond_2
    instance-of v2, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-eqz v2, :cond_1

    .line 153
    check-cast p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    .line 154
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->name:Ljava/lang/String;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/Handle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getBootstrapMethod()Lzeroaicy/org/objectweb/asm/Handle;
    .registers 2

    .line 98
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

    return-object v0
.end method

.method public getBootstrapMethodArgument(I)Ljava/lang/Object;
    .registers 3

    .line 121
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBootstrapMethodArgumentCount()I
    .registers 2

    .line 109
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method getBootstrapMethodArgumentsUnsafe()[Ljava/lang/Object;
    .registers 2

    .line 132
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .registers 3

    .line 141
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 162
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Handle;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v7, 0x20

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->descriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethod:Lzeroaicy/org/objectweb/asm/Handle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ConstantDynamic;->bootstrapMethodArguments:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
