.class Lcom/sun/tools/javac/comp/Resolve$1;
.super Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Resolve;->mostSpecific(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Resolve;

.field final val$site:Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V
    .registers 16

    .line 784
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$1;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iput-object p7, p0, Lcom/sun/tools/javac/comp/Resolve$1;->val$site:Lcom/sun/tools/javac/code/Type;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$1;->val$site:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne p1, v0, :cond_0

    .line 790
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p0

    goto :goto_0
.end method
