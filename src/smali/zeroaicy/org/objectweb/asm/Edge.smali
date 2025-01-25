.class final Lzeroaicy/org/objectweb/asm/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# static fields
.field static final EXCEPTION:I = 0x7fffffff

.field static final JUMP:I


# instance fields
.field final info:I

.field nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

.field final successor:Lzeroaicy/org/objectweb/asm/Label;


# direct methods
.method constructor <init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    .line 88
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 89
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    return-void
.end method
