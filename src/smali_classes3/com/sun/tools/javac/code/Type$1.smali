.class Lcom/sun/tools/javac/code/Type$1;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Type;

.field final val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)V
    .registers 5

    .line 202
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$1;->this$0:Lcom/sun/tools/javac/code/Type;

    iput-object p4, p0, Lcom/sun/tools/javac/code/Type$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public baseType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$1;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public constValue()Ljava/lang/Object;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method
