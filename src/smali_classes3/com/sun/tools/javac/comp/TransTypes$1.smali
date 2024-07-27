.class Lcom/sun/tools/javac/comp/TransTypes$1;
.super Ljava/lang/Object;
.source "TransTypes.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/TransTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/util/Filter",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/TransTypes;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/TransTypes;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes$1;->this$0:Lcom/sun/tools/javac/comp/TransTypes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    .line 331
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x20000001000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 329
    check-cast p1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/TransTypes$1;->accepts(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    return v0
.end method
