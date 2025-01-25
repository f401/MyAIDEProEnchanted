.class Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$2;
.super Lcom/sun/tools/javac/code/Type$ErrorType;
.source "MemberEnter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizeClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 4

    .line 1172
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$2;->this$1:Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;

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

    .line 1175
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$2;->typarams_field:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 1172
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$2;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
