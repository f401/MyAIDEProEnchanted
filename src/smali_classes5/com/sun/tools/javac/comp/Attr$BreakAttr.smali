.class Lcom/sun/tools/javac/comp/Attr$BreakAttr;
.super Ljava/lang/RuntimeException;
.source "Attr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BreakAttr"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x6019baa772b26305L


# instance fields
.field private env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sun/tools/javac/comp/Env;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Attr$BreakAttr;->env:Lcom/sun/tools/javac/comp/Env;

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/comp/Attr$1;)V
    .registers 3

    .line 376
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Attr$BreakAttr;-><init>(Lcom/sun/tools/javac/comp/Env;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/comp/Attr$BreakAttr;)Lcom/sun/tools/javac/comp/Env;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$BreakAttr;->env:Lcom/sun/tools/javac/comp/Env;

    return-object v0
.end method
