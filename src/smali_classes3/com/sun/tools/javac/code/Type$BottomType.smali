.class Lcom/sun/tools/javac/code/Type$BottomType;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/NullType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BottomType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1312
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1313
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

    .line 1322
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1327
    return-object p0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 1317
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public stringValue()Ljava/lang/String;
    .registers 2

    .line 1332
    const-string v0, "null"

    return-object v0
.end method
