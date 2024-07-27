.class final Lzeroaicy/org/objectweb/asm/CurrentFrame;
.super Lzeroaicy/org/objectweb/asm/Frame;
.source "CurrentFrame.java"


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    return-void
.end method


# virtual methods
.method execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lzeroaicy/org/objectweb/asm/Symbol;",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 52
    new-instance v1, Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v1, v0}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v1, v0}, Lzeroaicy/org/objectweb/asm/CurrentFrame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/Frame;I)Z

    .line 54
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/CurrentFrame;->copyFrom(Lzeroaicy/org/objectweb/asm/Frame;)V

    return-void
.end method
