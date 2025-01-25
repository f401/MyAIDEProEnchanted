.class Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;
.super Ljava/lang/Object;
.source "AnnotationProxyMaker.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/AnnotationProxyMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;
    }
.end annotation


# instance fields
.field private meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field private returnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/model/AnnotationProxyMaker;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/model/AnnotationProxyMaker;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->this$0:Lcom/sun/tools/javac/model/AnnotationProxyMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 168
    return-void
.end method

.method private typeMismatch(Ljava/lang/reflect/Method;Lcom/sun/tools/javac/code/Attribute;)V
    .registers 4

    .line 281
    new-instance v0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;-><init>(Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;Ljava/lang/reflect/Method;Lcom/sun/tools/javac/code/Attribute;)V

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    .line 282
    return-void
.end method


# virtual methods
.method getValue(Lcom/sun/tools/javac/code/Attribute;)Ljava/lang/Object;
    .registers 5

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->this$0:Lcom/sun/tools/javac/model/AnnotationProxyMaker;

    invoke-static {v0}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->access$000(Lcom/sun/tools/javac/model/AnnotationProxyMaker;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_14} :catch_38

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    .line 178
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 179
    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    instance-of v1, v1, Lsun/reflect/annotation/ExceptionProxy;

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    .line 180
    invoke-static {v1}, Lsun/reflect/annotation/AnnotationType;->invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->typeMismatch(Ljava/lang/reflect/Method;Lcom/sun/tools/javac/code/Attribute;)V

    .line 184
    :cond_35
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    :goto_37
    return-object v0

    .line 174
    :catch_38
    move-exception v0

    .line 175
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
    .registers 7

    const/4 v1, 0x0

    .line 197
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Array;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 199
    iget-object v2, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Class:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 201
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 202
    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v4, v3

    :goto_21
    if-ge v1, v4, :cond_2f

    aget-object v0, v3, v1

    .line 203
    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Class;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    .line 204
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 206
    :cond_2f
    new-instance v0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;-><init>(Lcom/sun/tools/javac/util/List;)V

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    .line 229
    :goto_3a
    return-void

    .line 209
    :cond_3b
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v2, v0

    .line 210
    iget-object v3, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    .line 211
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    .line 213
    :try_start_48
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move v0, v1

    .line 214
    :goto_4d
    if-ge v0, v2, :cond_72

    .line 215
    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 216
    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    instance-of v1, v1, Lsun/reflect/annotation/ExceptionProxy;
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_77

    if-eqz v1, :cond_63

    .line 228
    :cond_60
    iput-object v3, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    goto :goto_3a

    .line 220
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_68} :catch_6b
    .catchall {:try_start_63 .. :try_end_68} :catchall_77

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 221
    :catch_6b
    move-exception v0

    .line 222
    const/4 v0, 0x0

    :try_start_6d
    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_77

    .line 228
    iput-object v3, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    goto :goto_3a

    .line 226
    :cond_72
    :try_start_72
    iput-object v4, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_77

    .line 228
    iput-object v3, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    goto :goto_3a

    :catchall_77
    move-exception v0

    iput-object v3, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    .line 229
    throw v0
.end method

.method public visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
    .registers 4

    .line 193
    new-instance v0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 4

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    .line 251
    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    invoke-static {p1, v0}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lcom/sun/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_e} :catch_f

    .line 256
    :goto_e
    return-void

    .line 253
    :catch_f
    move-exception v0

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    goto :goto_e
.end method

.method public visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
    .registers 3

    .line 189
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Attribute$Constant;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 236
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :try_start_e
    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_16} :catch_17

    .line 246
    :goto_16
    return-void

    .line 239
    :catch_17
    move-exception v1

    .line 240
    new-instance v1, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;

    iget-object v2, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->returnClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    goto :goto_16

    .line 244
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    goto :goto_16
.end method

.method public visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
    .registers 3

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->value:Ljava/lang/Object;

    .line 260
    return-void
.end method
