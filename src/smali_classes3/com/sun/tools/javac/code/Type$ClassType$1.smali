.class Lcom/sun/tools/javac/code/Type$ClassType$1;
.super Lcom/sun/tools/javac/code/Type$ClassType;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Type$ClassType;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Type$ClassType;

.field final val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)V
    .registers 6

    .line 630
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$ClassType$1;->this$0:Lcom/sun/tools/javac/code/Type$ClassType;

    iput-object p5, p0, Lcom/sun/tools/javac/code/Type$ClassType$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 630
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    return-object v0
.end method

.method public baseType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType$1;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public constValue()Ljava/lang/Object;
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getEnclosingType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 630
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 630
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
