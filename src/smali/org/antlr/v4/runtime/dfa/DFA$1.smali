.class Lorg/antlr/v4/runtime/dfa/DFA$1;
.super Ljava/lang/Object;
.source "DFA.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/dfa/DFA;->getStates()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/antlr/v4/runtime/dfa/DFAState;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/dfa/DFA;


# direct methods
.method constructor <init>(Lorg/antlr/v4/runtime/dfa/DFA;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFA$1;->this$0:Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 163
    check-cast p1, Lorg/antlr/v4/runtime/dfa/DFAState;

    check-cast p2, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/dfa/DFA$1;->compare(Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/dfa/DFAState;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/dfa/DFAState;)I
    .registers 3

    .line 166
    iget p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    iget p2, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    sub-int/2addr p1, p2

    return p1
.end method
