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
            "Ljava/util/Comparator<",
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
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/MixinNode;)V

    iput-object v8, v7, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object v9, v7, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->ef:[Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cn:Ljava/util/Comparator;

    invoke-static {v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v8, v0}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2c

    array-length v0, v9

    if-lez v0, :cond_2c

    aget-object v0, v9, v10

    goto :goto_2d

    :cond_2c
    move-object v0, v8

    :goto_2d
    iput-object v0, v7, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->ei()Z

    move-result v0

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v12, v9

    move v13, v0

    const/4 v14, 0x0

    :goto_46
    if-ge v14, v12, :cond_90

    aget-object v15, v9, v14

    invoke-virtual {v15}, Lorg/codehaus/groovy/ast/ClassNode;->ei()Z

    move-result v16

    invoke-virtual {v15}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lorg/codehaus/groovy/ast/ClassNode;->tp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/MethodNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->gn()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->tp()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->u7()[Lorg/codehaus/groovy/ast/Parameter;

    move-result-object v4

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->VH()[Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v5

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/MethodNode;->Zo()Lorg/codehaus/groovy/ast/stmt/Statement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/MethodNode;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/codehaus/groovy/ast/AnnotatedNode;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    goto :goto_5d

    :cond_8b
    add-int/lit8 v14, v14, 0x1

    or-int v13, v13, v16

    goto :goto_46

    :cond_90
    invoke-virtual {v7, v13}, Lorg/codehaus/groovy/ast/ClassNode;->FH(Z)V

    if-eqz v13, :cond_bf

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9e
    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/codehaus/groovy/ast/GenericsType;

    if-eqz v2, :cond_9e

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_b0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/groovy/ast/GenericsType;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/groovy/ast/GenericsType;

    invoke-virtual {v7, v0}, Lorg/codehaus/groovy/ast/ClassNode;->j6([Lorg/codehaus/groovy/ast/GenericsType;)V

    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v8, v1}, Lorg/codehaus/groovy/ast/ClassNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d3
    array-length v1, v9

    :goto_d4
    if-ge v10, v1, :cond_ed

    aget-object v2, v9, v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_e3

    const-string v3, " or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e3
    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_d4

    :cond_ed
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->dx:Ljava/lang/String;

    return-void
.end method

.method static synthetic j6(Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public J8()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->ef:[Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    array-length v0, v0

    new-array v0, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    :goto_9
    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->ef:[Lorg/codehaus/groovy/ast/ClassNode;

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    new-instance v1, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;

    iget-object v2, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;-><init>(Ljava/lang/String;Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object v1
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

    move-result v0

    iget-object v1, p0, Lorg/codehaus/groovy/ast/tools/WideningCategories$LowestUpperBoundClassNode;->cb:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
