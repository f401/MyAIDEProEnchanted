.class public Lcom/sun/tools/javac/code/Type$TypeVar;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/TypeVariable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeVar"
.end annotation


# instance fields
.field public bound:Lcom/sun/tools/javac/code/Type;

.field public lower:Lcom/sun/tools/javac/code/Type;

.field rank_field:I


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 1065
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1078
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    .line 1066
    iput-object p2, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1067
    iput-object p3, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->lower:Lcom/sun/tools/javac/code/Type;

    .line 1068
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V
    .registers 11

    const/4 v1, 0x0

    .line 1059
    const/16 v0, 0xe

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1049
    iput-object v1, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1078
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    .line 1060
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1061
    iput-object p3, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->lower:Lcom/sun/tools/javac/code/Type;

    .line 1062
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

    .line 1072
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Type$Visitor;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1094
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 1037
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 1086
    sget-object v0, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getLowerBound()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1082
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->lower:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic getLowerBound()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 1037
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$TypeVar;->getLowerBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBound()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic getUpperBound()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 1037
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$TypeVar;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public isCaptured()Z
    .registers 2

    .line 1090
    const/4 v0, 0x0

    return v0
.end method
