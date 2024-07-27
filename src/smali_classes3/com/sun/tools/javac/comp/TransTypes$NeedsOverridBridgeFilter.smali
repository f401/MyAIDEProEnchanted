.class Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;
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
    name = "NeedsOverridBridgeFilter"
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
.field c:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field final this$0:Lcom/sun/tools/javac/comp/TransTypes;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/TransTypes;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 3

    .line 806
    iput-object p1, p0, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;->this$0:Lcom/sun/tools/javac/comp/TransTypes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p2, p0, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;->c:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 808
    return-void
.end method


# virtual methods
.method public accepts(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    .line 810
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 811
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;->c:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;->this$0:Lcom/sun/tools/javac/comp/TransTypes;

    .line 812
    invoke-static {v1}, Lcom/sun/tools/javac/comp/TransTypes;->access$000(Lcom/sun/tools/javac/comp/TransTypes;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x20000001000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 810
    :goto_0
    return v0

    .line 814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 802
    check-cast p1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/TransTypes$NeedsOverridBridgeFilter;->accepts(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    return v0
.end method
