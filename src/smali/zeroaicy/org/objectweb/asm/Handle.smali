.class public final Lzeroaicy/org/objectweb/asm/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private final isInterface:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/String;

.field private final tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/16 v0, 0x9

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_9

    :cond_7
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 76
    :goto_9
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lzeroaicy/org/objectweb/asm/Handle;->tag:I

    .line 100
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/Handle;->owner:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/Handle;->name:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lzeroaicy/org/objectweb/asm/Handle;->descriptor:Ljava/lang/String;

    .line 103
    iput-boolean p5, p0, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 160
    :cond_4
    instance-of v1, p1, Lzeroaicy/org/objectweb/asm/Handle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 163
    :cond_a
    check-cast p1, Lzeroaicy/org/objectweb/asm/Handle;

    .line 164
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->tag:I

    iget v3, p1, Lzeroaicy/org/objectweb/asm/Handle;->tag:I

    if-ne v1, v3, :cond_3d

    iget-boolean v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p1, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    if-nez v1, :cond_3d

    goto :goto_1f

    :cond_1b
    iget-boolean v1, p1, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    if-eqz v1, :cond_3d

    :goto_1f
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->owner:Ljava/lang/String;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->name:Ljava/lang/String;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->descriptor:Ljava/lang/String;

    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Handle;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    :cond_3d
    const/4 v0, 0x0

    :cond_3e
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handle;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handle;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 115
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Handle;->tag:I

    return v0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 173
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Handle;->tag:I

    iget-boolean v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x40

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Handle;->descriptor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isInterface()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 188
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

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Handle;->descriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lzeroaicy/org/objectweb/asm/Handle;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lzeroaicy/org/objectweb/asm/Handle;->isInterface:Z

    if-eqz v2, :cond_76

    const-string v2, " itf"

    goto :goto_78

    :cond_76
    const-string v2, ""

    :goto_78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
