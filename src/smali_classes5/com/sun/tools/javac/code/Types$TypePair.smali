.class Lcom/sun/tools/javac/code/Types$TypePair;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypePair"
.end annotation


# instance fields
.field final t1:Lcom/sun/tools/javac/code/Type;

.field final t2:Lcom/sun/tools/javac/code/Type;

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 2797
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$TypePair;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2798
    iput-object p2, p0, Lcom/sun/tools/javac/code/Types$TypePair;->t1:Lcom/sun/tools/javac/code/Type;

    .line 2799
    iput-object p3, p0, Lcom/sun/tools/javac/code/Types$TypePair;->t2:Lcom/sun/tools/javac/code/Type;

    .line 2800
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 2807
    instance-of v1, p1, Lcom/sun/tools/javac/code/Types$TypePair;

    if-nez v1, :cond_6

    .line 2810
    :cond_5
    :goto_5
    return v0

    .line 2809
    :cond_6
    check-cast p1, Lcom/sun/tools/javac/code/Types$TypePair;

    .line 2810
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$TypePair;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$TypePair;->t1:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Types$TypePair;->t1:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$TypePair;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$TypePair;->t2:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Types$TypePair;->t2:Lcom/sun/tools/javac/code/Type;

    .line 2811
    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .line 2803
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$TypePair;->t1:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->hashCode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$TypePair;->t2:Lcom/sun/tools/javac/code/Type;

    invoke-static {v1}, Lcom/sun/tools/javac/code/Types;->hashCode(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
