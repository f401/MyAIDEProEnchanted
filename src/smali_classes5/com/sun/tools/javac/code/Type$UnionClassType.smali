.class public Lcom/sun/tools/javac/code/Type$UnionClassType;
.super Lcom/sun/tools/javac/code/Type$ClassType;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/UnionType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionClassType"
.end annotation


# instance fields
.field final alternatives_field:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ClassType;",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 793
    invoke-static {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->access$000(Lcom/sun/tools/javac/code/Type$ClassType;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 794
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    .line 795
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 796
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 797
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->all_interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 798
    iput-object p2, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->alternatives_field:Lcom/sun/tools/javac/util/List;

    .line 799
    return-void
.end method


# virtual methods
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

    .line 816
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitUnion(Ljavax/lang/model/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAlternatives()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->alternatives_field:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 811
    sget-object v0, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getLub()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$UnionClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method
