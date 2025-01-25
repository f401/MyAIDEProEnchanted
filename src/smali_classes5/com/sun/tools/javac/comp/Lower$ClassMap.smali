.class Lcom/sun/tools/javac/comp/Lower$ClassMap;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClassMap"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Lower;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$ClassMap;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$ClassMap;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 170
    return-void
.end method
