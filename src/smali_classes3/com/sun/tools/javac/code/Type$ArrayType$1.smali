.class Lcom/sun/tools/javac/code/Type$ArrayType$1;
.super Lcom/sun/tools/javac/code/Type$ArrayType;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Type$ArrayType;->makeVarargs()Lcom/sun/tools/javac/code/Type$ArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Type$ArrayType;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 4

    .line 869
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$ArrayType$1;->this$0:Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getComponentType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 869
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type$ArrayType;->getComponentType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public isVarargs()Z
    .registers 2

    .line 872
    const/4 v0, 0x1

    return v0
.end method
