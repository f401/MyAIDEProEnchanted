.class public Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;
.super Lorg/codehaus/groovy/ast/ClassNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/ast/tools/WideningCategories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowestUpperBoundClassNode"
.end annotation


# static fields
.field private static final cn:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/codehaus/groovy/ast/ClassNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cb:Ljava/lang/String;

.field private final dx:Ljava/lang/String;

.field private final ef:[Lorg/codehaus/groovy/ast/ClassNode;

.field private final sG:Lorg/codehaus/groovy/ast/ClassNode;

.field private final sh:Lorg/codehaus/groovy/ast/ClassNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode$1;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode$1;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cn:Ljava/util/Comparator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 21

    const/16 v4, 0x11

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/MixinNode;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->ef:[Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v2, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cn:Ljava/util/Comparator;

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p3, v2

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->ei()Z

    move-result v2

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v3, 0x0

    move v10, v2

    move v11, v3

    :goto_1
    if-ge v11, v13, :cond_2

    aget-object v14, p3, v11

    invoke-virtual {v14}, Lorg/codehaus/groovy/ast/ClassNode;->ei()Z

    move-result v15

    invoke-virtual {v14}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lorg/codehaus/groovy/ast/ClassNode;->tp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/groovy/ast/MethodNode;

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/MethodNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/MethodNode;->gn()I

    move-result v4

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/MethodNode;->tp()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v5

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/MethodNode;->u7()[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v6

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/MethodNode;->VH()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v7

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/MethodNode;->Zo()Lorg/codehaus/groovy/ast/stmt/Statement;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/MethodNode;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_2

    :cond_0
    move-object/from16 v2, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v11, 0x1

    or-int v2, v10, v15

    move v10, v2

    move v11, v3

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/codehaus/groovy/ast/ClassNode;->FH(Z)V

    if-eqz v10, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/codehaus/groovy/ast/GenericsType;

    if-eqz v2, :cond_3

    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/codehaus/groovy/ast/GenericsType;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/codehaus/groovy/ast/GenericsType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move-object/from16 v0, p3

    array-length v4, v0

    move v2, v9

    :goto_4
    if-ge v2, v4, :cond_8

    aget-object v5, p3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7

    const-string v6, " or "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v5}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->dx:Ljava/lang/String;

    return-void
.end method

.method static synthetic j6(Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public J8()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->ef:[Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->ef:[Lorg/codehaus/groovy/ast/ClassNode;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    iget-object v2, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;-><init>(Ljava/lang/String;Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object v0
.end method

.method public QX()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->QX()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public Ws()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->dx:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lorg/codehaus/groovy/ast/ClassNode;->hashCode()I

    move-result v1

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
