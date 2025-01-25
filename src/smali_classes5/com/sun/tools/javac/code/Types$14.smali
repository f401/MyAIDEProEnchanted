.class Lcom/sun/tools/javac/code/Types$14;
.super Lcom/sun/tools/javac/code/Types$SimpleVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Type;",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 1457
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1486
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1457
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$14;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 1465
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, p2, :cond_5

    .line 1481
    :cond_4
    :goto_4
    return-object p1

    .line 1468
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1469
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1d

    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_27

    .line 1470
    :cond_1d
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_27

    move-object p1, v0

    .line 1472
    goto :goto_4

    .line 1474
    :cond_27
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_51

    .line 1475
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_3b
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1476
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v0, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 1477
    if-nez p1, :cond_4

    .line 1475
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3b

    .line 1481
    :cond_51
    const/4 p1, 0x0

    goto :goto_4
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1457
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$14;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1499
    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1457
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$14;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 1460
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1457
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$14;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1491
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, p2, :cond_5

    .line 1494
    :goto_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$14;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_4
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1457
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$14;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
