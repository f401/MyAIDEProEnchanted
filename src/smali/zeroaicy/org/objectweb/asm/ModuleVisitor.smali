.class public abstract Lzeroaicy/org/objectweb/asm/ModuleVisitor;
.super Ljava/lang/Object;
.source "ModuleVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    .line 57
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    invoke-direct {p0, p1, v1}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;-><init>(ILzeroaicy/org/objectweb/asm/ModuleVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/ModuleVisitor;)V
    .locals 3

    const/high16 v1, 0x10a0000

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 76
    :cond_0
    if-ne p1, v1, :cond_1

    .line 79
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 81
    :cond_1
    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->api:I

    .line 82
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    return-void

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported api "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/ModuleVisitor;
    .locals 1

    .line 92
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    return-object v0
.end method

.method public visitEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->mv:Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
