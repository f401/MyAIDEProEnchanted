.class Lcom/sun/tools/javac/code/Types$13;
.super Lcom/sun/tools/javac/code/Type$Mapping;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V
    .registers 3

    .line 1428
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$13;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Type$Mapping;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1429
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$13;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
