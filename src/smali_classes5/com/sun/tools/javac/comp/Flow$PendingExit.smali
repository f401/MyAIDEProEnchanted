.class Lcom/sun/tools/javac/comp/Flow$PendingExit;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingExit"
.end annotation


# instance fields
.field inits:Lcom/sun/tools/javac/util/Bits;

.field thrown:Lcom/sun/tools/javac/code/Type;

.field tree:Lcom/sun/tools/javac/tree/JCTree;

.field uninits:Lcom/sun/tools/javac/util/Bits;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 302
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->thrown:Lcom/sun/tools/javac/code/Type;

    .line 303
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/Bits;Lcom/sun/tools/javac/util/Bits;)V
    .registers 5

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 297
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->inits:Lcom/sun/tools/javac/util/Bits;

    .line 298
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Flow$PendingExit;->uninits:Lcom/sun/tools/javac/util/Bits;

    .line 299
    return-void
.end method
