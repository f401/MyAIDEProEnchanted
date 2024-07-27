.class Lcom/sun/tools/javac/jvm/Items$1;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/jvm/Items;-><init>(Lcom/sun/tools/javac/jvm/Pool;Lcom/sun/tools/javac/jvm/Code;Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Types;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;I)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$1;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 88
    const-string v0, "void"

    return-object v0
.end method
