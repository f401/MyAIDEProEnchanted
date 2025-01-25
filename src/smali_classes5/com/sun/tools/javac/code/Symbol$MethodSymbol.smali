.class public Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
.super Lcom/sun/tools/javac/code/Symbol;
.source "Symbol.java"

# interfaces
.implements Ljavax/lang/model/element/ExecutableElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodSymbol"
.end annotation


# static fields
.field private static final implementation_filter:Lcom/sun/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:Lcom/sun/tools/javac/jvm/Code;

.field public defaultValue:Lcom/sun/tools/javac/code/Attribute;

.field public params:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation
.end field

.field public savedParameterNames:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1224
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol$1;

    invoke-direct {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol$1;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation_filter:Lcom/sun/tools/javac/util/Filter;

    return-void
.end method

.method public constructor <init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 15

    const/4 v7, 0x0

    .line 1049
    const/16 v1, 0x10

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symbol;-><init>(IJLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1032
    iput-object v7, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1035
    iput-object v7, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    .line 1044
    iput-object v7, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;

    .line 1050
    iget-object v0, p5, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 1051
    :cond_30
    return-void
.end method

.method private createArgName(ILcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/Name;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            ">;)",
            "Lcom/sun/tools/javac/util/Name;"
        }
    .end annotation

    .line 1290
    const-string v0, "arg"

    .line 1292
    :goto_2
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Name$Table;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 1293
    invoke-virtual {p2, v1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1294
    return-object v1

    .line 1295
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private isOverridableIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z
    .registers 12

    const-wide/16 v8, 0x200

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1198
    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz v2, :cond_21

    if-eq v2, v0, :cond_1f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_14

    .line 1212
    :cond_13
    :goto_13
    return v1

    .line 1204
    :cond_14
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_36

    :goto_1d
    move v1, v0

    goto :goto_13

    :cond_1f
    move v1, v0

    .line 1202
    goto :goto_13

    .line 1208
    :cond_21
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-ne v2, v3, :cond_13

    .line 1210
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_13

    move v1, v0

    goto :goto_13

    :cond_36
    move v0, v1

    goto :goto_1d
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol$Visitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1336
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/ElementVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1332
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/ElementVisitor;->visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 10

    .line 1300
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p2, p1, p0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    return-object v1
.end method

.method public bridge synthetic asType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 1029
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public binaryImplementation(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 7

    .line 1141
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_39

    .line 1142
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v0

    .line 1143
    :goto_e
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_2f

    .line 1145
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_29

    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1146
    invoke-virtual {v0, p0, p1, p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->binaryOverrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1147
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1150
    :goto_28
    return-object v0

    .line 1144
    :cond_29
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v1, v0

    goto :goto_e

    .line 1141
    :cond_2f
    iget-object v0, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v2, v0

    goto :goto_1

    .line 1150
    :cond_39
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public binaryOverrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1116
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-eq v0, v3, :cond_10

    :cond_e
    move v1, v2

    .line 1128
    :cond_f
    :goto_f
    return v1

    .line 1118
    :cond_10
    if-eq p0, p1, :cond_f

    .line 1119
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1122
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p1, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isOverridableIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1123
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1124
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1128
    :cond_38
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_62

    .line 1130
    invoke-direct {p1, p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isOverridableIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1131
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1132
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    :goto_60
    move v1, v0

    .line 1128
    goto :goto_f

    :cond_62
    move v0, v2

    goto :goto_60
.end method

.method public clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 9

    .line 1056
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags_field:J

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1057
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1058
    return-object v1
.end method

.method public bridge synthetic clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 3

    .line 1029
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .registers 2

    .line 1029
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lcom/sun/tools/javac/code/Attribute;
    .registers 2

    .line 1320
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljavax/lang/model/element/AnnotationValue;
    .registers 2

    .line 1029
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getDefaultValue()Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 1029
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/element/ElementKind;
    .registers 5

    .line 1304
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_f

    .line 1305
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    .line 1311
    :goto_e
    return-object v0

    .line 1306
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->clinit:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_1e

    .line 1307
    sget-object v0, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    goto :goto_e

    .line 1308
    :cond_1e
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    .line 1309
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    goto :goto_e

    :cond_35
    sget-object v0, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    goto :goto_e

    .line 1311
    :cond_38
    sget-object v0, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    goto :goto_e
.end method

.method public getParameters()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation

    .line 1324
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Ljava/util/List;
    .registers 2

    .line 1029
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1340
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReturnType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 1029
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 1029
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getThrownTypes()Lcom/sun/tools/javac/util/List;
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

    .line 1344
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThrownTypes()Ljava/util/List;
    .registers 2

    .line 1029
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeParameters()Ljava/util/List;
    .registers 2

    .line 1029
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 5

    .line 1221
    sget-object v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation_filter:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    return-object v0
.end method

.method public implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Types;",
            "Z",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 1232
    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/sun/tools/javac/code/Types;->implementation(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 1233
    if-eqz v0, :cond_7

    .line 1241
    :goto_6
    return-object v0

    .line 1238
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Types;->isDerivedRaw(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1239
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementation(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    goto :goto_6

    .line 1241
    :cond_22
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public implemented(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 6

    .line 1084
    const/4 v2, 0x0

    .line 1085
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1086
    :goto_8
    if-nez v2, :cond_24

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1088
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1089
    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implementedIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1090
    if-nez v0, :cond_20

    .line 1091
    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->implemented(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1087
    :cond_20
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_8

    .line 1093
    :cond_24
    return-object v2
.end method

.method public implementedIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 8

    .line 1097
    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v2, v0

    .line 1099
    :goto_c
    if-nez v1, :cond_41

    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_41

    .line 1101
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, p2, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1104
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1105
    invoke-virtual {p2, v3, v4}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1104
    invoke-virtual {p2, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1106
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1100
    :goto_3b
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    move-object v1, v0

    goto :goto_c

    .line 1109
    :cond_41
    return-object v1

    :cond_42
    move-object v0, v1

    goto :goto_3b
.end method

.method public isStaticOrInstanceInit()Z
    .registers 3

    .line 1315
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_10

    .line 1316
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 1315
    :goto_11
    return v0

    .line 1316
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isVarArgs()Z
    .registers 5

    .line 1328
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z
    .registers 15

    const-wide/16 v8, 0x400

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1163
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-eq v0, v3, :cond_14

    :cond_12
    move v1, v2

    .line 1191
    :cond_13
    :goto_13
    return v1

    .line 1165
    :cond_14
    if-eq p0, p1, :cond_13

    .line 1166
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1169
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p1, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isOverridableIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1170
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1171
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p3, v0, p0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1172
    iget-object v3, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p3, v3, p1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1173
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1174
    if-eqz p4, :cond_13

    .line 1176
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->returnTypeSubstitutable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1182
    :cond_4c
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v0, v4, v6

    if-nez v0, :cond_6a

    .line 1183
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6a

    .line 1184
    invoke-direct {p1, p2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isOverridableIn(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1185
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_6a
    move v1, v2

    .line 1186
    goto :goto_13

    .line 1189
    :cond_6c
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p3, v0, p0}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1190
    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p3, v3, p1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1191
    invoke-virtual {p3, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_8b

    if-eqz p4, :cond_88

    sget-object v4, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1193
    invoke-virtual {p3, v0, v3, v4}, Lcom/sun/tools/javac/code/Types;->resultSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_88
    move v0, v1

    :goto_89
    move v1, v0

    .line 1191
    goto :goto_13

    :cond_8b
    move v0, v2

    .line 1193
    goto :goto_89
.end method

.method public params()Lcom/sun/tools/javac/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    .line 1246
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_79

    .line 1254
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->savedParameterNames:Lcom/sun/tools/javac/util/List;

    .line 1255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->savedParameterNames:Lcom/sun/tools/javac/util/List;

    .line 1257
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_7f

    .line 1258
    :cond_20
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v7, v0

    .line 1259
    :goto_25
    new-instance v10, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v10}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1263
    const/4 v0, 0x0

    .line 1264
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v1, v7

    move v9, v0

    :goto_37
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 1266
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1268
    invoke-direct {p0, v9, v7}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->createArgName(ILcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    move-object v8, v1

    .line 1272
    :goto_4e
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide v2, 0x200000000L

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-virtual {v10, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1278
    add-int/lit8 v0, v9, 0x1

    move-object v1, v8

    move v9, v0

    .line 1279
    goto :goto_37

    .line 1270
    :cond_61
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    .line 1271
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1272
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1274
    invoke-direct {p0, v9, v7}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->createArgName(ILcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    move-object v8, v1

    goto :goto_4e

    .line 1280
    :cond_73
    invoke-virtual {v10}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    .line 1282
    :cond_79
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    return-object v0

    :cond_7c
    move-object v8, v1

    move-object v4, v0

    goto :goto_4e

    :cond_7f
    move-object v7, v0

    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-wide/16 v8, 0x0

    .line 1064
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_17

    .line 1065
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1075
    :cond_16
    :goto_16
    return-object v1

    .line 1067
    :cond_17
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_88

    .line 1068
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1070
    :goto_2c
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_16

    .line 1071
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_59

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ForAll;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x400000000L

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    :goto_77
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Type;->argtypes(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 1069
    :cond_88
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2c

    .line 1073
    :cond_90
    const/4 v0, 0x0

    goto :goto_77
.end method
