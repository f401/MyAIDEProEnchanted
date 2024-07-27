.class public Lorg/codehaus/groovy/ast/MixinASTTransformation;
.super Lorg/codehaus/groovy/transform/AbstractASTTransformation;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MY_TYPE:Lorg/codehaus/groovy/ast/ClassNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lgroovy/lang/Mixin;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/MixinASTTransformation;->MY_TYPE:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/groovy/transform/AbstractASTTransformation;-><init>()V

    return-void
.end method
