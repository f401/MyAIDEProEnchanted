.class Lcom/sun/tools/javac/code/Types$SingletonType;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingletonType"
.end annotation


# instance fields
.field final t:Lcom/sun/tools/javac/code/Type;

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 3738
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$SingletonType;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3739
    iput-object p2, p0, Lcom/sun/tools/javac/code/Types$SingletonType;->t:Lcom/sun/tools/javac/code/Type;

    .line 3740
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 3745
    instance-of v0, p1, Lcom/sun/tools/javac/code/Types$SingletonType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$SingletonType;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$SingletonType;->t:Lcom/sun/tools/javac/code/Type;

    check-cast p1, Lcom/sun/tools/javac/code/Types$SingletonType;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Types$SingletonType;->t:Lcom/sun/tools/javac/code/Type;

    .line 3746
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3745
    :goto_0
    return v0

    .line 3746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    .line 3742
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$SingletonType;->t:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->hashCode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3749
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$SingletonType;->t:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
