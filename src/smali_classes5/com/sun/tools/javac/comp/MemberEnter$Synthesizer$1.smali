.class Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;
.super Lcom/sun/tools/javac/code/Type$ErrorType;
.source "MemberEnter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;

.field final val$actuals:Lcom/sun/tools/javac/util/List;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/List;)V
    .registers 5

    .line 1159
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;->this$1:Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;->val$actuals:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public getTypeArguments()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;->val$actuals:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 1159
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
