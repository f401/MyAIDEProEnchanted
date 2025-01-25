.class Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;
.super Lcom/sun/tools/javac/code/Type$ForAll;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninferredReturnType"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;->this$0:Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;

    .line 552
    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    .line 553
    return-void
.end method


# virtual methods
.method public getConstraints(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;->this$0:Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->getConstraints(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public inst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Types;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 556
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Type$ForAll;->inst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType$UninferredReturnType;->this$0:Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sun/tools/javac/comp/Infer$UninferredMethodType;->instantiateReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Types;)V

    .line 558
    return-object v0
.end method
