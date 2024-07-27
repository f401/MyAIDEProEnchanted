.class public Lcom/sun/tools/javac/code/Type$ErrorType;
.super Lcom/sun/tools/javac/code/Type$ClassType;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/ErrorType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorType"
.end annotation


# instance fields
.field private originalType:Lcom/sun/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 1349
    invoke-direct {p0, p2, p1}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1350
    iput-object p0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1351
    const/16 v0, 0x1f

    iput v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->kind:I

    .line 1352
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 1353
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 6

    const/4 v2, 0x0

    .line 1342
    sget-object v0, Lcom/sun/tools/javac/code/Type$ErrorType;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1339
    iput-object v2, p0, Lcom/sun/tools/javac/code/Type$ErrorType;->originalType:Lcom/sun/tools/javac/code/Type;

    .line 1343
    const/16 v0, 0x13

    iput v0, p0, Lcom/sun/tools/javac/code/Type$ErrorType;->tag:I

    .line 1344
    iput-object p2, p0, Lcom/sun/tools/javac/code/Type$ErrorType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1345
    if-nez p1, :cond_0

    sget-object p1, Lcom/sun/tools/javac/code/Type$ErrorType;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    :cond_0
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$ErrorType;->originalType:Lcom/sun/tools/javac/code/Type;

    .line 1346
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)V
    .registers 11

    .line 1356
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000009

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-direct {p0, v1, p3}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)V

    .line 1357
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Type$Visitor",
            "<TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 1361
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Type$Visitor;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/type/TypeVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1387
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public allparams()Lcom/sun/tools/javac/util/List;
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

    .line 1375
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public asSub(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1367
    return-object p0
.end method

.method public constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1364
    return-object p0
.end method

.method public getEnclosingType()Lcom/sun/tools/javac/code/Type;
    .registers 1

    .line 1365
    return-object p0
.end method

.method public bridge synthetic getEnclosingType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 1336
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ErrorType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 1379
    sget-object v0, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getOriginalType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1383
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ErrorType;->originalType:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public getReturnType()Lcom/sun/tools/javac/code/Type;
    .registers 1

    .line 1366
    return-object p0
.end method

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

    .line 1376
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 1336
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ErrorType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCompound()Z
    .registers 2

    .line 1372
    const/4 v0, 0x0

    return v0
.end method

.method public isErroneous()Z
    .registers 2

    .line 1371
    const/4 v0, 0x1

    return v0
.end method

.method public isGenType(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 1370
    const/4 v0, 0x1

    return v0
.end method

.method public isInterface()Z
    .registers 2

    .line 1373
    const/4 v0, 0x0

    return v0
.end method

.method public map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1368
    return-object p0
.end method
