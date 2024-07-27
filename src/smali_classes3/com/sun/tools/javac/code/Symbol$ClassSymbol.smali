.class public Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
.super Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
.source "Symbol.java"

# interfaces
.implements Ljavax/lang/model/element/TypeElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassSymbol"
.end annotation


# instance fields
.field public classfile:Ljavax/tools/JavaFileObject;

.field public flatname:Lcom/sun/tools/javac/util/Name;

.field public fullname:Lcom/sun/tools/javac/util/Name;

.field public members_field:Lcom/sun/tools/javac/code/Scope;

.field public pool:Lcom/sun/tools/javac/jvm/Pool;

.field public sourcefile:Ljavax/tools/JavaFileObject;

.field public trans_local:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 12

    const/4 v1, 0x0

    .line 749
    new-instance v5, Lcom/sun/tools/javac/code/Type$ClassType;

    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-direct {v5, v0, v1, v1}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 754
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object p0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 755
    return-void
.end method

.method public constructor <init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 9

    const/4 v1, 0x0

    .line 739
    invoke-direct/range {p0 .. p5}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 740
    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 741
    invoke-static {p3, p5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->formFullName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    .line 742
    invoke-static {p3, p5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->formFlatName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 743
    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 744
    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 745
    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 746
    return-void
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

    .line 896
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 892
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/ElementVisitor;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public className()Ljava/lang/String;
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 788
    const-string v1, "anonymous.class"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public complete()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 821
    :try_start_0
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->complete()V
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 824
    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/16 v4, 0x9

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 825
    new-instance v1, Lcom/sun/tools/javac/code/Type$ErrorType;

    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-direct {v1, p0, v2}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 826
    throw v0
.end method

.method public erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 779
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 781
    new-instance v1, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public flags()J
    .registers 3

    .line 764
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 765
    :cond_0
    iget-wide v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    return-wide v0
.end method

.method public flatName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 798
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 888
    invoke-static {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getAnnotation(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationMirrors()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 832
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    instance-of v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 834
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    if-nez v1, :cond_0

    .line 835
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 836
    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->all_interfaces_field:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_1

    .line 837
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->all_interfaces_field:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Type;->getModelTypes(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    .line 838
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 840
    :cond_2
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getInterfaces()Ljava/util/List;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getInterfaces()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/element/ElementKind;
    .registers 7

    const-wide/16 v4, 0x0

    .line 860
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    .line 861
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 862
    sget-object v0, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    .line 868
    :goto_0
    return-object v0

    .line 863
    :cond_0
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 864
    sget-object v0, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    goto :goto_0

    .line 865
    :cond_1
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 866
    sget-object v0, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    goto :goto_0

    .line 868
    :cond_2
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    goto :goto_0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .registers 3

    .line 872
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 873
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 874
    sget-object v0, Ljavax/lang/model/element/NestingKind;->TOP_LEVEL:Ljavax/lang/model/element/NestingKind;

    .line 880
    :goto_0
    return-object v0

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    sget-object v0, Ljavax/lang/model/element/NestingKind;->ANONYMOUS:Ljavax/lang/model/element/NestingKind;

    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 878
    sget-object v0, Ljavax/lang/model/element/NestingKind;->LOCAL:Ljavax/lang/model/element/NestingKind;

    goto :goto_0

    .line 880
    :cond_2
    sget-object v0, Ljavax/lang/model/element/NestingKind;->MEMBER:Ljavax/lang/model/element/NestingKind;

    goto :goto_0
.end method

.method public getQualifiedName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getQualifiedName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 845
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 846
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    instance-of v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 848
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    if-nez v1, :cond_0

    .line 849
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 851
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 852
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 855
    :goto_0
    return-object v0

    .line 853
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getModelType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_2
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_0
.end method

.method public bridge synthetic getSuperclass()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeParameters()Ljava/util/List;
    .registers 2

    .line 702
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 10

    const/16 v6, 0xa

    const/4 v3, 0x1

    .line 802
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 814
    :goto_0
    return v0

    .line 804
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object v1, v0

    :goto_1
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_5

    .line 806
    invoke-virtual {p2, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    .line 807
    :goto_2
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_2

    .line 805
    :cond_2
    invoke-virtual {p2, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    :goto_3
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v6, :cond_5

    .line 812
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, p1, :cond_4

    move v0, v3

    goto :goto_0

    .line 811
    :cond_4
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_3

    .line 814
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public members()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 760
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->className()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
