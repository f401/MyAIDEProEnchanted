.class Lcom/sun/tools/javac/comp/Check$ClashFilter;
.super Ljava/lang/Object;
.source "Check.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClashFilter"
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
.field site:Lcom/sun/tools/javac/code/Type;

.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 2162
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$ClashFilter;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2163
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Check$ClashFilter;->site:Lcom/sun/tools/javac/code/Type;

    .line 2164
    return-void
.end method


# virtual methods
.method public accepts(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    .line 2172
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2173
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2174
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Check$ClashFilter;->shouldSkip(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$ClashFilter;->site:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$ClashFilter;->this$0:Lcom/sun/tools/javac/comp/Check;

    .line 2175
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Check;->access$600(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2172
    :goto_0
    return v0

    .line 2176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 2158
    check-cast p1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Check$ClashFilter;->accepts(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    return v0
.end method

.method shouldSkip(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    .line 2167
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$ClashFilter;->site:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
